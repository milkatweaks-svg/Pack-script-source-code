-- This file was generated at discord.gg/syncrypt

local t1 = {}
local v2 = unpack or table.unpack
t1.value1 = loadstring(game:HttpGet("https://github.com/StyearX/Fluent-Modded/releases/download/Fluent/FluentPro"))()
t1.value2 = game:GetService("CoreGui")
t1.value3 = game:GetService("Players")

local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

t1.value4 = Workspace.CurrentCamera
t1.value5 = t1.value3.LocalPlayer
local value1 = t1.value1
local uDim2 = UDim2.fromOffset(500, 320)
local CreateWindow = value1.CreateWindow
local LeftControl = Enum.KeyCode.LeftControl
t1.value6 = CreateWindow(value1, {
	Title = "Milka HUB",
	SubTitle = "🦎Chameleon!",
	TabWidth = 160,
	Size = uDim2,
	Acrylic = true,
	Theme = "AMOLED",
	MinimizeKey = LeftControl,
	Search = true
})
local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "MilkaToggleGui"
t1.value7 = nil
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = t1.value2
t1.value8 = Instance.new("ImageButton")
t1.value8.Size = UDim2.new(0, 50, 0, 50)
t1.value8.Position = UDim2.new(0, 15, 0, 15)
t1.value8.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
t1.value8.BorderSizePixel = 0
t1.value8.Parent = ScreenGui
task.spawn(function()
    if not isfile("Milka_toggle_icon_v2.png") then
        writefile("Milka_toggle_icon_v2.png", game:HttpGet("https://i.ibb.co/BKgXkyMy/1000100148.png"))
    end

    t1.value8.Image = getcustomasset("Milka_toggle_icon_v2.png")
end)

local UICorner = Instance.new("UICorner")

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = t1.value8
t1.value8.MouseButton1Click:Connect(function()
    if t1.value6 then
        t1.value6:Minimize()
    end
end)

local v11 = t1.value6:AddTab({
	Title = "Information",
	Icon = "info"
})
t1.value9 = nil
local v12 = t1.value6:AddTab({
	Title = "Hider",
	Icon = "ghost"
})
local v13 = t1.value6:AddTab({
	Title = "Seeker",
	Icon = "crosshair"
})
local v14 = t1.value6:AddTab({
	Title = "Visual",
	Icon = "eye"
})
local value6 = t1.value6
local AddTab = value6.AddTab
local t2 = {
	Title = "LocalPlayer",
	Icon = "user"
}
t1.value10 = nil
local v18 = AddTab(value6, t2)

t1.value11 = false
t1.value12 = nil
t1.value13 = false
t1.value14 = false
t1.value15 = false
t1.value16 = false
t1.value17 = ""
t1.value18 = nil
t1.value19 = false
t1.value20 = 16
t1.value21 = false
t1.value22 = 16
t1.value23 = false
t1.value10 = {}
t1.value7 = false
t1.value9 = {}
function t1.value24()
    if t1.value7 then
        return true
    end

    local ok = pcall(function()
        local MarketplaceService = game:GetService("MarketplaceService")
        local u94
        u94 = hookmetamethod(game, "__namecall", function(p1, ...)
            local v109 = getnamecallmethod()
            local v110 = not checkcaller()

            if v110 then
                v110 = p1 == MarketplaceService and v109 == "UserOwnsGamePassAsync"
            end

            if v110 then
                local _, v112 = ...
                local str = tostring(v112)

                if t1.value10[str] then
                    return true
                end
            end

            return u94(p1, ...)
        end)
    end)

    if ok then
        t1.value7 = true
    end

    return ok
end
function t1.value25(p2)
    if not p2 then
        return "Player", Color3.fromRGB(255, 255, 255)
    end

    if t1.value9[p2] then
        return t1.value9[p2].role, t1.value9[p2].color
    end

    local Team = p2.Team

    if Team then
        Team = string.lower(p2.Team.Name)
    end

    local v27 = Team or ""
    local Role = p2:GetAttribute("Role")

    if not Role then
        Role = p2:GetAttribute("Team") or ""
    end

    local Character = p2.Character
    local v30 = string.find(v27, "seeker")

    if not v30 then
        v30 = string.find(string.lower((tostring(Role))), "seeker")
    end

    local s1, color3

    if v30 then
        s1 = "Seeker"
        color3 = Color3.fromRGB(255, 50, 50)
    else
        local v33 = string.find(v27, "hider")

        if not v33 then
            v33 = string.find(string.lower((tostring(Role))), "hider")
        end

        if v33 then
            s1 = "Hider"
            color3 = Color3.fromRGB(0, 150, 255)
        else
            if Character then
                Character = Character:FindFirstChildWhichIsA("Tool")
            end

            if Character then
                s1 = "Seeker"
                color3 = Color3.fromRGB(255, 50, 50)
            else
                s1 = "Hider"
                color3 = Color3.fromRGB(0, 150, 255)
            end
        end
    end

    t1.value9[p2] = {
		role = s1,
		color = color3
	}

    return s1, color3
end
function t1.value26(p3)
    t1.value9[p3] = nil
end
function t1.value27()
    for _, player in ipairs(t1.value3:GetPlayers()) do
        t1.value9[player] = nil
    end
end
local function v19(p4)
    p4.CharacterAdded:Connect(function()
        t1.value26(p4)
    end)
    p4:GetPropertyChangedSignal("Team"):Connect(function()
        t1.value26(p4)
    end)
    p4:GetAttributeChangedSignal("Role"):Connect(function()
        t1.value26(p4)
    end)
    p4:GetAttributeChangedSignal("Team"):Connect(function()
        t1.value26(p4)
    end)
end
for _, player in ipairs(t1.value3:GetPlayers()) do
    v19(player)
end
t1.value3.PlayerAdded:Connect(v19)
t1.value3.PlayerRemoving:Connect(t1.value26)

function t1.value28(p5)
    if not p5 then
        return false
    end

    local Character = p5.Character

    if Character then
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

        if HumanoidRootPart then
            HumanoidRootPart = Character:FindFirstChild("Humanoid")

            if HumanoidRootPart then
                HumanoidRootPart = Character.Humanoid.Health > 0
            end
        end

        Character = HumanoidRootPart
    end

    return Character
end
function t1.value29(p6)
    if p6 then
        local v42 = p6.Parent == t1.value3

        if v42 then
            v42 = t1.value28(p6)

            if v42 then
                v42 = t1.value25(p6) == "Hider"
            end
        end

        p6 = v42
    end

    return p6
end
function t1.value30()
    local t3 = {}

    for _, player in ipairs(t1.value3:GetPlayers()) do
        if player ~= t1.value5 and t1.value29(player) then
            table.insert(t3, player)
        end
    end

    local v46 = #t3 > 0

    if v46 then
        v46 = t3[math.random(1, #t3)]
    end

    return v46 or nil
end
Workspace.DescendantAdded:Connect(function(descendant)
    local v48 = descendant.Name == "Status"

    if not v48 then
        v48 = descendant.Name == "RoundState"

        if not v48 then
            v48 = descendant.Name == "InGame"
        end
    end

    if v48 then
        t1.value27()
    end
end)
v14:AddToggle("AutoShot", {
	Title = "Shot VFX (Troll Player)",
	Default = false,
	Callback = function(p7)
    t1.value14 = p7

    if not p7 then
        t1.value18 = nil
    end
end
})
v14:AddSection("Spectate")

function t1.value31()
    local t4 = {}

    for _, player in ipairs(t1.value3:GetPlayers()) do
        if player ~= t1.value5 then
            table.insert(t4, player.Name)
        end
    end

    return t4
end
local AddDropdown = v14.AddDropdown
local v23 = t1.value31()
t1.value32 = AddDropdown(v14, "ChoosePlayerSpec", {
	Title = "Choose a Player",
	Values = v23,
	Multi = false,
	Default = nil,
	Callback = function(p8)
    t1.value17 = p8
end
})
task.spawn(function()
    while task.wait(2) do
        local value32 = t1.value32
        local t5 = { t1.value31() }

        value32:SetValues(v2(t5))
    end
end)
v14:AddToggle("ToggleSpecPlayer", {
	Title = "Spectate Player",
	Default = false,
	Callback = function(p9)
    t1.value16 = p9

    if not p9 then
        local value4 = t1.value4
        local Character = t1.value5.Character

        if Character then
            Character = t1.value5.Character:FindFirstChildOfClass("Humanoid")
        end

        value4.CameraSubject = Character
    end
end
})
v18:AddToggle("NoclipToggle", {
	Title = "No Clip",
	Default = false,
	Callback = function(p10)
    t1.value19 = p10
end
})
RunService.Stepped:Connect(function()
    local value19 = t1.value19

    if value19 then
        value19 = t1.value5.Character
    end

    if value19 then
        for _, descendant in ipairs(t1.value5.Character:GetDescendants()) do
            if descendant:IsA("BasePart") and descendant.CanCollide then
                descendant.CanCollide = false
            end
        end
    end
end)
v18:AddInput("SpeedInput", {
	Title = "WalkSpeed Value",
	Default = "16",
	Placeholder = "Enter speed...",
	Numeric = true,
	Finished = true,
	Callback = function(p11)
    t1.value20 = tonumber(p11) or 16
end
})
v18:AddToggle("ApplySpeedToggle", {
	Title = "Apply Speed",
	Default = false,
	Callback = function(p12)
    t1.value21 = p12
end
})
v18:AddInput("JumpInput", {
	Title = "JumpPower Value",
	Default = "16",
	Placeholder = "Enter jump power...",
	Numeric = true,
	Finished = true,
	Callback = function(p13)
    t1.value22 = tonumber(p13) or 16
end
})
v18:AddToggle("ApplyJumpToggle", {
	Title = "Apply JumpPower",
	Default = false,
	Callback = function(p14)
    t1.value23 = p14
end
})
RunService.Heartbeat:Connect(function()
    pcall(function()
        local Character = t1.value5.Character
        local v96 = Character and Character:FindFirstChildOfClass("Humanoid")

        if v96 then
            if t1.value21 then
                v96.WalkSpeed = t1.value20
            else
                v96.WalkSpeed = 16
            end

            if t1.value23 then
                v96.UseJumpPower = true
                v96.JumpPower = t1.value22

                return
            end

            v96.JumpPower = 16
        end
    end)
end)
t1.value5.CharacterAdded:Connect(function(character)
    task.wait(0.7)
    character:WaitForChild("Humanoid").PlatformStand = false

    if character:FindFirstChild("Animate") then
        character.Animate.Disabled = false
    end
end)
v11:AddParagraph({
	Title = "Discord",
	Content = "Discord link : https://discord.gg/BaDZhFq3GT"
})
v11:AddButton({
	Title = "Join",
	Callback = function()
    setclipboard("https://discord.gg/BaDZhFq3GT")
    t1.value1:Notify({
			Title = "Milka hub",
			Content = "Copied Discord link to clipboard!",
			Duration = 3
		})
end
})
v11:AddParagraph({
	Title = "Youtube",
	Content = "Youtube: @MilkaScript."
})
v11:AddParagraph({
	Title = "Creator",
	Content = "Milka @MilkaScript"
})
v12:AddButton({
	Title = "Free PickColor",
	Callback = function()
    if t1.value10["1893772851"] then
        return
    end

    t1.value10["1893772851"] = true
    t1.value24()
end
})
v12:AddToggle("AutoHide", {
	Title = "Auto Hide",
	Default = false,
	Callback = function(p15)
    local v69 = p15

    if p15 then
        v69 = t1.value5.Character

        if v69 then
            v69 = t1.value5.Character:FindFirstChild("HumanoidRootPart")
        end
    end

    if v69 then
        t1.value12 = t1.value5.Character.HumanoidRootPart.CFrame
        t1.value5.Character.HumanoidRootPart.CFrame = CFrame.new(0, 500, 0)
        t1.value5.Character.HumanoidRootPart.Anchored = true

        return
    end

    local v70 = not p15

    if v70 then
        v70 = t1.value5.Character

        if v70 then
            v70 = t1.value5.Character:FindFirstChild("HumanoidRootPart")
        end
    end

    if v70 then
        t1.value5.Character.HumanoidRootPart.Anchored = false

        if t1.value12 then
            t1.value5.Character.HumanoidRootPart.CFrame = t1.value12
        end
    end
end
})
v12:AddToggle("AutoTaunt", {
	Title = "Auto Taunt",
	Default = false,
	Callback = function(p16)
    t1.value11 = p16
end
})
v13:AddButton({
	Title = "Free x2 chance seeker",
	Callback = function()
    if t1.value10["1890935320"] then
        return
    end

    t1.value10["1890935320"] = true
    t1.value24()
end
})
v13:AddToggle("AutoAim", {
	Title = "Auto Aim Player",
	Default = false,
	Callback = function(p17)
    t1.value13 = p17

    if not p17 then
        t1.value18 = nil
    end
end
})
v13:AddToggle("EspHider", {
	Title = "Esp Player",
	Default = false,
	Callback = function(p18)
    t1.value15 = p18
end
})
RunService.RenderStepped:Connect(function()
    local value16 = t1.value16

    if value16 then
        value16 = t1.value17 ~= ""
    end

    if value16 then
        local t1value17 = t1.value3:FindFirstChild(t1.value17)
        local v76 = t1value17

        if t1value17 then
            v76 = t1value17.Character

            if v76 then
                v76 = t1value17.Character:FindFirstChildOfClass("Humanoid")
            end
        end

        if v76 then
            t1.value4.CameraSubject = t1value17.Character:FindFirstChildOfClass("Humanoid")

            return
        end

        local value4 = t1.value4
        local Character = t1.value5.Character

        if Character then
            Character = t1.value5.Character:FindFirstChildOfClass("Humanoid")
        end

        value4.CameraSubject = Character
    end
end)
RunService.Heartbeat:Connect(function()
    if t1.value13 or t1.value14 then
        if not t1.value29(t1.value18) then
            t1.value18 = t1.value30()
        end

        local value13 = t1.value13

        if value13 then
            value13 = t1.value29(t1.value18)

            if value13 then
                value13 = t1.value18.Character:FindFirstChild("HumanoidRootPart")
            end
        end

        if value13 then
            t1.value4.CFrame = CFrame.new(t1.value4.CFrame.Position, t1.value18.Character.HumanoidRootPart.Position)
        end
    end
end)
task.spawn(function()
    while task.wait(0.05) do
        if t1.value14 then
            if not t1.value29(t1.value18) then
                t1.value18 = t1.value30()
            end

            if t1.value29(t1.value18) then
                pcall(function()
                    local Character = t1.value5.Character
                    local Character2 = t1.value18.Character
                    local v99 = Character

                    if Character then
                        v99 = Character:FindFirstChild("HumanoidRootPart")

                        if v99 then
                            v99 = Character2 and Character2:FindFirstChild("HumanoidRootPart")
                        end
                    end

                    if v99 then
                        local HumanoidRootPartPosition = Character.HumanoidRootPart.Position
                        local HumanoidRootPartPosition2 = Character2.HumanoidRootPart.Position
                        local Unit = (HumanoidRootPartPosition2 - HumanoidRootPartPosition).Unit
                        local SeekerData = game:GetService("ReplicatedStorage"):WaitForChild("SeekerData", 5)

                        if SeekerData then
                            local ShootVFXEvent = SeekerData:WaitForChild("ShootVFXEvent", 5)

                            if ShootVFXEvent then
                                local color3 = Color3.new(0.682, 1, 0.188)

                                ShootVFXEvent:FireServer({
									onPlayer = true,
									hit = HumanoidRootPartPosition2,
									color = color3,
									muzzle = HumanoidRootPartPosition,
									normal = Unit
								})
                            end
                        end
                    end
                end)
            end
        end
    end
end)
task.spawn(function()
    while task.wait(2) do
        if t1.value11 then
            pcall(function()
                local RoundRemotes = game:GetService("ReplicatedStorage"):WaitForChild("RoundRemotes", 5)
                local v107 = RoundRemotes

                if RoundRemotes then
                    v107 = RoundRemotes:FindFirstChild("TauntEvent")
                end

                if v107 then
                    RoundRemotes.TauntEvent:FireServer()
                end
            end)
        end
    end
end)
t1.value33 = {}
RunService.RenderStepped:Connect(function()
    for _, player in ipairs(t1.value3:GetPlayers()) do
        local Character = player.Character
        local Character3 = t1.value5.Character
        local v84 = false
        local v85 = Character3
        if Character3 then
            v85 = Character3:FindFirstChild("HumanoidRootPart")

            if v85 then
                v85 = Character and Character:FindFirstChild("HumanoidRootPart")
            end
        end
        if v85 and (Character3.HumanoidRootPart.Position - Character.HumanoidRootPart.Position).Magnitude <= 700 then
            v84 = true
        end
        local v86 = player ~= t1.value5
        if v86 then
            v86 = t1.value15

            if v86 then
                if v84 then
                    v84 = Character and Character:FindFirstChild("HumanoidRootPart")
                end

                v86 = v84
            end
        end
        if v86 then
            local v87, v88

            if t1.value28(player) then
                v87, v88 = t1.value25(player)
            else
                v87 = "Lobby"
                v88 = Color3.fromRGB(255, 255, 255)
            end

            if not t1.value33[player] then
                local Highlight = Instance.new("Highlight", t1.value2)
                local BillboardGui = Instance.new("BillboardGui", t1.value2)

                BillboardGui.Name = "EspTag"
                BillboardGui.AlwaysOnTop = true
                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                BillboardGui.StudsOffset = Vector3.new(0, 3, 0)

                local TextLabel = Instance.new("TextLabel", BillboardGui)

                TextLabel.Size = UDim2.new(1, 0, 1, 0)
                TextLabel.BackgroundTransparency = 1
                TextLabel.TextSize = 14
                TextLabel.Font = Enum.Font.SourceSansBold
                TextLabel.TextStrokeTransparency = 0
                TextLabel.TextColor3 = Color3.new(1, 1, 1)
                t1.value33[player] = {
					Highlight = Highlight,
					Billboard = BillboardGui,
					Text = TextLabel
				}
            end

            t1.value33[player].Highlight.FillColor = v88
            t1.value33[player].Highlight.OutlineColor = v88
            t1.value33[player].Highlight.Adornee = Character
            t1.value33[player].Billboard.Adornee = Character:FindFirstChild("HumanoidRootPart") or Character:FindFirstChild("Head")

            local n1 = 0

            if Character3 and Character3:FindFirstChild("HumanoidRootPart") then
                n1 = math.floor((Character3.HumanoidRootPart.Position - Character.HumanoidRootPart.Position).Magnitude)
            end

            t1.value33[player].Text.Text = string.format("[%s] %s [%dm]", v87, player.Name, n1)
            t1.value33[player].Text.TextColor3 = v88
        elseif t1.value33[player] then
            t1.value33[player].Highlight:Destroy()
            t1.value33[player].Billboard:Destroy()
            t1.value33[player] = nil
        end
    end
end)
