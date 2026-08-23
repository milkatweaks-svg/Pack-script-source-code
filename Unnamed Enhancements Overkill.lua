local repo = "https://raw.githubusercontent.com/yenkgg/UE-Linoria-Lib/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = getgenv().Options
local Toggles = getgenv().Toggles


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local Lighting = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LP = Players.LocalPlayer


local Window = Library:CreateWindow({
    Title = "Unnamed Enhancements",
    Center = true,
    AutoShow = true,
    Resizable = true,
    ShowCustomCursor = true,
    UnlockMouseWhileOpen = true,
    NotifySide = "Left",
    TabPadding = 8,
    MenuFadeTime = 0.2
})


local Tabs = {
    Aimbot = Window:AddTab("Aimbot"),
    ESP = Window:AddTab("ESP"),
    World = Window:AddTab("World"),
    Visuals = Window:AddTab("Visuals"),
    Fun = Window:AddTab("Fun"),
    ["UI Settings"] = Window:AddTab("UI Settings"),
}


local AimbotGroup = Tabs.Aimbot:AddLeftGroupbox("Aim Assist")
AimbotGroup:AddToggle("AimbotEnabled", { Text = "Enabled", Default = false })
AimbotGroup:AddSlider("AimbotFOV", { Text = "FOV", Default = 10, Min = 1, Max = 180, Suffix = "°", Rounding = 1 })
AimbotGroup:AddSlider("AimbotSmooth", { Text = "Smoothing", Default = 10, Min = 1, Max = 50, Rounding = 0 })
AimbotGroup:AddDropdown("AimbotPriority", { Values = { "Head", "Body", "Nearest" }, Default = 1, Text = "Priority" })
AimbotGroup:AddToggle("SilentAim", { Text = "Silent Aim", Default = false })
AimbotGroup:AddDropdown("SilentAimHitbox", { Values = { "Head", "Body" }, Default = 1, Text = "Silent Hitbox" })
AimbotGroup:AddLabel("Keybind"):AddKeyPicker("AimbotKey", { Default = "MB2", Mode = "Hold", Text = "Aim Key", NoUI = false })

local TriggerGroup = Tabs.Aimbot:AddRightGroupbox("Triggerbot")
TriggerGroup:AddToggle("TriggerbotEnabled", { Text = "Enabled", Default = false })
TriggerGroup:AddSlider("TriggerbotDelay", { Text = "Delay", Default = 0, Min = 0, Max = 500, Suffix = "ms", Rounding = 0 })
TriggerGroup:AddDropdown("TriggerbotHitbox", { Values = { "Head", "Body" }, Default = 1, Text = "Hitbox" })
TriggerGroup:AddLabel("Keybind"):AddKeyPicker("TriggerbotKey", { Default = "Q", Mode = "Hold", Text = "Trigger Key", NoUI = false })


local ESPGroup = Tabs.ESP:AddLeftGroupbox("Player ESP")
ESPGroup:AddToggle("ESPEnabled", { Text = "Enabled", Default = true })

local espBoxToggle = ESPGroup:AddToggle("ESPBox", { Text = "Box", Default = true })
espBoxToggle:AddColorPicker("ESPBoxColor", { Default = Color3.fromRGB(255, 50, 50), Title = "Box Color" })

local espNameToggle = ESPGroup:AddToggle("ESPName", { Text = "Name", Default = true })
espNameToggle:AddColorPicker("ESPNameColor", { Default = Color3.fromRGB(255, 255, 255), Title = "Name Color" })

ESPGroup:AddToggle("ESPHealth", { Text = "Health Bar", Default = true })
ESPGroup:AddToggle("ESPDistance", { Text = "Distance", Default = true })

local espHeadToggle = ESPGroup:AddToggle("ESPHeadDot", { Text = "Head Dot", Default = true })
espHeadToggle:AddColorPicker("ESPHeadDotColor", { Default = Color3.fromRGB(255, 255, 50), Title = "Head Dot Color" })

local espTracerToggle = ESPGroup:AddToggle("ESPTracer", { Text = "Tracer", Default = false })
espTracerToggle:AddColorPicker("ESPTracerColor", { Default = Color3.fromRGB(255, 255, 255), Title = "Tracer Color" })

local espSkelToggle = ESPGroup:AddToggle("ESPSkeleton", { Text = "Skeleton", Default = false })
espSkelToggle:AddColorPicker("ESPSkeletonColor", { Default = Color3.fromRGB(255, 255, 255), Title = "Skeleton Color" })

ESPGroup:AddDivider()
ESPGroup:AddToggle("ESPTeamCheck", { Text = "Team Check", Default = false })

local chamsToggle = ESPGroup:AddToggle("Chams", { Text = "Chams", Default = false })
chamsToggle:AddColorPicker("ChamsColor", { Default = Color3.fromRGB(0, 200, 255), Title = "Chams Color" })
ESPGroup:AddDropdown("ChamsMode", { Values = { "Always", "Wall Only" }, Default = 1, Text = "Chams Mode" })

local FOVGroup = Tabs.ESP:AddRightGroupbox("FOV Circle")
local fovToggle = FOVGroup:AddToggle("FOVCircle", { Text = "Show FOV", Default = true })
fovToggle:AddColorPicker("FOVCircleColor", { Default = Color3.fromRGB(127, 72, 163), Title = "FOV Color" })
FOVGroup:AddSlider("FOVCircleSize", { Text = "FOV Size", Default = 10, Min = 1, Max = 180, Suffix = "°", Rounding = 1 })


local LightingGroup = Tabs.World:AddLeftGroupbox("Lighting")
LightingGroup:AddToggle("NightMode", { Text = "Night Mode", Default = false })
LightingGroup:AddToggle("CustomTime", { Text = "Custom Time", Default = false })
LightingGroup:AddSlider("TimeOfDay", { Text = "Time Of Day", Default = 12, Min = 0, Max = 24, Rounding = 1, Suffix = ":00" })
LightingGroup:AddToggle("CustomFog", { Text = "Custom Fog", Default = false })
LightingGroup:AddSlider("FogEnd", { Text = "Fog End", Default = 99999, Min = 1, Max = 99999, Rounding = 0 })
LightingGroup:AddSlider("FogStart", { Text = "Fog Start", Default = 0, Min = 0, Max = 500, Rounding = 0 })

local ambientToggle = LightingGroup:AddToggle("CustomAmbient", { Text = "Custom Ambient", Default = false })
ambientToggle:AddColorPicker("AmbientColor", { Default = Color3.fromRGB(127, 127, 127), Title = "Ambient Color" })
LightingGroup:AddSlider("Brightness", { Text = "Brightness", Default = 2, Min = 0, Max = 10, Rounding = 1 })

local EffectsGroup = Tabs.World:AddRightGroupbox("Effects")
EffectsGroup:AddToggle("Fullbright", { Text = "Fullbright", Default = false })
EffectsGroup:AddToggle("RemoveFog", { Text = "Remove Fog", Default = false })
EffectsGroup:AddToggle("XRay", { Text = "X-Ray", Default = false })
EffectsGroup:AddToggle("NoSky", { Text = "No Sky", Default = false })


local VMGroup = Tabs.Visuals:AddLeftGroupbox("Viewmodel Changer")
VMGroup:AddToggle("VMChanger", { Text = "Enabled", Default = false })
VMGroup:AddSlider("VMOffsetX", { Text = "Offset X", Default = 0, Min = -5, Max = 5, Rounding = 2 })
VMGroup:AddSlider("VMOffsetY", { Text = "Offset Y", Default = 0, Min = -5, Max = 5, Rounding = 2 })
VMGroup:AddSlider("VMOffsetZ", { Text = "Offset Z", Default = 0, Min = -5, Max = 5, Rounding = 2 })
VMGroup:AddSlider("VMRotX", { Text = "Rot X", Default = 0, Min = -90, Max = 90, Rounding = 1, Suffix = "°" })
VMGroup:AddSlider("VMRotY", { Text = "Rot Y", Default = 0, Min = -90, Max = 90, Rounding = 1, Suffix = "°" })
VMGroup:AddSlider("VMRotZ", { Text = "Rot Z", Default = 0, Min = -90, Max = 90, Rounding = 1, Suffix = "°" })
VMGroup:AddSlider("VMFOV", { Text = "Weapon FOV", Default = 80, Min = 40, Max = 120, Rounding = 1, Suffix = "°" })

local AspectGroup = Tabs.Visuals:AddRightGroupbox("Aspect Ratio")
AspectGroup:AddToggle("AspectEnabled", { Text = "Stretched", Default = false })
AspectGroup:AddSlider("AspectRatio", { Text = "Ratio", Default = 1, Min = 0.5, Max = 3, Rounding = 2 })

local TracerGroup = Tabs.Visuals:AddLeftGroupbox("Bullet Tracers")
local TracersEnabled = TracerGroup:AddToggle("TracersEnabled", { Text = "Enabled", Default = false })
TracersEnabled:AddColorPicker("TracersColor", { Default = Color3.fromRGB(0, 200, 255), Title = "Tracer Color" })
TracerGroup:AddSlider("TracersThickness", { Text = "Thickness", Default = 1, Min = 1, Max = 5, Rounding = 0 })
TracerGroup:AddSlider("TracersLength", { Text = "Length", Default = 100, Min = 10, Max = 500, Rounding = 0 })
TracerGroup:AddDropdown("TracersHitbox", { Values = { "Head", "Body", "All" }, Default = 1, Text = "Hitbox" })

local SoundGroup = Tabs.Visuals:AddRightGroupbox("Sound")
SoundGroup:AddToggle("CustomShootSound", { Text = "Custom Shoot Sound", Default = false })
SoundGroup:AddToggle("CustomHitSound", { Text = "Custom Hit Sound", Default = false })
SoundGroup:AddInput("ShootSoundID", { Text = "Shoot Sound ID", Default = "", Placeholder = "rbxassetid://..." })
SoundGroup:AddInput("HitSoundID", { Text = "Hit Sound ID", Default = "", Placeholder = "rbxassetid://..." })
SoundGroup:AddSlider("HitSoundVolume", { Text = "Hit Volume", Default = 1, Min = 0, Max = 5, Rounding = 1, Suffix = "x" })

local HitGroup = Tabs.Visuals:AddLeftGroupbox("Hit Overlay")
local hitOverlayToggle = HitGroup:AddToggle("HitOverlay", { Text = "Hit Overlay", Default = false })
hitOverlayToggle:AddColorPicker("HitOverlayColor", { Default = Color3.fromRGB(255, 0, 0), Title = "Overlay Color" })
HitGroup:AddSlider("HitOverlayAlpha", { Text = "Alpha", Default = 0.3, Min = 0, Max = 1, Rounding = 2 })
HitGroup:AddSlider("HitOverlayDuration", { Text = "Duration", Default = 0.3, Min = 0.1, Max = 2, Rounding = 1, Suffix = "s" })

local hitNotifToggle = HitGroup:AddToggle("HitNotification", { Text = "Hit Notification", Default = false })
hitNotifToggle:AddColorPicker("HitNotifColor", { Default = Color3.fromRGB(255, 200, 50), Title = "Notif Color" })

local VMChamsGroup = Tabs.Visuals:AddRightGroupbox("Viewmodel / Gun Chams")
local vmChamsToggle = VMChamsGroup:AddToggle("VMChams", { Text = "Viewmodel Chams", Default = false })
vmChamsToggle:AddColorPicker("VMChamsColor", { Default = Color3.fromRGB(0, 200, 255), Title = "VM Chams Color" })
VMChamsGroup:AddDropdown("VMChamsMode", { Values = { "Always", "Wall Only" }, Default = 1, Text = "VM Chams Mode" })

local gunChamsToggle = VMChamsGroup:AddToggle("GunChams", { Text = "Gun Chams (World)", Default = false })
gunChamsToggle:AddColorPicker("GunChamsColor", { Default = Color3.fromRGB(0, 200, 255), Title = "Gun Chams Color" })
VMChamsGroup:AddDropdown("GunChamsMode", { Values = { "Always", "Wall Only" }, Default = 1, Text = "Gun Chams Mode" })

local UnlockGroup = Tabs.Visuals:AddLeftGroupbox("Unlock All")
UnlockGroup:AddToggle("UnlockAll", { Text = "Unlock All Items", Default = false })
UnlockGroup:AddButton({ Text = "Refresh Unlocks", Func = function() setupUnlockAll() end })


local MinesGroup = Tabs.Fun:AddLeftGroupbox("Gambling Mines")
MinesGroup:AddToggle("MinesEnabled", { Text = "Show Mines", Default = false })
MinesGroup:AddSlider("MinesCount", { Text = "Mines", Default = 3, Min = 1, Max = 24, Rounding = 0 })
MinesGroup:AddButton({ Text = "New Game", Func = function() startMinesGame() end })
local winsLabel = MinesGroup:AddLabel("Wins: 0")
local lossesLabel = MinesGroup:AddLabel("Losses: 0")

local MinesGameInfo = Tabs.Fun:AddRightGroupbox("Game Info")
local streakLabel = MinesGameInfo:AddLabel("Streak: 0")
local revealedLabel = MinesGameInfo:AddLabel("Revealed: 0 / " .. (25 - (Options.MinesCount and Options.MinesCount.Value or 3)))
MinesGameInfo:AddButton({ Text = "Cash Out", Func = function() cashOutMines() end })

local NameGroup = Tabs.Fun:AddLeftGroupbox("Name Changer")
NameGroup:AddToggle("NameChanger", { Text = "Enabled", Default = false })
NameGroup:AddButton({ Text = "Open Name Editor", Func = function()
    if nameChangerGui then
        nameChangerGui.Enabled = not nameChangerGui.Enabled
        if nameChangerGui.Enabled then nameChangerGui.Frame.Visible = true end
    end
end })
local nameStatusLabel = NameGroup:AddLabel("Display: " .. LP.DisplayName)
local usernameStatusLabel = NameGroup:AddLabel("Username: " .. LP.Name)

local SpooferGroup = Tabs.Fun:AddRightGroupbox("Spoofer")
SpooferGroup:AddToggle("ProfilePicSpoof", { Text = "Swap Profile Pictures", Default = false })
SpooferGroup:AddToggle("NameSpoof", { Text = "Swap Names", Default = false })
SpooferGroup:AddLabel("Pic: i.imgur.com/65scUcs.png")
SpooferGroup:AddLabel("Name: Unnamed Enhancements | discord.gg/enhancements")
SpooferGroup:AddDivider()
SpooferGroup:AddToggle("NoobAvatar", { Text = "Noob Avatar", Default = false })


local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu")
MenuGroup:AddToggle("KeybindMenuOpen", { Default = Library.KeybindFrame.Visible, Text = "Open Keybind Menu", Callback = function(v) Library.KeybindFrame.Visible = v end })
MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddButton({ Text = "Unload", Func = function() Library:Unload() end })

Library.ToggleKeybind = Options.MenuKeybind


ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

ThemeManager:SetFolder("Desy")
SaveManager:SetFolder("Desy/OVERKILL")

SaveManager:BuildConfigSection(Tabs["UI Settings"])
ThemeManager:ApplyToTab(Tabs["UI Settings"])


SaveManager:LoadAutoloadConfig()



local minesState = { status = "idle", grid = {}, revealed = 0, mineCount = 3, streak = 0, wins = 0, losses = 0, buttons = {} }


local function tryRequire(path)
    local ok, mod = pcall(function() return require(path) end)
    return ok and mod or nil
end

local Effects, SoundManager, CameraHandler, ViewModel, InventoryHandler
local function lazyLoad()
    if not Effects then Effects = tryRequire(ReplicatedStorage.Modules.Handlers.Effects) end
    if not SoundManager then SoundManager = tryRequire(ReplicatedStorage.Modules.SoundManager) end
    if not CameraHandler then CameraHandler = tryRequire(ReplicatedStorage.Modules.Handlers.CameraHandler) end
    if not ViewModel then
        local render = tryRequire(ReplicatedStorage.Modules.WeaponECS.Render)
        if render then ViewModel = render end
    end
    if not InventoryHandler then InventoryHandler = tryRequire(ReplicatedStorage.Modules.Handlers.InventoryHandler) end
end

local function isFriend(ent)
    if ent.Model and ent.Model:IsA("Model") then
        for _, p in ipairs(Players:GetPlayers()) do
            if p.Character == ent.Model then return LP:IsFriendsWith(p.UserId) end
        end
    end
    return false
end

local function getHeadPos(ent)
    if ent.Head and ent.Head:IsA("BasePart") then return ent.Head.Position end
    if ent.Model and ent.Model:IsA("Model") then
        local h = ent.Model:FindFirstChild("Head")
        if h and h:IsA("BasePart") then ent.Head = h; return h.Position end
    end
    if ent.Parts then
        for _, p in ipairs(ent.Parts) do
            if p.Name == "Head" and p:IsA("BasePart") then ent.Head = p; return p.Position end
        end
    end
    return nil
end

local function getFootPos(ent)
    if ent.Parts then
        local bestY, best = math.huge, nil
        for _, p in ipairs(ent.Parts) do if p:IsA("BasePart") and p.Position.Y < bestY then bestY = p.Position.Y; best = p end end
        if best then return best.Position end
    end
    return nil
end

local function findAll()
    local models = {}
    local function scanModel(m, nameOverride)
        local hum = m:FindFirstChildWhichIsA("Humanoid")
        if not hum or hum.Health <= 0 then return end
        local parts = {}
        for _, child in ipairs(m:GetDescendants()) do
            if child:IsA("BasePart") and child.Transparency < 0.95 then
                table.insert(parts, child)
            end
        end
        if #parts >= 3 then
            local avg = Vector3.new()
            for _, p2 in ipairs(parts) do avg += p2.Position end
            avg /= #parts
            models[m] = { Position = avg, Name = nameOverride or m.Name, Parts = parts, Model = m, lastSeen = tick() }
        end
    end
    for _, p in ipairs(Players:GetPlayers()) do
        if p ~= LP and p.Character then
            scanModel(p.Character, p.Name)
        end
    end
    local entitiesFolder = workspace:FindFirstChild("World")
    if entitiesFolder then
        entitiesFolder = entitiesFolder:FindFirstChild("Entities")
    end
    if entitiesFolder then
        for _, child in ipairs(entitiesFolder:GetChildren()) do
            if child:IsA("Model") and not models[child] then
                scanModel(child)
            end
        end
    end
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Model") and obj ~= LP.Character and not models[obj] then
            scanModel(obj)
        end
    end
    return models
end


local minesGui
local function createMinesUI()
    if minesGui then minesGui:Destroy() end
    minesGui = Instance.new("ScreenGui")
    minesGui.Name = "MinesGame"
    minesGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    minesGui.ResetOnSpawn = false
    minesGui.Parent = LP:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.BackgroundTransparency = 1
    frame.Position = UDim2.fromScale(0.5, 0.5)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Size = UDim2.fromOffset(320, 350)
    frame.Parent = minesGui

    local gridFrame = Instance.new("Frame")
    gridFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    gridFrame.BorderSizePixel = 0
    gridFrame.Size = UDim2.fromOffset(300, 300)
    gridFrame.Position = UDim2.fromOffset(10, 10)
    gridFrame.Parent = frame

    local uigrid = Instance.new("UIGridLayout")
    uigrid.CellPadding = UDim2.fromOffset(4, 4)
    uigrid.CellSize = UDim2.fromOffset(55, 55)
    uigrid.FillDirection = Enum.FillDirection.Horizontal
    uigrid.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uigrid.VerticalAlignment = Enum.VerticalAlignment.Center
    uigrid.Parent = gridFrame

    minesState.buttons = {}
    for i = 1, 25 do
        local btn = Instance.new("TextButton")
        btn.Text = "?"
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        btn.TextScaled = true
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
        btn.BorderSizePixel = 0
        btn.AutoButtonColor = false
        btn.Parent = gridFrame
        btn.MouseButton1Click:Connect(function()
            if minesState.status ~= "playing" or minesState.buttons[i].Revealed then return end
            revealTile(i)
        end)
        minesState.buttons[i] = btn
    end

    local bottomFrame = Instance.new("Frame")
    bottomFrame.BackgroundTransparency = 1
    bottomFrame.Size = UDim2.new(1, 0, 0, 40)
    bottomFrame.Position = UDim2.fromOffset(0, 315)
    bottomFrame.Parent = frame

    local infoLabel = Instance.new("TextLabel")
    infoLabel.Text = "Mines: " .. minesState.mineCount .. "  |  Revealed: 0"
    infoLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    infoLabel.TextScaled = false
    infoLabel.TextSize = 14
    infoLabel.BackgroundTransparency = 1
    infoLabel.Size = UDim2.new(0.6, -5, 1, 0)
    infoLabel.Position = UDim2.fromOffset(0, 0)
    infoLabel.Name = "InfoLabel"
    infoLabel.Parent = bottomFrame

    local closeBtn = Instance.new("TextButton")
    closeBtn.Text = "X"
    closeBtn.TextColor3 = Color3.fromRGB(255, 100, 100)
    closeBtn.TextSize = 16
    closeBtn.BackgroundTransparency = 1
    closeBtn.Size = UDim2.fromOffset(30, 30)
    closeBtn.Position = UDim2.fromOffset(285, 0)
    closeBtn.Parent = bottomFrame
    closeBtn.MouseButton1Click:Connect(function()
        if minesGui then minesGui.Enabled = false end
        Toggles.MinesEnabled:SetValue(false)
    end)
end

local function updateMinesUI()
    if not minesGui or not minesGui.Parent then return end
    local info = minesGui:FindFirstChildWhichIsA("Frame"):FindFirstChild("InfoLabel", true)
    if info then
        info.Text = "Mines: " .. minesState.mineCount .. "  |  Revealed: " .. minesState.revealed .. "  |  Streak: " .. minesState.streak
    end
    if winsLabel then winsLabel:SetText("Wins: " .. minesState.wins) end
    if lossesLabel then lossesLabel:SetText("Losses: " .. minesState.losses) end
    if streakLabel then streakLabel:SetText("Streak: " .. minesState.streak) end
    if revealedLabel then revealedLabel:SetText("Revealed: " .. minesState.revealed .. " / " .. (25 - minesState.mineCount)) end
end

local function revealTile(idx)
    if minesState.status ~= "playing" then return end
    local btn = minesState.buttons[idx]
    local tile = minesState.grid[idx]
    if not btn or not tile or btn.Revealed then return end
    btn.Revealed = true
    minesState.revealed += 1

    if tile then
        btn.Text = "💣"
        btn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        minesState.status = "gameover"
        minesState.losses += 1
        minesState.streak = 0
        for i, b in ipairs(minesState.buttons) do
            if minesState.grid[i] and not b.Revealed then
                b.Text = "💣"
                b.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
                b.Revealed = true
            end
        end
        Library:Notify("Mines - Hit a mine! Lost", 3)
    else
        btn.Text = "⭐"
        btn.BackgroundColor3 = Color3.fromRGB(50, 180, 50)
        minesState.streak += 1
        if minesState.revealed >= 25 - minesState.mineCount then
            minesState.status = "win"
            minesState.wins += 1
            Library:Notify("Mines - Cleared all safe tiles! Won $" .. (minesState.revealed * 100), 3)
        end
    end
    updateMinesUI()
end

function startMinesGame()
    if not minesGui then createMinesUI() end
    minesGui.Enabled = true
    minesState.mineCount = Options.MinesCount and Options.MinesCount.Value or 3
    minesState.revealed = 0
    minesState.status = "playing"
    minesState.grid = {}
    minesState.buttons = minesState.buttons or {}

    local indices = {}
    for i = 1, 25 do indices[i] = false end
    local placed = 0
    while placed < minesState.mineCount do
        local r = math.random(1, 25)
        if not indices[r] then indices[r] = true; placed += 1 end
    end
    for i = 1, 25 do minesState.grid[i] = indices[i] end

    for i, btn in ipairs(minesState.buttons) do
        if btn then
            btn.Text = "?"
            btn.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
            btn.Revealed = false
        end
    end
    updateMinesUI()
    Library:Notify("Mines - New game! " .. minesState.mineCount .. " mines", 2)
end

function cashOutMines()
    if minesState.status ~= "playing" or minesState.revealed == 0 then return end
    local winnings = minesState.revealed * 100
    minesState.wins += 1
    minesState.status = "cashedout"
    Library:Notify("Mines - Cashed out $" .. winnings .. "! (" .. minesState.revealed .. " safe)", 3)
    for i, btn in ipairs(minesState.buttons) do
        if btn and not btn.Revealed then
            btn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
        end
    end
    updateMinesUI()
end


local nameChangerGui
local nameHookEnabled = false
local customDisplayName = LP.DisplayName
local customUserName = LP.Name

local function setupNameHook()
    if nameHookEnabled then return end
    nameHookEnabled = true
end

local function createNameChangerUI()
    if nameChangerGui then nameChangerGui:Destroy() end
    nameChangerGui = Instance.new("ScreenGui")
    nameChangerGui.Name = "NameChanger"
    nameChangerGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    nameChangerGui.ResetOnSpawn = false
    nameChangerGui.Parent = LP:WaitForChild("PlayerGui")
    nameChangerGui.Enabled = false

    local frame = Instance.new("Frame")
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 30)
    frame.BorderSizePixel = 0
    frame.Size = UDim2.fromOffset(280, 180)
    frame.Position = UDim2.fromScale(0.5, 0.5)
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Active = true
    frame.Draggable = true
    frame.Name = "Frame"
    frame.Parent = nameChangerGui

    local title = Instance.new("TextLabel")
    title.Text = "Name Changer"
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.TextSize = 16
    title.BackgroundColor3 = Color3.fromRGB(30, 30, 45)
    title.BorderSizePixel = 0
    title.Size = UDim2.new(1, 0, 0, 30)
    title.Parent = frame

    local dispLabel = Instance.new("TextLabel")
    dispLabel.Text = "Display Name:"
    dispLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    dispLabel.TextSize = 13
    dispLabel.BackgroundTransparency = 1
    dispLabel.Size = UDim2.fromOffset(120, 24)
    dispLabel.Position = UDim2.fromOffset(10, 40)
    dispLabel.TextXAlignment = Enum.TextXAlignment.Left
    dispLabel.Parent = frame

    local dispBox = Instance.new("TextBox")
    dispBox.Text = LP.DisplayName
    dispBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    dispBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    dispBox.BorderSizePixel = 0
    dispBox.Size = UDim2.fromOffset(140, 24)
    dispBox.Position = UDim2.fromOffset(130, 40)
    dispBox.TextSize = 13
    dispBox.ClearTextOnFocus = false
    dispBox.Name = "DispBox"
    dispBox.Parent = frame

    local userLabel = Instance.new("TextLabel")
    userLabel.Text = "Username:"
    userLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    userLabel.TextSize = 13
    userLabel.BackgroundTransparency = 1
    userLabel.Size = UDim2.fromOffset(120, 24)
    userLabel.Position = UDim2.fromOffset(10, 74)
    userLabel.TextXAlignment = Enum.TextXAlignment.Left
    userLabel.Parent = frame

    local userBox = Instance.new("TextBox")
    userBox.Text = LP.Name
    userBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    userBox.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    userBox.BorderSizePixel = 0
    userBox.Size = UDim2.fromOffset(140, 24)
    userBox.Position = UDim2.fromOffset(130, 74)
    userBox.TextSize = 13
    userBox.ClearTextOnFocus = false
    userBox.Name = "UserBox"
    userBox.Parent = frame

    local applyBtn = Instance.new("TextButton")
    applyBtn.Text = "Apply"
    applyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    applyBtn.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
    applyBtn.BorderSizePixel = 0
    applyBtn.Size = UDim2.fromOffset(100, 28)
    applyBtn.Position = UDim2.fromOffset(10, 115)
    applyBtn.TextSize = 14
    applyBtn.Parent = frame
    applyBtn.MouseButton1Click:Connect(function()
        customDisplayName = dispBox.Text
        customUserName = userBox.Text
        if nameStatusLabel then nameStatusLabel:SetText("Display: " .. customDisplayName) end
        if usernameStatusLabel then usernameStatusLabel:SetText("Username: " .. customUserName) end
        setupNameHook()
        nameChangerGui.Enabled = false
        Library:Notify("Name changed! Display: " .. customDisplayName .. " | User: " .. customUserName, 3)
    end)

    local closeBtn = Instance.new("TextButton")
    closeBtn.Text = "X"
    closeBtn.TextColor3 = Color3.fromRGB(255, 100, 100)
    closeBtn.TextSize = 14
    closeBtn.BackgroundTransparency = 1
    closeBtn.Size = UDim2.fromOffset(24, 24)
    closeBtn.Position = UDim2.fromOffset(250, 3)
    closeBtn.Parent = frame
    closeBtn.MouseButton1Click:Connect(function()
        nameChangerGui.Enabled = false
        Toggles.NameChanger:SetValue(false)
    end)
end


Toggles.NameChanger:OnChanged(function()
    if Toggles.NameChanger.Value then
        if not nameChangerGui then createNameChangerUI() end
        nameChangerGui.Enabled = true
        setupNameHook()
    else
        if nameChangerGui then nameChangerGui.Enabled = false end
    end
end)

local skyInstance
Toggles.NoSky:OnChanged(function()
    if Toggles.NoSky.Value then
        local s = Lighting:FindFirstChildOfClass("Sky")
        if s then skyInstance = s; s:Destroy() end
    else
        if skyInstance then skyInstance:Clone().Parent = Lighting; skyInstance = nil end
    end
end)

Toggles.XRay:OnChanged(function()
    if not Toggles.XRay.Value then
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") then pcall(function() v.LocalTransparencyModifier = 0 end) end
        end
    end
end)

Toggles.MinesEnabled:OnChanged(function()
    if Toggles.MinesEnabled.Value then
        if not minesGui then createMinesUI() end
        minesGui.Enabled = true
        if minesState.status == "idle" then startMinesGame() end
    else
        if minesGui then minesGui.Enabled = false end
    end
end)



local stretchHooked = false
local function setupStretchHook()
    if stretchHooked then return end
    lazyLoad()
    if not CameraHandler then
        task.delay(1, setupStretchHook)
        return
    end
    stretchHooked = true
    CameraHandler.addPostUpdateHook(function()
        if Toggles.AspectEnabled and Toggles.AspectEnabled.Value then
            local ratio = Options.AspectRatio and Options.AspectRatio.Value or 1
            if ratio ~= 1 then
                Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, ratio, 0, 0, 0, 1, 0, 0, 0, 1)
            end
        end
    end)
end


local hitOverlayGui
local hitOverlayFrame
local function setupHitOverlay()
    if not hitOverlayGui then
        hitOverlayGui = Instance.new("ScreenGui")
        hitOverlayGui.Name = "HitOverlay"
        hitOverlayGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        hitOverlayGui.ResetOnSpawn = false
        hitOverlayGui.Parent = LP:WaitForChild("PlayerGui")
        hitOverlayGui.Enabled = false

        hitOverlayFrame = Instance.new("Frame")
        hitOverlayFrame.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        hitOverlayFrame.BorderSizePixel = 0
        hitOverlayFrame.BackgroundTransparency = 1
        hitOverlayFrame.Size = UDim2.new(1, 0, 1, 0)
        hitOverlayFrame.Parent = hitOverlayGui
    end
end


local tracerFolder
local function clearTracers()
    if tracerFolder then tracerFolder:ClearAllChildren() end
end

local function drawTracer(origin, hitPos, color, thickness)
    if not tracerFolder then
        tracerFolder = Instance.new("Folder")
        tracerFolder.Name = "Tracers"
        tracerFolder.Parent = workspace
    end
    local dist = (hitPos - origin).Magnitude
    if dist < 1 then return end
    local mid = (origin + hitPos) / 2
    local p = Instance.new("Part")
    p.Size = Vector3.new(thickness or 0.5, thickness or 0.5, dist)
    p.CFrame = CFrame.lookAt(mid, hitPos) * CFrame.new(0, 0, dist / 2)
    p.Anchored = true
    p.CanCollide = false
    p.CanQuery = false
    p.CanTouch = false
    p.Material = Enum.Material.Neon
    p.Color = color
    p.Transparency = 0.2
    p.Parent = tracerFolder
    game:GetService("Debris"):AddItem(p, 0.15)
end


local vmHighlights = {}


local unlockAllHooked = false
function setupUnlockAll()
    if not Toggles.UnlockAll or not Toggles.UnlockAll.Value then
        if unlockAllHooked then
            unlockAllHooked = false
        end
        return
    end
    lazyLoad()
    if not InventoryHandler then return end
    unlockAllHooked = true

    local oldOwnsItem = InventoryHandler.OwnsItem
    local oldOwnsSkin = InventoryHandler.OwnsSkin
    local oldOwnsWrap = InventoryHandler.OwnsWrap
    local oldOwnsCharm = InventoryHandler.OwnsCharm
    local oldOwnsFinisher = InventoryHandler.OwnsFinisher
    local oldGetOwnedSkins = InventoryHandler.GetOwnedSkins
    local oldGetOwnedWraps = InventoryHandler.GetOwnedWraps
    local oldGetOwnedCharms = InventoryHandler.GetOwnedCharms
    local oldGetOwnedFinishers = InventoryHandler.GetOwnedFinishers

    InventoryHandler.OwnsItem = function(self, id)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then return true end
        return oldOwnsItem(self, id)
    end

    InventoryHandler.OwnsSkin = function(self, weapon, skin)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then return true end
        return oldOwnsSkin(self, weapon, skin)
    end

    InventoryHandler.OwnsWrap = function(self, weapon, wrap)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then return true end
        return oldOwnsWrap(self, weapon, wrap)
    end

    InventoryHandler.OwnsCharm = function(self, weapon, charm)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then return true end
        return oldOwnsCharm(self, weapon, charm)
    end

    InventoryHandler.OwnsFinisher = function(self, weapon, fin)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then return true end
        return oldOwnsFinisher(self, weapon, fin)
    end

    InventoryHandler.GetOwnedSkins = function(self, weapon)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then
            local all = {}
            local dir = tryRequire(ReplicatedStorage.Milk.Directory)
            if dir and dir.Items and dir.Items.all then
                for id, data in dir.Items.all do
                    if data.nID then all[data.nID] = true end
                end
            end
            return all
        end
        return oldGetOwnedSkins(self, weapon)
    end

    InventoryHandler.GetOwnedWraps = function(self, weapon)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then
            local all = {}
            local wraps = tryRequire(ReplicatedStorage.Modules.Handlers.WrapHandler)
            if wraps and wraps.Wraps then
                for id in wraps.Wraps do
                    all[id] = true
                end
            end
            return all
        end
        return oldGetOwnedWraps(self, weapon)
    end

    InventoryHandler.GetOwnedCharms = function(self, weapon)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then
            local all = {}
            local charms = tryRequire(ReplicatedStorage.Data.Charms)
            if charms then
                for id in charms do
                    all[id] = true
                end
            end
            return all
        end
        return oldGetOwnedCharms(self, weapon)
    end

    InventoryHandler.GetOwnedFinishers = function(self, weapon)
        if Toggles.UnlockAll and Toggles.UnlockAll.Value then
            return { __index = function() return true end }
        end
        return oldGetOwnedFinishers(self, weapon)
    end

    Library:Notify("Unlock All applied! Re-open Armory to see changes.", 3)
end

Toggles.UnlockAll:OnChanged(function()
    setupUnlockAll()
end)


local function setupEffectsHooks()
    lazyLoad()
    if not Effects then
        task.delay(1, setupEffectsHooks)
        return
    end

    Effects:Listen("Shot", function(player, character, weaponId, shotData)
        local isLocal = (player == LP)
        if Toggles.TracersEnabled and Toggles.TracersEnabled.Value and shotData.origin and shotData.hitPos and isLocal then
            local color = Options.TracersColor and Options.TracersColor.Value or Color3.fromRGB(0, 200, 255)
            local thickness = Options.TracersThickness and Options.TracersThickness.Value or 1
            local headPos = LP.Character and LP.Character:FindFirstChild("Head") and LP.Character.Head.Position or shotData.origin
            drawTracer(headPos, shotData.hitPos, color, thickness)
        end
        if Toggles.CustomShootSound and Toggles.CustomShootSound.Value and isLocal then
            local soundId = Options.ShootSoundID and Options.ShootSoundID.Value or ""
            playCustomSound(soundId, 1)
        end
    end)

    Effects:Listen("Damage", function(weaponId, fromChar, toChar, damage, headshot, deflected)
        if Toggles.CustomHitSound and Toggles.CustomHitSound.Value and toChar == LP.Character and damage > 0 then
            local soundId = Options.HitSoundID and Options.HitSoundID.Value or ""
            local vol = Options.HitSoundVolume and Options.HitSoundVolume.Value or 1
            playCustomSound(soundId, vol)
        end

        if Toggles.HitNotification and Toggles.HitNotification.Value and fromChar == LP.Character and toChar ~= LP.Character and damage > 0 then
            local name = "(unknown)"
            for _, p in ipairs(Players:GetPlayers()) do
                if p.Character == toChar then name = p.Name; break end
            end
            local htype = headshot and " HEADSHOT" or ""
            Library:Notify("Hit " .. name .. " for " .. math.floor(damage) .. " dmg" .. htype, 2)
        end

        if Toggles.HitOverlay and Toggles.HitOverlay.Value and fromChar == LP.Character and toChar ~= LP.Character and damage > 0 then
            setupHitOverlay()
            if hitOverlayFrame then
                local color = Options.HitOverlayColor and Options.HitOverlayColor.Value or Color3.fromRGB(255, 0, 0)
                local alpha = Options.HitOverlayAlpha and Options.HitOverlayAlpha.Value or 0.3
                local dur = Options.HitOverlayDuration and Options.HitOverlayDuration.Value or 0.3
                hitOverlayFrame.BackgroundColor3 = color
                hitOverlayFrame.BackgroundTransparency = 1 - alpha
                hitOverlayGui.Enabled = true
                task.delay(dur, function()
                    if hitOverlayGui then hitOverlayGui.Enabled = false end
                end)
            end
        end
    end)
end

local function playCustomSound(soundId, volume)
    if soundId == "" then return end
    local s = Instance.new("Sound")
    s.SoundId = soundId
    s.Volume = volume or 1
    s.Parent = workspace:FindFirstChild("World") and workspace.World:FindFirstChild("FX") or workspace
    s:Play()
    game:GetService("Debris"):AddItem(s, 5)
end


local function getEquippedVM()
    lazyLoad()
    if not CameraHandler then return nil end
    local character = LP.Character
    if not character then return nil end
    if ViewModel then
        return ViewModel.getEquipped(character)
    end
    return nil
end

local fovHooked = false
local function setupFOVHooks()
    if fovHooked then return end
    lazyLoad()
    if not CameraHandler then
        task.delay(1, setupFOVHooks)
        return
    end
    fovHooked = true

    CameraHandler.addPostUpdateHook(function(dt)
        if Toggles.VMChanger and Toggles.VMChanger.Value then
            local vmFov = Options.VMFOV and Options.VMFOV.Value or 80
            if CameraHandler.setBaseFOV then
                CameraHandler:setBaseFOV(vmFov)
            end
        end
    end)
end

local vmBasePos, vmBaseRot
local function updateVMOffsets()
    local vm = getEquippedVM()
    if not vm then return end
    if Toggles.VMChanger and Toggles.VMChanger.Value then
        if not vmBasePos then vmBasePos = vm.vmPosSpring and Vector3.new(vm.vmPosSpring._target.X, vm.vmPosSpring._target.Y, vm.vmPosSpring._target.Z) end
        if not vmBaseRot then vmBaseRot = vm.vmRotSpring and Vector3.new(vm.vmRotSpring._target.X, vm.vmRotSpring._target.Y, vm.vmRotSpring._target.Z) end

        local ox = Options.VMOffsetX and Options.VMOffsetX.Value or 0
        local oy = Options.VMOffsetY and Options.VMOffsetY.Value or 0
        local oz = Options.VMOffsetZ and Options.VMOffsetZ.Value or 0
        local rx = Options.VMRotX and Options.VMRotX.Value or 0
        local ry = Options.VMRotY and Options.VMRotY.Value or 0
        local rz = Options.VMRotZ and Options.VMRotZ.Value or 0

        if vm.vmPosSpring and vmBasePos then
            vm.vmPosSpring.Target = vmBasePos + Vector3.new(ox, oy, oz)
        end
        if vm.vmRotSpring and vmBaseRot then
            vm.vmRotSpring.Target = vmBaseRot + Vector3.new(math.rad(rx), math.rad(ry), math.rad(rz))
        end
    else
        vmBasePos = nil
        vmBaseRot = nil
    end
end

local function updateVMChams()
    lazyLoad()
    if not ViewModel then return end
    local character = LP.Character
    if not character then return end

    local controllers = ViewModel.getControllers(character)
    if not controllers then return end

    local chamsOn = Toggles.VMChams and Toggles.VMChams.Value or false
    local chamsColor = Options.VMChamsColor and Options.VMChamsColor.Value or Color3.fromRGB(0, 200, 255)
    local chamsDepth = Options.VMChamsMode and Options.VMChamsMode.Value == "Always" and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded

    local currentVMs = {}
    for id, vm in controllers do
        if vm and vm.viewModel and vm.viewModel.Parent then
            currentVMs[vm.viewModel] = true
        end
    end

    for model, hl in pairs(vmHighlights) do
        if not currentVMs[model] then
            pcall(function() hl:Destroy() end)
            vmHighlights[model] = nil
        end
    end

    if chamsOn then
        for id, vm in controllers do
            local model = vm and vm.viewModel
            if model and model.Parent and not vmHighlights[model] then
                local hl = Instance.new("Highlight")
                hl.Adornee = model
                hl.DepthMode = chamsDepth
                hl.FillColor = chamsColor
                hl.FillTransparency = 0.3
                hl.OutlineTransparency = 0.5
                hl.Parent = model
                vmHighlights[model] = hl
            elseif model and vmHighlights[model] then
                local hl = vmHighlights[model]
                hl.DepthMode = chamsDepth
                hl.FillColor = chamsColor
            end
        end
    end
end

local gunHighlights = {}
local function updateGunChams()
    local chamsOn = Toggles.GunChams and Toggles.GunChams.Value or false
    local chamsColor = Options.GunChamsColor and Options.GunChamsColor.Value or Color3.fromRGB(0, 200, 255)
    local chamsDepth = Options.GunChamsMode and Options.GunChamsMode.Value == "Always" and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded

    local world = workspace:FindFirstChild("World")
    local gunModels = {}
    if world then
        local function scanForGuns(container)
            for _, child in ipairs(container:GetChildren()) do
                if child:IsA("Model") and child:FindFirstChildWhichIsA("BasePart") then
                    local isWeapon = false
                    for _, part in ipairs(child:GetDescendants()) do
                        if part:IsA("Tool") or (part:IsA("Part") and part.Name:find("Grip")) then
                            isWeapon = true; break
                        end
                    end
                    if isWeapon or child.Name:find("Gun") or child.Name:find("Weapon") or child.Name:find("sword") or child.Name:find("blade") or child.Name:find("launcher") then
                        gunModels[child] = true
                    end
                end
            end
        end
        local entities = world:FindFirstChild("Entities")
        if entities then scanForGuns(entities) end
        local fx = world:FindFirstChild("FX")
        if fx then
            for _, child in ipairs(fx:GetChildren()) do
                if child:IsA("Model") and child:FindFirstChildWhichIsA("BasePart") then
                    if not child.Name:find("Dummy") then
                        gunModels[child] = true
                    end
                end
            end
        end
    end

    for model, hl in pairs(gunHighlights) do
        if not gunModels[model] then
            pcall(function() hl:Destroy() end)
            gunHighlights[model] = nil
        end
    end

    if chamsOn then
        for model in gunModels do
            if not gunHighlights[model] then
                local hl = Instance.new("Highlight")
                hl.Adornee = model
                hl.DepthMode = chamsDepth
                hl.FillColor = chamsColor
                hl.FillTransparency = 0.3
                hl.OutlineTransparency = 0.5
                hl.Parent = model
                gunHighlights[model] = hl
            else
                local hl = gunHighlights[model]
                hl.DepthMode = chamsDepth
                hl.FillColor = chamsColor
            end
        end
    end
end


task.spawn(function()
    task.wait(2)
    setupEffectsHooks()
    setupFOVHooks()
    setupStretchHook()
    setupHitOverlay()
end)


local fovCircle
local drawTable = {}
local entities = {}
local chamsHighlights = {}
local lastScan = 0
local skyInstance
local skeletonParts = { "Head", "UpperTorso", "LowerTorso", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot" }
local skeletonConnections = { {1,2},{2,3},{2,4},{4,5},{5,6},{2,7},{7,8},{8,9},{3,10},{10,11},{11,12},{3,13},{13,14},{14,15} }

RunService.RenderStepped:Connect(function()
    Camera = workspace.CurrentCamera
    if not Camera then return end
    local camPos = Camera.CFrame.Position
    local ctr = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local char = LP.Character


    if Toggles.NightMode and Toggles.NightMode.Value then
        Lighting.ClockTime = 0; Lighting.Brightness = 0.5; Lighting.Ambient = Color3.fromRGB(40, 40, 80); Lighting.FogEnd = 99999
    end
    if Toggles.CustomTime and Toggles.CustomTime.Value then Lighting.ClockTime = Options.TimeOfDay and Options.TimeOfDay.Value or 12 end
    if Toggles.CustomFog and Toggles.CustomFog.Value then
        Lighting.FogEnd = Options.FogEnd and Options.FogEnd.Value or 500
        Lighting.FogStart = Options.FogStart and Options.FogStart.Value or 0
    end
    if Toggles.CustomAmbient and Toggles.CustomAmbient.Value and Options.AmbientColor then
        Lighting.Ambient = Options.AmbientColor.Value
    end
    if Options.Brightness then Lighting.Brightness = Options.Brightness.Value end
    if Toggles.Fullbright and Toggles.Fullbright.Value then
        Lighting.Brightness = 10; Lighting.OutdoorAmbient = Color3.new(1,1,1); Lighting.Ambient = Color3.new(1,1,1)
        Lighting.GlobalShadows = true
    end
    if Toggles.RemoveFog and Toggles.RemoveFog.Value then Lighting.FogEnd = 999999 end


    if Toggles.XRay and Toggles.XRay.Value and char then
        for _, v in ipairs(workspace:GetDescendants()) do
            if v:IsA("BasePart") and not v:IsDescendantOf(char) then pcall(function() v.LocalTransparencyModifier = 0.8 end) end
        end
    end


    if not fovCircle then fovCircle = Drawing.new("Circle"); fovCircle.Visible = false; fovCircle.Thickness = 1; fovCircle.NumSides = 64; fovCircle.Filled = false end
    local showFov = Toggles.FOVCircle and Toggles.FOVCircle.Value or false
    if showFov then
        local fovDeg = Options.FOVCircleSize and Options.FOVCircleSize.Value or 10
        local fovPx = math.tan(math.rad(fovDeg / 2)) * (Camera.ViewportSize.Y / 2) / math.tan(math.rad(Camera.FieldOfView) / 2)
        fovCircle.Radius = fovPx; fovCircle.Position = ctr; fovCircle.Visible = true
        fovCircle.Color = Options.FOVCircleColor and Options.FOVCircleColor.Value or Color3.fromRGB(127, 72, 163)
    else fovCircle.Visible = false end



    if tick() - lastScan > 0.5 then entities = findAll(); lastScan = tick() end
    local valid = {}; for eid, ent in pairs(entities) do if tick() - (ent.lastSeen or 0) <= 5 then valid[eid] = ent end end
    local teamCheck = Toggles.ESPTeamCheck and Toggles.ESPTeamCheck.Value or false


    local aimTargets = {}
    for eid, ent in pairs(valid) do
        if teamCheck and isFriend(ent) then continue end
        local headPos = getHeadPos(ent)
        if not headPos then continue end
        local dist = (headPos - camPos).Magnitude
        if dist > 500 then continue end
        local hsp, hos = Camera:WorldToViewportPoint(headPos)
        if not hos then continue end
        local footPos = getFootPos(ent)
        table.insert(aimTargets, { ent = ent, headPos = headPos, headS = Vector2.new(hsp.X, hsp.Y), footPos = footPos, dist = dist })
    end


    local espOn = Toggles.ESPEnabled and Toggles.ESPEnabled.Value or false
    local count = espOn and #aimTargets or 0
    while #drawTable < count do
        table.insert(drawTable, { Drawing.new("Square"), Drawing.new("Circle"), Drawing.new("Text"), Drawing.new("Text"), Drawing.new("Square"), Drawing.new("Square"), Drawing.new("Line") })
        for _, d in ipairs(drawTable[#drawTable]) do d.Visible = false end
    end
    while #drawTable > count do for _, d in ipairs(table.remove(drawTable)) do pcall(function() d:Remove() end) end end

    if espOn then
        for i, target in ipairs(aimTargets) do
            local esp = drawTable[i]; if not esp then break end
            local headS = target.headS; local footPos = target.footPos; local ent = target.ent

            if Toggles.ESPHeadDot and Toggles.ESPHeadDot.Value then
                esp[2].Position = headS; esp[2].Radius = 3; esp[2].NumSides = 8; esp[2].Thickness = 2; esp[2].Filled = true; esp[2].Visible = true
                esp[2].Color = Options.ESPHeadDotColor and Options.ESPHeadDotColor.Value or Color3.fromRGB(255, 255, 50)
            else esp[2].Visible = false end

            if footPos then
                local fsp, fos = Camera:WorldToViewportPoint(footPos)
                if fos then
                    local footS = Vector2.new(fsp.X, fsp.Y); local boxH = math.abs(headS.Y - footS.Y); local boxW = boxH * 0.5
                    if Toggles.ESPBox and Toggles.ESPBox.Value then
                        esp[1].Size = Vector2.new(boxW, boxH); esp[1].Position = Vector2.new(headS.X - boxW / 2, headS.Y - boxH * 0.1)
                        esp[1].Thickness = 1; esp[1].Filled = false; esp[1].Visible = true
                        esp[1].Color = Options.ESPBoxColor and Options.ESPBoxColor.Value or Color3.fromRGB(255, 50, 50)
                    else esp[1].Visible = false end
                    if Toggles.ESPHealth and Toggles.ESPHealth.Value then
                        local hum = ent.Model and ent.Model:FindFirstChildWhichIsA("Humanoid")
                        local hp = hum and hum.Health or 100; local maxHp = hum and hum.MaxHealth or 100; local pct = math.clamp(hp / maxHp, 0, 1)
                        local barX = headS.X - boxW / 2 - 6; local barY = headS.Y - boxH * 0.1
                        esp[5].Size = Vector2.new(3, boxH); esp[5].Position = Vector2.new(barX, barY); esp[5].Color = Color3.fromRGB(30, 30, 30); esp[5].Filled = true; esp[5].Visible = true
                        esp[6].Size = Vector2.new(3, boxH * pct); esp[6].Position = Vector2.new(barX, barY + boxH * (1 - pct))
                        esp[6].Color = pct > 0.5 and Color3.fromRGB(50, 255, 50) or pct > 0.25 and Color3.fromRGB(255, 200, 50) or Color3.fromRGB(255, 50, 50)
                        esp[6].Filled = true; esp[6].Visible = true
                    else esp[5].Visible = false; esp[6].Visible = false end
                else esp[1].Visible = false; esp[5].Visible = false; esp[6].Visible = false end
            else esp[1].Visible = false; esp[5].Visible = false; esp[6].Visible = false end

            if Toggles.ESPName and Toggles.ESPName.Value then
                esp[3].Text = ent.Name or ""; esp[3].Position = headS - Vector2.new(0, 14); esp[3].Size = 12; esp[3].Font = 2; esp[3].Center = true; esp[3].Outline = true; esp[3].Visible = true
                esp[3].Color = Options.ESPNameColor and Options.ESPNameColor.Value or Color3.fromRGB(255, 255, 255)
            else esp[3].Visible = false end
            if Toggles.ESPDistance and Toggles.ESPDistance.Value then
                esp[4].Text = tostring(math.floor(target.dist)) .. "s"; esp[4].Size = 10; esp[4].Font = 2; esp[4].Center = true; esp[4].Outline = true
                esp[4].Color = Color3.fromRGB(200, 200, 200); esp[4].Position = headS + Vector2.new(0, 6); esp[4].Visible = true
            else esp[4].Visible = false end
            if Toggles.ESPTracer and Toggles.ESPTracer.Value then
                esp[7].From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y); esp[7].To = headS; esp[7].Thickness = 1; esp[7].Visible = true
                esp[7].Color = Options.ESPTracerColor and Options.ESPTracerColor.Value or Color3.fromRGB(255, 255, 255)
            else esp[7].Visible = false end
            if Toggles.ESPSkeleton and Toggles.ESPSkeleton.Value and ent.Model and ent.Model:IsA("Model") then
                local pts = {}
                for _, name in ipairs(skeletonParts) do
                    local part = ent.Model:FindFirstChild(name)
                    if part and part:IsA("BasePart") then
                        local sp, so = Camera:WorldToViewportPoint(part.Position)
                        pts[name] = so and Vector2.new(sp.X, sp.Y) or nil
                    end
                end
                if not esp[8] then esp[8] = {} end
                for j = 1, #skeletonConnections do
                    local a = pts[skeletonParts[skeletonConnections[j][1]]]
                    local b = pts[skeletonParts[skeletonConnections[j][2]]]
                    if a and b then
                        if not esp[8][j] then esp[8][j] = Drawing.new("Line"); esp[8][j].Thickness = 1; esp[8][j].Visible = false end
                        esp[8][j].From = a; esp[8][j].To = b; esp[8][j].Visible = true
                        esp[8][j].Color = Options.ESPSkeletonColor and Options.ESPSkeletonColor.Value or Color3.fromRGB(255, 255, 255)
                    elseif esp[8][j] then esp[8][j].Visible = false end
                end
            elseif esp[8] then for _, line in ipairs(esp[8]) do if line then line.Visible = false end end end
        end
    end
    for j = count + 1, #drawTable do
        for k = 1, 7 do if drawTable[j][k] then drawTable[j][k].Visible = false end end
        if drawTable[j][8] then for _, line in ipairs(drawTable[j][8]) do if line then line.Visible = false end end end
    end


    local chamsOn = Toggles.Chams and Toggles.Chams.Value or false
    local chamsColor = Options.ChamsColor and Options.ChamsColor.Value or Color3.fromRGB(0, 200, 255)
    local chamsMode = Options.ChamsMode and Options.ChamsMode.Value or "Always"
    local chamsDepth = chamsMode == "Always" and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded
    local currentModels = {}
    for _, t in ipairs(aimTargets) do if t.ent and t.ent.Model then currentModels[t.ent.Model] = true end end
    for model, hl in pairs(chamsHighlights) do
        if not currentModels[model] then
            pcall(function() hl:Destroy() end)
            chamsHighlights[model] = nil
        end
    end
    if chamsOn then
        for _, t in ipairs(aimTargets) do
            local model = t.ent and t.ent.Model
            if model and model:IsA("Model") then
                if not chamsHighlights[model] then
                    local hl = Instance.new("Highlight")
                    hl.Adornee = model
                    hl.DepthMode = chamsDepth
                    hl.FillColor = chamsColor
                    hl.FillTransparency = 0.3
                    hl.OutlineColor = Color3.new(1, 1, 1)
                    hl.OutlineTransparency = 0.5
                    hl.Parent = model
                    chamsHighlights[model] = hl
                else
                    local hl = chamsHighlights[model]
                    hl.DepthMode = chamsDepth
                    hl.FillColor = chamsColor
                end
            end
        end
    end


    updateVMChams()


    updateGunChams()


    updateVMOffsets()


    if Toggles.AimbotEnabled and Toggles.AimbotEnabled.Value and #aimTargets > 0 then
        local aimHeld = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
        local aimKey = Options.AimbotKey
        if not aimHeld and aimKey and aimKey.Value then
            local keyStr = aimKey.Value
            if keyStr == "MB1" then aimHeld = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
            elseif keyStr == "MB2" then aimHeld = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
            elseif keyStr == "MB3" then aimHeld = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton3)
            else
                local keyCode = Enum.KeyCode[keyStr]
                if keyCode then aimHeld = UserInputService:IsKeyDown(keyCode) end
            end
        end
        if aimHeld then
            local best = nil; local bestDist = (Options.AimbotFOV and Options.AimbotFOV.Value or 10) * 6
            for _, t in ipairs(aimTargets) do
                local d = (t.headS - ctr).Magnitude
                if d < bestDist then bestDist = d; best = t end
            end
            if best then
                local delta = best.headS - ctr
                local smooth = Options.AimbotSmooth and Options.AimbotSmooth.Value or 10
                if smooth <= 1 then
                    mousemoverel(delta.X, delta.Y)
                    mousemoverel(delta.X, delta.Y)
                    mousemoverel(delta.X, delta.Y)
                else
                    mousemoverel(delta.X / smooth + delta.X * 0.4, delta.Y / smooth + delta.Y * 0.4)
                end
            end
        end
    end


    if Toggles.TriggerbotEnabled and Toggles.TriggerbotEnabled.Value and #aimTargets > 0 then
        local trigHeld = false
        local trigKey = Options.TriggerbotKey
        if trigKey and trigKey.Value then
            local keyStr = trigKey.Value
            if keyStr == "MB1" then trigHeld = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
            elseif keyStr == "MB2" then trigHeld = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
            elseif keyStr == "MB3" then trigHeld = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton3)
            else
                local keyCode = Enum.KeyCode[keyStr]
                if keyCode then trigHeld = UserInputService:IsKeyDown(keyCode) end
            end
        end
        if trigHeld then
            for _, t in ipairs(aimTargets) do
                if (t.headS - ctr).Magnitude < 12 then
                    mouse1press(); mouse1release()
                    break
                end
            end
        end
    end
end)


local spooferImage = "https://i.imgur.com/65scUcs.png"
local spooferName = "Unnamed Enhancements | discord.gg/enhancements"
local spooferHooked = false
local spooferScanned = false

local headshotNames = { PlayerHeadshot = true, Headshot = true }
local nameLabelNames = { Username = true, DisplayName = true, Killer = true, Killed = true, Assist = true, ["Assist+"] = true }

local function processHeadshot(img)
    if Toggles.ProfilePicSpoof and Toggles.ProfilePicSpoof.Value then
        img.Image = spooferImage
    end
end

local function processNametag(txt)
    if Toggles.NameSpoof and Toggles.NameSpoof.Value and nameLabelNames[txt.Name] then
        txt.Text = spooferName
    end
end

local function hookInstance(inst)
    if inst:IsA("ImageLabel") and headshotNames[inst.Name] then
        processHeadshot(inst)
        inst:GetPropertyChangedSignal("Image"):Connect(function()
            processHeadshot(inst)
        end)
        return
    end
    if (inst:IsA("TextLabel") or inst:IsA("TextButton")) and nameLabelNames[inst.Name] then
        processNametag(inst)
        inst:GetPropertyChangedSignal("Text"):Connect(function()
            processNametag(inst)
        end)
    end
end

local function scanSpoofer()
    if spooferScanned then return end
    spooferScanned = true
    local pg = LP:WaitForChild("PlayerGui")
    for _, desc in ipairs(pg:GetDescendants()) do
        hookInstance(desc)
    end
    for _, desc in ipairs(game:GetService("CoreGui"):GetDescendants()) do
        hookInstance(desc)
    end
end

local function setupSpoofer()
    if spooferHooked then return end
    spooferHooked = true
    scanSpoofer()
    local pg = LP:WaitForChild("PlayerGui")
    local function onDescendantAdded(desc)
        task.wait()
        if (Toggles.ProfilePicSpoof and Toggles.ProfilePicSpoof.Value) or (Toggles.NameSpoof and Toggles.NameSpoof.Value) then
            hookInstance(desc)
        end
    end
    pg.DescendantAdded:Connect(onDescendantAdded)
    game:GetService("CoreGui").DescendantAdded:Connect(onDescendantAdded)
end

Toggles.ProfilePicSpoof:OnChanged(function()
    if Toggles.ProfilePicSpoof.Value then setupSpoofer() end
end)

Toggles.NameSpoof:OnChanged(function()
    if Toggles.NameSpoof.Value then
        setupSpoofer()
        local pg = LP:WaitForChild("PlayerGui")
        for _, desc in ipairs(pg:GetDescendants()) do
            if desc:IsA("TextLabel") or desc:IsA("TextButton") then
                processNametag(desc)
            end
        end
    end
end)


local CLASSIC_FACE = "rbxassetid://8625736310"
local noobWatchConnection = nil

local noobColors = {
    Head = BrickColor.new("Bright yellow"),
    Torso = BrickColor.new("Bright blue"),
    LeftUpperArm = BrickColor.new("Bright yellow"),
    LeftLowerArm = BrickColor.new("Bright yellow"),
    LeftHand = BrickColor.new("Bright yellow"),
    RightUpperArm = BrickColor.new("Bright yellow"),
    RightLowerArm = BrickColor.new("Bright yellow"),
    RightHand = BrickColor.new("Bright yellow"),
    LeftUpperLeg = BrickColor.new("Bright green"),
    LeftLowerLeg = BrickColor.new("Bright green"),
    LeftFoot = BrickColor.new("Bright green"),
    RightUpperLeg = BrickColor.new("Bright green"),
    RightLowerLeg = BrickColor.new("Bright green"),
    RightFoot = BrickColor.new("Bright green"),
}

local function findPlayerChar()
    local ws = game:GetService("Workspace")
    local cam = ws.CurrentCamera
    if not cam then return nil end
    local pos = cam.CFrame.Position
    local closest, minDist = nil, 999999
    for _, h in ipairs(ws:GetDescendants()) do
        if h:IsA("Humanoid") and h.Health > 0 then
            local m = h.Parent
            local r = m and m:FindFirstChild("HumanoidRootPart")
            if r then
                local d = (r.Position - pos).Magnitude
                if d < minDist then
                    minDist = d; closest = m
                end
            end
        end
    end
    return minDist < 15 and closest or nil
end

local function makeNoob(char)
    char = char or findPlayerChar()
    if not char then return end

    local hum = char:FindFirstChildWhichIsA("Humanoid")
    if hum then
        local ok, desc = pcall(function()
            local d = Instance.new("HumanoidDescription")
            d.HeadColor = BrickColor.new("Bright yellow")
            d.TorsoColor = BrickColor.new("Bright blue")
            d.LeftArmColor = BrickColor.new("Bright yellow")
            d.RightArmColor = BrickColor.new("Bright yellow")
            d.LeftLegColor = BrickColor.new("Bright green")
            d.RightLegColor = BrickColor.new("Bright green")
            d.Shirt = 0; d.Pants = 0
            d.FrontShirt = 0; d.BackShirt = 0
            d.GraphicCollection = {}
            d.BodyTypeScale = 1; d.HeadScale = 1
            d.WidthScale = 1; d.HeightScale = 1
            return d
        end)
        if ok then pcall(function() hum:ApplyDescription(desc) end) end
    end

    for name, color in noobColors do
        local part = char:FindFirstChild(name)
        if part and part:IsA("BasePart") then
            part.BrickColor = color
            part.Material = Enum.Material.SmoothPlastic
        end
    end

    for _, acc in ipairs(char:GetDescendants()) do
        if acc:IsA("Accessory") or (acc:IsA("BasePart") and acc.Name:find("[Hh]air")) then
            acc:Destroy()
        end
    end

    local head = char:FindFirstChild("Head")
    if head then
        local applied = false
        for _, decal in ipairs(head:GetChildren()) do
            if decal:IsA("Decal") then
                decal.Texture = CLASSIC_FACE
                applied = true
                break
            end
        end
        if not applied then
            local d = Instance.new("Decal")
            d.Texture = CLASSIC_FACE
            d.Face = Enum.NormalId.Front
            d.Parent = head
        end
    end
end

local function setupNoobWatcher()
    if noobWatchConnection then
        noobWatchConnection:Disconnect()
        noobWatchConnection = nil
    end
    noobWatchConnection = game:GetService("Workspace").DescendantAdded:Connect(function(desc)
        task.wait(0.5)
        if Toggles.NoobAvatar and Toggles.NoobAvatar.Value and desc:IsA("Humanoid") and desc.Health > 0 then
            local m = desc.Parent
            if m then
                local cam = workspace.CurrentCamera
                local root = m:FindFirstChild("HumanoidRootPart")
                if cam and root and (root.Position - cam.CFrame.Position).Magnitude < 15 then
                    makeNoob(m)
                end
            end
        end
    end)
end

Toggles.NoobAvatar:OnChanged(function()
    if Toggles.NoobAvatar.Value then
        setupNoobWatcher()
        makeNoob()
    elseif noobWatchConnection then
        noobWatchConnection:Disconnect()
        noobWatchConnection = nil
    end
end)


SaveManager:LoadAutoloadConfig()