-- This file was generated at discord.gg/syncrypt

local t1 = {}
local v2 = unpack or table.unpack
t1.value1 = nil
t1.value2 = nil
t1.value3 = nil
t1.value4 = game:GetService("Players")
local _game = game
t1.value5 = nil
_game:GetService("RunService")
t1.value6 = game:GetService("Workspace")
t1.value7 = game:GetService("Lighting")
t1.value8 = nil
local _game2 = game
local GetService = _game2.GetService
t1.value9 = nil
t1.value10 = GetService(_game2, "UserInputService")
t1.value11 = game:GetService("ReplicatedStorage")
t1.value12 = t1.value4.LocalPlayer
t1.value13 = nil
t1.value14 = t1.value7.Ambient
local value7 = t1.value7
t1.value15 = nil
t1.value16 = value7.OutdoorAmbient
t1.value17 = t1.value7.Brightness
t1.value18 = t1.value7.ColorShift_Top
t1.value19 = t1.value7.ColorShift_Bottom
local v7 = loadstring(game:HttpGet("https://raw.githubusercontent.com/Dayzjohnlery/JWindow/refs/heads/main/main.lua"))
t1.value20 = nil
t1.value21 = v7()
getgenv().RAYFIELD_SECURE = true
local v8 = loadstring(game:HttpGet("https://sirius.menu/gen2"))()
t1.value22 = false
t1.value23 = true
t1.value24 = {}
function t1.value25(p1)
    local t2 = {}
    local Character = p1.Character

    if Character then
        for _, child in ipairs(Character:GetChildren()) do
            if child:IsA("Tool") then
                table.insert(t2, child.Name)
            end
        end
    end

    local Backpack = p1:FindFirstChild("Backpack")

    if Backpack then
        for _, child in ipairs(Backpack:GetChildren()) do
            if child:IsA("Tool") then
                table.insert(t2, child.Name)
            end
        end
    end

    return t2
end
function t1.value26(p2)
    local Character = p2.Character

    if not Character then
        return nil
    end

    local Head = Character:FindFirstChild("Head")

    if not Head then
        return nil
    end

    local BillboardGui = Instance.new("BillboardGui")

    BillboardGui.Adornee = Head
    BillboardGui.Size = UDim2.new(0, 300, 0, 40)
    BillboardGui.StudsOffset = Vector3.new(0, 2.8, 0)
    BillboardGui.MaxDistance = 120
    BillboardGui.AlwaysOnTop = true
    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    local TextLabel = Instance.new("TextLabel")

    TextLabel.Size = UDim2.new(1, 0, 1, 0)
    TextLabel.BackgroundTransparency = 0.5
    TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    TextLabel.TextColor3 = Color3.new(1, 1, 1)
    TextLabel.Font = Enum.Font.SourceSans
    TextLabel.TextSize = 14
    TextLabel.TextWrapped = true
    TextLabel.TextXAlignment = Enum.TextXAlignment.Center
    TextLabel.TextYAlignment = Enum.TextYAlignment.Center
    TextLabel.Text = ""
    TextLabel.Parent = BillboardGui
    BillboardGui.Parent = Head

    return BillboardGui
end
t1.value27 = nil
function t1.value28(p3, p4)
    local v54 = t1.value24[p3]

    if not v54 then
        v54 = t1.value26(p3)

        if not v54 then
            return
        end

        t1.value24[p3] = v54
    end

    local Character = p3.Character

    if Character then
        local Head = Character:FindFirstChild("Head")

        if Head and Head ~= v54.Adornee then
            v54.Adornee = Head
            v54.Parent = Head
        end
    end

    local TextLabel = v54:FindFirstChildOfClass("TextLabel")

    if TextLabel then
        if #p4 == 0 then
            TextLabel.Text = "Empty"

            return
        end

        TextLabel.Text = table.concat(p4, ", ")
    end
end
function t1.value29(p5)
    local v51 = t1.value24[p5]

    if v51 then
        v51:Destroy()
        t1.value24[p5] = nil
    end
end
t1.value4.PlayerRemoving:Connect(function(player)
    t1.value29(player)
end)
t1.value30 = nil
t1.value31 = nil
local function v9()
    while t1.value23 do
        for _, player in ipairs(t1.value4:GetPlayers()) do
            if player ~= t1.value4.LocalPlayer then
                local v64 = t1.value25(player)

                if #v64 > 0 then
                    t1.value28(player, v64)
                else
                    t1.value28(player, v64)
                end
            end
        end

        task.wait(0.5)
    end

    for _, v in pairs(t1.value24) do
        v:Destroy()
    end

    table.clear(t1.value24)
end
t1.value30 = false
t1.value31 = nil
function t1.value32()
    while t1.value30 do
        local Death = t1.value12.PlayerGui:FindFirstChild("Death")

        if Death and not t1.value31 then
            t1.value31 = Death:Clone()
            Death:Destroy()
        end

        task.wait(1)
    end

    if t1.value31 then
        t1.value31.Parent = t1.value12.PlayerGui
        t1.value31 = nil
    end
end
t1.value33 = false
function t1.value34()
    local Map = t1.value6:FindFirstChild("Map")
    if Map then
        Map = t1.value6.Map:FindFirstChild("Zones")
    end
    if not Map then
        return "---"
    end
    for _, child in ipairs(Map:GetChildren()) do
        local v71 = child:IsA("BasePart")

        if v71 then
            v71 = child.Name == "Outside"
        end

        if v71 then
            child:Destroy()
        end
    end
    local n1 = 1e999
    local GetChildren = Map.GetChildren
    local v74
    for v77, v78 in ipairs(GetChildren(Map)) do

        if v78:IsA("BasePart") then
            local _____Temperature = v78:FindFirstChild("_____Temperature")
            local v80 = _____Temperature

            if _____Temperature then
                v80 = _____Temperature:IsA("NumberValue") and n1 > _____Temperature.Value
            end

            if v80 then
                v74 = v78
                n1 = _____Temperature.Value
            end
        end
    end
    if v74 then
        return v74.Name
    end

    return "---"
end
t1.value35 = false
t1.value36 = nil
t1.value37 = nil
local t3 = {
	name = "Room",
	value = "---"
}
t1.value38 = nil
local t4 = {
	name = "Hunting",
	value = "No"
}
local t5 = {
	name = "Walk Speed",
	value = "---"
}
t1.value39 = nil
local t6 = {
	name = "Blink Speed",
	value = "---"
}
t1.value40 = nil
t1.value41 = nil
t1.value40 = {
	t3,
	t4,
	t5,
	t6
}
t1.value42 = nil
t1.value43 = 2
t1.value44 = nil
t1.value45 = {}
t1.value46 = 0
t1.value47 = nil
t1.value47 = nil
t1.value41 = nil
t1.value48 = nil
function t1.value49()
    print("Disconnect")

    if t1.value41 then
        t1.value41:Disconnect()
        t1.value41 = nil
    end

    t1.value47 = nil
    table.clear(t1.value45)
end
function t1.value50()
    local elapsed = os.clock()
    local n2 = 0

    for i = #t1.value45, 1, -1 do
        local v114 = i

        if elapsed - t1.value45[v114] <= t1.value43 then
            n2 += 1
        else
            table.remove(t1.value45, v114)
        end
    end

    return n2 / t1.value43
end
t1.value51 = nil
t1.value52 = nil
function t1.value53(p6, p7)
    t1.value40[p6].value = tostring(p7)

    local name = t1.value40[p6].name
    local v108 = name .. ": " .. tostring(p7)

    t1.value36:UpdateLabel(name, v108)
end
local function v14()
    t1.value36 = t1.value21:CreateWindow({
		Name = "Ghost Info"
	})
    for v131, v132 in ipairs(t1.value40) do

        local v133 = v132.name .. ": " .. tostring(v132.value)
        local color3 = Color3.new(0, 1, 0)

        t1.value36:AddLabel(v132.name, v133, color3)
    end
    while t1.value35 do
        local v135 = t1.value34()

        if v135 then
            t1.value53(1, v135)
        end

        local Ghost = t1.value6:FindFirstChild("Ghost")

        if Ghost then
            local Hunting = Ghost:FindFirstChild("Hunting")

            if Hunting and Hunting.Value == true then
                local Humanoid = Ghost:FindFirstChild("Humanoid")

                if Humanoid then
                    local v139 = not Hunting.Value and "No" or "Yes"

                    t1.value53(2, v139)
                    t1.value53(3, string.format("%.2f", Humanoid.WalkSpeed))
                end
            end

            local Head = Ghost:FindFirstChild("Head")

            if Head then
                if Head ~= t1.value47 then
                    t1.value49()
                    t1.value47 = Head
                    t1.value46 = Head.Transparency
                    Head:GetPropertyChangedSignal("Transparency"):Connect(function()
                        local HeadTransparency = Head.Transparency

                        if HeadTransparency == 0 and t1.value46 > 0 then
                            table.insert(t1.value45, os.clock())
                        end

                        t1.value46 = HeadTransparency
                    end)
                end

                local v141 = t1.value50()

                if v141 > 0 then
                    t1.value53(4, string.format("%.1f/sec", v141))
                end
            end
        else
            t1.value53(2, "No")
        end

        task.wait(0.0028571428571429)
    end
    t1.value49()
    if t1.value36 then
        t1.value36:Destroy()
    end
end
t1.value54 = false
t1.value55 = nil
t1.value51 = 20
function t1.value56()
    while t1.value54 do
        local Character = t1.value12.Character
        local v143 = Character and Character:FindFirstChild("Humanoid")

        if not v143 then
            return
        end

        if not t1.value55 then
            t1.value55 = v143.HipHeight
        end

        local Ghost = t1.value6:FindFirstChild("Ghost")

        if Ghost then
            local Hunting = Ghost:FindFirstChild("Hunting")

            if Hunting and Hunting.Value == true then
                local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                local HumanoidRootPart2 = Ghost:FindFirstChild("HumanoidRootPart")

                if HumanoidRootPart and HumanoidRootPart2 then
                    if (HumanoidRootPart.Position - HumanoidRootPart2.Position).Magnitude <= t1.value51 then
                        v143.HipHeight = 8
                    else
                        v143.HipHeight = t1.value55
                    end
                end
            end
        else
            v143.HipHeight = t1.value55
        end

        task.wait(0.0028571428571429)
    end

    local Character = t1.value12.Character

    if Character then
        Character = Character:FindFirstChild("Humanoid")
    end

    local v149 = not t1.value54

    if v149 then
        v149 = Character and t1.value55
    end

    if v149 then
        Character.HipHeight = t1.value55
    end
end
t1.value37 = false
function t1.value57()
    if game.PlaceId ~= 6348640020 then
        return
    end
    local Notification = t1.value12.PlayerGui:FindFirstChild("Notification")
    if Notification then
        Notification = t1.value12.PlayerGui.Notification:FindFirstChild("FeedbackFrame")
    end
    local TextLabel
    while t1.value37 do
        if not Notification then
            Notification = t1.value12.PlayerGui:FindFirstChild("Notification")

            if Notification then
                Notification = t1.value12.PlayerGui.Notification:FindFirstChild("FeedbackFrame")
            end
        else
            local Ghost = t1.value6:FindFirstChild("Ghost")
            local v124 = Ghost

            if Ghost then
                v124 = Ghost:IsA("Model")
            end

            if v124 then
                local Hunting = Ghost:FindFirstChild("Hunting")

                if Hunting and (Hunting.Value and not TextLabel) then
                    local NotificationSize = Notification.Size

                    TextLabel = Instance.new("TextLabel")
                    TextLabel.Size = NotificationSize
                    TextLabel.BackgroundTransparency = 1
                    TextLabel.Text = "GHOST IS HUNTING!"
                    TextLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
                    TextLabel.TextSize = 24
                    TextLabel.Parent = Notification
                end
            else
                local v127 = not Ghost

                if v127 then
                    v127 = TextLabel

                    if TextLabel then
                        v127 = TextLabel.Text == "GHOST IS HUNTING!"
                    end
                end

                if v127 then
                    TextLabel.Text = "GHOST HUNTING HAS ENDED!"
                    TextLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
                    task.wait(3)
                    TextLabel:Destroy()
                    TextLabel = nil
                end
            end
        end

        task.wait(0.0028571428571429)
    end
    if not t1.value37 and TextLabel then
        TextLabel:Destroy()
    end
end
t1.value58 = nil
t1.value59 = nil
t1.value60 = nil
t1.value42 = nil
t1.value39 = false
function t1.value61(p8)
    local Character = t1.value12.Character

    if Character then
        Character = t1.value12.Character:FindFirstChild("HumanoidRootPart")
    end

    if not Character then
        return
    end

    if t1.value39 and p8 == "tp" then
        if t1.value42 then
            Character.CFrame = CFrame.new(t1.value42 + Vector3.new(0, 4, 0))

            return
        end

        EvidenceNotify("Failed TP", "No TP Anchor Found!", 3)

        return
    end

    if t1.value39 and p8 == "save" then
        t1.value42 = Character.Position
        EvidenceNotify("Anchor Saved", "TP Anchor Saved!", 3)
    end
end
function manualTPButtons()
    local PlayerGui = t1.value12:FindFirstChild("PlayerGui")

    if PlayerGui then
        PlayerGui = t1.value12.PlayerGui:FindFirstChild("MobileManualTPButtons")
    end

    if not PlayerGui then
        PlayerGui = Instance.new("ScreenGui")
    end

    t1.value58 = PlayerGui
    t1.value58.Name = "MobileManualTPButtons"
    t1.value58.Parent = t1.value12:FindFirstChild("PlayerGui")

    local TextButton = Instance.new("TextButton")

    TextButton.Name = "TPButton"
    TextButton.Text = "TP"
    TextButton.Size = UDim2.new(0, 50, 0, 50)
    TextButton.Position = UDim2.new(0.65, 0, 0.02, 0)
    TextButton.AnchorPoint = Vector2.new(0.5, 0)
    TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextScaled = true
    TextButton.BackgroundTransparency = 0.7
    TextButton.BorderSizePixel = 0

    local TextButton2 = Instance.new("TextButton")

    TextButton2.Name = "SaveButton"
    TextButton2.Text = "S"
    TextButton2.Size = UDim2.new(0, 50, 0, 50)
    TextButton2.Position = UDim2.new(0.7, 0, 0.02, 0)
    TextButton2.AnchorPoint = Vector2.new(0.5, 0)
    TextButton2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
    TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton2.TextScaled = true
    TextButton2.BackgroundTransparency = 0.7
    TextButton2.BorderSizePixel = 0
    TextButton.TouchTap:Connect(function()
        t1.value61("tp")
    end)
    TextButton2.TouchTap:Connect(function()
        t1.value61("save")
    end)
    TextButton.Parent = t1.value58
    TextButton2.Parent = t1.value58
end
t1.value62 = nil
t1.value63 = false
t1.value13 = false
t1.value52 = nil
function t1.value64()
    local Character = t1.value12.Character

    if Character then
        Character = t1.value12.Character:FindFirstChild("Humanoid")
    end

    if not Character then
        return
    end

    while t1.value13 do
        if Character then
            if not t1.value52 then
                t1.value52 = Character.HipHeight
            end

            Character.HipHeight = 8
        end

        task.wait(0.0028571428571429)
    end

    if not t1.value13 then
        Character.HipHeight = t1.value52
    end
end
function unkillableButton()
    local PlayerGui = t1.value12:FindFirstChild("PlayerGui")

    if PlayerGui then
        PlayerGui = t1.value12.PlayerGui:FindFirstChild("MobileUnkillableButton")
    end

    if not PlayerGui then
        PlayerGui = Instance.new("ScreenGui")
    end

    t1.value62 = PlayerGui
    t1.value62.Name = "MobileUnkillableButton"
    t1.value62.Parent = t1.value12:FindFirstChild("PlayerGui")

    local TextButton = Instance.new("TextButton")

    TextButton.Name = "UButton"
    TextButton.Text = "U"
    TextButton.Size = UDim2.new(0, 50, 0, 50)
    TextButton.Position = UDim2.new(0.6, 0, 0.02, 0)
    TextButton.AnchorPoint = Vector2.new(0.5, 0)
    TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextScaled = true
    TextButton.BackgroundTransparency = 0.7
    TextButton.BorderSizePixel = 0
    TextButton.TouchTap:Connect(function()
        t1.value13 = not t1.value13

        if t1.value13 then
            TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            TextButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end

        t1.value64()
    end)
    TextButton.Parent = t1.value62
end
t1.value65 = false
t1.value66 = {}
function t1.value67()
    local Map = t1.value6:FindFirstChild("Map")

    if Map then
        Map = t1.value6.Map:FindFirstChild("HidingSpots")
    end

    if not Map then
        return
    end

    while t1.value65 do
        local GetChildren = Map.GetChildren

        for i, v in ipairs(GetChildren(Map)) do
            local v223 = i
            local Blocked = v:FindFirstChild("Blocked")

            if Blocked then
                v.Name = v.Name .. v223
                table.insert(t1.value66, Blocked.Parent)

                local clone = Blocked:Clone()

                clone.Name = "Blocked" .. v223
                clone.Parent = t1.value11
                Blocked:Destroy()
            end
        end

        task.wait(1)
    end

    if not t1.value65 then
        for i, _ in ipairs(t1.value66) do
            local v228 = i
            local v229 = t1.value11:FindFirstChild("Blocked" .. v228)

            if v229 then
                local clone = v229:Clone()

                clone.Name = "Blocked"
                clone.Parent = t1.value66[v228]
                v229:Destroy()
            end
        end

        table.clear(t1.value66)
    end
end
t1.value5 = false
function t1.value68()
    local Map = t1.value6:FindFirstChild("Map")

    if Map then
        Map = t1.value6.Map:FindFirstChild("Doors")
    end

    if not Map then
        return
    end

    while t1.value5 do
        local GetChildren = Map.GetChildren

        for _, v in ipairs(GetChildren(Map)) do
            if v:IsA("Model") then
                v.PrimaryPart.CanCollide = false
            else
                v.CanCollide = false
            end
        end

        task.wait(1)
    end

    if not t1.value5 then
        local GetChildren = Map.GetChildren

        for _, v in ipairs(GetChildren(Map)) do
            if v:IsA("Model") then
                v.PrimaryPart.CanCollide = true
            else
                v.CanCollide = true
            end
        end
    end
end
t1.value44 = false
t1.value15 = nil
function t1.value69()
    while t1.value44 do
        local players = t1.value4:GetPlayers()

        for _, v in ipairs(players) do
            local Character = v.Character
            local v212 = Character

            if Character then
                v212 = Character.Name ~= t1.value12.Character.Name
            end

            if v212 then
                local Highlight = Character:FindFirstChildOfClass("Highlight")

                if not Highlight then
                    Highlight = Instance.new("Highlight", Character)
                end

                t1.value15 = Highlight
                t1.value15.FillColor = Color3.fromRGB(0, 0, 200)
                t1.value15.OutlineColor = Color3.fromRGB(255, 255, 0)
                t1.value15.OutlineTransparency = 0
                t1.value15.Enabled = true
            end
        end

        task.wait(1)
    end

    if not t1.value44 then
        local players = t1.value4:GetPlayers()

        for _, v in ipairs(players) do
            local Character = v.Character

            if Character then
                local Highlight = Character:FindFirstChildOfClass("Highlight")

                if Highlight then
                    Highlight:Destroy()
                end
            end
        end

        if t1.value15 then
            t1.value15 = nil
        end
    end
end
t1.value9 = false
function t1.value70()
    if t1.value9 then
        t1.value7.Ambient = Color3.fromRGB(255, 255, 255)
        t1.value7.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
        t1.value7.Brightness = 5
        t1.value7.ColorShift_Top = Color3.fromRGB(255, 255, 255)
        t1.value7.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)

        return
    end

    t1.value7.Ambient = t1.value14
    t1.value7.OutdoorAmbient = t1.value16
    t1.value7.Brightness = t1.value17
    t1.value7.ColorShift_Top = t1.value18
    t1.value7.ColorShift_Bottom = t1.value19
end
t1.value71 = false
t1.value72 = 12
t1.value73 = nil
t1.value74 = nil
t1.value75 = nil
t1.value76 = false
function t1.value77()
    t1.value76 = true

    while t1.value76 do
        local Character = t1.value12.Character

        if Character then
            Character = t1.value12.Character:FindFirstChildOfClass("Humanoid")
        end

        if Character then
            Character.WalkSpeed = t1.value72
        end

        task.wait(0.0028571428571429)
    end
end
function t1.value78()
    local Character = t1.value12.Character

    if Character then
        Character = Character:FindFirstChildOfClass("Humanoid")
    end

    if Character then
        Character.WalkSpeed = 6
    end
end
function t1.value79()
    if game.PlaceId == 6137321701 then
        return
    end

    local Stamina = t1.value12.PlayerGui:FindFirstChild("Stamina")

    if Stamina then
        Stamina = t1.value12.PlayerGui.Stamina:FindFirstChild("BarRoot")
    end

    if t1.value10.TouchEnabled then
        local PlayerGui = t1.value12.PlayerGui

        if PlayerGui then
            PlayerGui = t1.value12.PlayerGui:FindFirstChild("MobileUI")

            if PlayerGui then
                PlayerGui = t1.value12.PlayerGui.MobileUI:FindFirstChild("SprintButton")
            end
        end

        if PlayerGui then
            t1.value73 = PlayerGui.MouseButton1Down:Connect(t1.value77)
            t1.value74 = PlayerGui.MouseButton1Up:Connect(t1.value78)
            t1.value75 = PlayerGui.TouchLongPress:Connect(t1.value77)
        end
    end

    if t1.value71 and Stamina then
        local Bar = Stamina:FindFirstChild("Bar")
        local clone = Bar:Clone()
        local Stamina2 = clone:FindFirstChild("Stamina")

        if Stamina2 then
            Stamina2.BackgroundTransparency = 0
        end

        clone.Name = "BarInf"
        clone.Parent = Stamina
        Bar.Visible = false
    end

    while t1.value71 do
        local Character = t1.value12.Character
        local v239 = Character and Character:FindFirstChildOfClass("Humanoid")

        if v239 then
            v239.WalkSpeed = t1.value10:IsKeyDown(Enum.KeyCode.LeftShift) and t1.value72 or 6
        end

        task.wait(0.0028571428571429)
    end

    if not t1.value71 then
        if Stamina then
            Stamina:FindFirstChild("Bar").Visible = true
            Stamina.BarInf:Destroy()
        end

        if t1.value73 then
            t1.value73:Disconnect()
        end

        if t1.value74 then
            t1.value74:Disconnect()
        end

        if t1.value75 then
            t1.value75:Disconnect()
        end
    end
end
t1.value20 = false
t1.value8 = false
t1.value48 = 20
function t1.value80()
    while t1.value8 do
        local Character = t1.value12.Character
        local Ghost = t1.value6:FindFirstChild("Ghost")

        if Ghost and Ghost:IsA("Model") then
            local Hunting = Ghost:FindFirstChild("Hunting")

            if Hunting and not t1.value20 and Hunting.Value then
                local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                local HumanoidRootPart3 = Ghost:FindFirstChild("HumanoidRootPart")

                if HumanoidRootPart and HumanoidRootPart3 and (HumanoidRootPart.Position - HumanoidRootPart3.Position).Magnitude <= t1.value48 then
                    local Map = t1.value6:FindFirstChild("Map")

                    if Map then
                        Map = t1.value6.Map:FindFirstChild("Van")

                        if Map then
                            Map = t1.value6.Map.Van:FindFirstChild("Van")

                            if Map then
                                Map = t1.value6.Map.Van.Van:FindFirstChild("Door")

                                if Map then
                                    Map = t1.value6.Map.Van.Van.Door:FindFirstChild("Lines")
                                end
                            end
                        end
                    end

                    if Map and Map:IsA("BasePart") then
                        HumanoidRootPart.CFrame = CFrame.new(Map.Position + Vector3.new(0, 4, 0))
                        t1.value20 = true
                    end
                end
            end
        else
            t1.value20 = false
        end

        task.wait(0.0028571428571429)
    end
end
t1.value1 = false
function t1.value81()
    while t1.value1 do
        local Ghost = t1.value6:FindFirstChild("Ghost")
        local v59 = Ghost

        if Ghost then
            v59 = Ghost:IsA("Model")
        end

        if v59 then
            task.wait(1)

            local Highlight = Ghost:FindFirstChildOfClass("Highlight")

            if not Highlight then
                Highlight = Instance.new("Highlight", Ghost)
            end

            Highlight.FillColor = Color3.fromRGB(255, 0, 0)
            Highlight.OutlineColor = Color3.fromRGB(255, 255, 0)
            Highlight.OutlineTransparency = 0
            Highlight.Enabled = true
        end

        task.wait(1)
    end
end
t1.value3 = false
t1.value2 = nil
t1.value82 = nil
function t1.value83()
    while t1.value3 do
        local Map = t1.value6:FindFirstChild("Map")
        if Map then
            Map = t1.value6.Map:FindFirstChild("Zones")
        end
        if not Map then
            return
        end
        local GetChildren = Map.GetChildren
        for _, v in ipairs(GetChildren(Map)) do
            local v92 = v:IsA("BasePart")

            if v92 then
                v92 = v.Name == "Outside"
            end

            if v92 then
                v:Destroy()
            end
        end
        local n3 = 1e999
        local v94
        for v97, v98 in ipairs(Map:GetChildren()) do

            if v98:IsA("BasePart") then
                local _____Temperature = v98:FindFirstChild("_____Temperature")
                local v100 = _____Temperature

                if _____Temperature then
                    v100 = _____Temperature:IsA("NumberValue")

                    if v100 then
                        v100 = n3 > _____Temperature.Value
                    end
                end

                if v100 then
                    v94 = v98
                    n3 = _____Temperature.Value
                end

                local GetChildren2 = v98.GetChildren

                for _, v in ipairs(GetChildren2(v98)) do
                    if v:IsA("BoxHandleAdornment") then
                        v:Destroy()
                    end
                end
            end
        end
        if v94 then
            local BoxHandleAdornment = v94:FindFirstChildOfClass("BoxHandleAdornment")

            if not BoxHandleAdornment then
                BoxHandleAdornment = Instance.new("BoxHandleAdornment", v94)
            end

            t1.value2 = BoxHandleAdornment
            t1.value2.Adornee = v94
            t1.value2.Size = v94.Size
            t1.value2.AlwaysOnTop = true
            t1.value2.ZIndex = 1
            t1.value2.Transparency = 0.7
            t1.value2.Color3 = Color3.fromRGB(0, 255, 255)
        end
        task.wait(1)
    end
end
t1.value59 = false
t1.value38 = nil
function t1.value84()
    while t1.value59 and not t1.value38 do
        local Map = t1.value6:FindFirstChild("Map")

        if Map then
            Map = t1.value6.Map:FindFirstChild("Items")
        end

        if not Map then
            return
        end

        if Map then
            for _, v in ipairs({
				"Music Box",
				"Tarot Cards"
			}) do
                local v3 = Map:FindFirstChild(v)

                if v3 then
                    for _, descendant in ipairs(v3:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            t1.value38 = Instance.new("BoxHandleAdornment", v3)
                            t1.value38.Adornee = descendant
                            t1.value38.Size = descendant.Size
                            t1.value38.AlwaysOnTop = true
                            t1.value38.ZIndex = 1
                            t1.value38.Transparency = 0.4
                            t1.value38.Color3 = Color3.fromRGB(255, 0, 0)
                        end
                    end
                end
            end
        end

        local v200 = t1.value6:FindFirstChild("Spirit Board")
        local v201 = v200

        if v200 then
            v201 = v200:IsA("Model")
        end

        if v201 then
            local Board = v200:FindFirstChild("Board")
            local v203 = Board

            if Board then
                v203 = Board:IsA("BasePart")
            end

            if v203 then
                t1.value38 = Instance.new("BoxHandleAdornment", Board)
                t1.value38.Adornee = Board
                t1.value38.Size = Board.Size
                t1.value38.AlwaysOnTop = true
                t1.value38.ZIndex = 1
                t1.value38.Transparency = 0.4
                t1.value38.Color3 = Color3.fromRGB(255, 0, 0)
            end
        end

        local SummoningCircle = t1.value6:FindFirstChild("SummoningCircle")
        local v205 = SummoningCircle

        if SummoningCircle then
            v205 = SummoningCircle:IsA("Model")
        end

        if v205 then
            local Circle = SummoningCircle:FindFirstChild("Circle")
            local v207 = Circle

            if Circle then
                v207 = Circle:IsA("BasePart")
            end

            if v207 then
                t1.value38 = Instance.new("BoxHandleAdornment", Circle)
                t1.value38.Adornee = Circle
                t1.value38.Size = Circle.Size
                t1.value38.AlwaysOnTop = true
                t1.value38.ZIndex = 1
                t1.value38.Transparency = 0.4
                t1.value38.Color3 = Color3.fromRGB(255, 0, 0)
            end
        end

        task.wait(1)
    end
end
t1.value60 = false
t1.value82 = nil
function t1.value85()
    while t1.value60 and not t1.value82 do
        local BooBooDoll = t1.value6:FindFirstChild("BooBooDoll")
        local v241 = BooBooDoll

        if BooBooDoll then
            v241 = BooBooDoll:IsA("BasePart")
        end

        if v241 and not BooBooDoll:FindFirstChildOfClass("BoxHandleAdornment") then
            t1.value82 = Instance.new("BoxHandleAdornment", BooBooDoll)
            t1.value82.Adornee = BooBooDoll
            t1.value82.Size = BooBooDoll.Size
            t1.value82.AlwaysOnTop = true
            t1.value82.ZIndex = 1
            t1.value82.Transparency = 0.4
            t1.value82.Color3 = Color3.fromRGB(255, 255, 0)
        end

        task.wait(1)
    end
end
t1.value27 = false
function t1.value86()
    local Map = t1.value6:FindFirstChild("Map")

    if Map then
        Map = t1.value6.Map:FindFirstChild("HidingSpots")
    end

    local Map2 = t1.value6:FindFirstChild("Map")

    if Map2 then
        Map2 = t1.value6.Map:FindFirstChild("ClosetDoors")
    end

    local Map3 = t1.value6:FindFirstChild("Map")

    if Map3 then
        Map3 = t1.value6.Map:FindFirstChild("Lockers")
    end

    while t1.value27 do
        local v153 = not Map
        if not v153 then
            v153 = not Map2 or not Map3
        end
        if v153 then
            return
        end
        local GetChildren = Map.GetChildren
        for _, v in ipairs(GetChildren(Map)) do
            local Blocked = v:FindFirstChild("Blocked")

            if Blocked and not Blocked:FindFirstChild("Highlight") then
                local Highlight = Instance.new("Highlight", Blocked)

                Highlight.FillColor = Color3.fromRGB(200, 0, 0)
                Highlight.FillTransparency = 0.8
                Highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                Highlight.OutlineTransparency = 0.5
                Highlight.Enabled = true
            end
        end
        local GetChildren3 = Map2.GetChildren
        for v162, v163 in ipairs(GetChildren3(Map2)) do

            local Main = v163:FindFirstChild("Main")
            local Secondary = v163:FindFirstChild("Secondary")

            if Main and not Main:FindFirstChildOfClass("BoxHandleAdornment") then
                local BoxHandleAdornment = Instance.new("BoxHandleAdornment", Main)

                BoxHandleAdornment.Adornee = Main
                BoxHandleAdornment.Size = Main.Size
                BoxHandleAdornment.AlwaysOnTop = true
                BoxHandleAdornment.ZIndex = 1
                BoxHandleAdornment.Transparency = 0.5
                BoxHandleAdornment.Color3 = Color3.fromRGB(255, 255, 255)
            end

            if Secondary and not Secondary:FindFirstChildOfClass("BoxHandleAdornment") then
                local BoxHandleAdornment = Instance.new("BoxHandleAdornment", Secondary)

                BoxHandleAdornment.Adornee = Secondary
                BoxHandleAdornment.Size = Secondary.Size
                BoxHandleAdornment.AlwaysOnTop = true
                BoxHandleAdornment.ZIndex = 1
                BoxHandleAdornment.Transparency = 0.5
                BoxHandleAdornment.Color3 = Color3.fromRGB(255, 255, 255)
            end
        end
        local GetChildren4 = Map3.GetChildren
        for _, v in pairs(GetChildren4(Map3)) do
            local Hitbox = v:FindFirstChild("Hitbox")

            if Hitbox and not Hitbox:FindFirstChildOfClass("BoxHandleAdornment") then
                local BoxHandleAdornment = Instance.new("BoxHandleAdornment", Hitbox)

                BoxHandleAdornment.Adornee = Hitbox
                BoxHandleAdornment.Size = Hitbox.Size
                BoxHandleAdornment.AlwaysOnTop = true
                BoxHandleAdornment.ZIndex = 1
                BoxHandleAdornment.Transparency = 0.5
                BoxHandleAdornment.Color3 = Color3.fromRGB(255, 255, 255)
            end
        end
        task.wait(1)
    end

    if not t1.value27 then
        for _, child in ipairs(Map:GetChildren()) do
            local Blocked = child:FindFirstChild("Blocked")

            if Blocked then
                local Highlight = Blocked:FindFirstChild("Highlight")

                if Highlight then
                    Highlight:Destroy()
                end
            end
        end
        for v179, v180 in ipairs(Map2:GetChildren()) do

            local Main = v180:FindFirstChild("Main")
            local Secondary = v180:FindFirstChild("Secondary")

            if Main then
                local BoxHandleAdornment = Main:FindFirstChildOfClass("BoxHandleAdornment")

                if BoxHandleAdornment then
                    BoxHandleAdornment:Destroy()
                end
            end

            if Secondary then
                local BoxHandleAdornment = Secondary:FindFirstChildOfClass("BoxHandleAdornment")

                if BoxHandleAdornment then
                    BoxHandleAdornment:Destroy()
                end
            end
        end
        for _, child in ipairs(Map3:GetChildren()) do
            local Hitbox = child:FindFirstChild("Hitbox")

            if Hitbox then
                local BoxHandleAdornment = Hitbox:FindFirstChildOfClass("BoxHandleAdornment")

                if BoxHandleAdornment then
                    BoxHandleAdornment:Destroy()
                end
            end
        end
    end
end
t1.value87 = false
t1.value88 = {
	{
		name = "Freezing",
		state = false
	},
	{
		name = "Ghost Orbs",
		state = false
	},
	{
		name = "UV",
		state = false
	},
	{
		name = "SLS Anomaly",
		state = false
	},
	{
		name = "Writing",
		state = false
	},
	{
		name = "Spirit Box",
		state = false
	},
	{
		name = "EMF 5",
		state = false
	}
}
t1.value89 = nil
function t1.value90(p9, p10)
    t1.value88[p9].state = p10

    local name = t1.value88[p9].name
    local v245 = t1.value88[p9].state and name .. ": Yes" or name .. ": No"
    local state = t1.value88[p9].state

    if state then
        state = Color3.new(0, 1, 0)
    end

    if not state then
        state = Color3.new(1, 0, 0)
    end

    t1.value89:UpdateLabel(name, v245, state)
end
local t7 = {
	coldestZone = nil,
	coldestTemp = 1e999,
	outsideDestroyed = false
}
t1.value91 = {
	lastSpiritBoxCheck = 0,
	lastEMFCheck = 0,
	lastTemperatureCheck = 0,
	temperatureCache = t7,
	spiritBoxCache = {},
	emfCache = {},
	cacheTTL = 1
}
function t1.value92()
    t1.value89 = t1.value21:CreateWindow({
		Name = "Evidence GUI"
	})
    for v249, v250 in ipairs(t1.value88) do

        local v251, color3

        if v250.state then
            v251 = v250.name .. ": Yes"
            color3 = Color3.new(0, 1, 0)
        else
            v251 = v250.name .. ": No"
            color3 = Color3.new(1, 0, 0)
        end

        t1.value89:AddLabel(v250.name, v251, color3)
    end
    while t1.value87 do
        local timestamp = tick()

        if not t1.value88[1].state then
            if timestamp - t1.value91.lastTemperatureCheck > t1.value91.cacheTTL then
                t1.value91.temperatureCache.coldestZone = nil
                t1.value91.temperatureCache.coldestTemp = 1e999

                local Map = t1.value6:FindFirstChild("Map")

                if Map then
                    local Zones = Map:FindFirstChild("Zones")

                    if Zones then
                        if not t1.value91.temperatureCache.outsideDestroyed then
                            local Outside = Zones:FindFirstChild("Outside")
                            local v257 = Outside

                            if Outside then
                                v257 = Outside:IsA("BasePart")
                            end

                            if v257 then
                                Outside:Destroy()
                            end

                            t1.value91.temperatureCache.outsideDestroyed = true
                        end

                        for _, child in ipairs(Zones:GetChildren()) do
                            if child:IsA("BasePart") then
                                local _____Temperature = child:FindFirstChild("_____Temperature")
                                local v261 = _____Temperature

                                if _____Temperature then
                                    v261 = _____Temperature:IsA("NumberValue")

                                    if v261 then
                                        v261 = _____Temperature.Value < t1.value91.temperatureCache.coldestTemp
                                    end
                                end

                                if v261 then
                                    t1.value91.temperatureCache.coldestZone = child
                                    t1.value91.temperatureCache.coldestTemp = _____Temperature.Value
                                end
                            end
                        end
                    end
                end

                t1.value91.lastTemperatureCheck = timestamp
            end

            if t1.value91.temperatureCache.coldestZone then
                if t1.value91.temperatureCache.coldestTemp < 0.07 then
                    t1.value90(1, true)
                else
                    (function(p11)
                        local name = t1.value88[1].name
                        local v336 = if p11 ~= 0.1 then t1.value88[1].name .. ": No (" .. string.format("%.2f", p11) .. ")" else t1.value88[1].name .. ": No (" .. tostring(p11) .. ")"
                        local value89 = t1.value89
                        local t8 = { Color3.new(1, 0, 0) }

                        value89:UpdateLabel(name, v336, v2(t8))
                    end)(t1.value91.temperatureCache.coldestTemp)
                end
            end
        end

        if not t1.value88[2].state then
            local Map = t1.value6:FindFirstChild("Map")

            if Map then
                local Orbs = Map:FindFirstChild("Orbs")

                if Orbs and #Orbs:GetChildren() > 0 then
                    t1.value90(2, true)
                else
                    t1.value90(2, false)
                end
            end
        end

        if not t1.value88[3].state then
            local Map = t1.value6:FindFirstChild("Map")

            if Map then
                local Prints = Map:FindFirstChild("Prints")

                if Prints and #Prints:GetChildren() > 0 then
                    t1.value90(3, true)
                end
            end
        end

        if not t1.value88[4].state and t1.value6:FindFirstChild("SLS_GHOST") then
            t1.value90(4, true)
        end

        if not t1.value88[5].state then
            local Map = t1.value6:FindFirstChild("Map")

            if Map then
                local Items = Map:FindFirstChild("Items")
                local GetChildren = Items.GetChildren

                for _, v in ipairs(GetChildren(Items)) do
                    if v.Name == "Ghost Writing Book" and v.Written.Value then
                        t1.value90(5, true)
                    end
                end
            end
        end

        if not t1.value88[6].state then
            local v271 = timestamp - t1.value91.lastSpiritBoxCheck > t1.value91.cacheTTL

            if not v271 then
                v271 = #t1.value91.spiritBoxCache == 0
            end

            if v271 then
                t1.value91.spiritBoxCache = {}
                t1.value91.lastSpiritBoxCheck = timestamp

                local Map = t1.value6:FindFirstChild("Map")

                if Map then
                    Map = t1.value6.Map:FindFirstChild("Items")
                end

                if Map then
                    for _, child in ipairs(Map:GetChildren()) do
                        if child.Name == "Spirit Box" then
                            table.insert(t1.value91.spiritBoxCache, child)
                        end
                    end
                end

                local players = t1.value4:GetPlayers()

                for _, v in ipairs(players) do
                    local Character = v.Character

                    if Character then
                        local v279 = Character:FindFirstChild("Spirit Box")

                        if v279 then
                            table.insert(t1.value91.spiritBoxCache, v279)
                        end
                    end
                end
            end

            local v280 = false

            for i = 1, #t1.value91.spiritBoxCache do
                local v282 = i
                local v283 = t1.value91.spiritBoxCache[v282]

                if v283 and v283.Parent ~= nil then
                    local Handle = v283:FindFirstChild("Handle")

                    if Handle then
                        local n4 = 0
                        local GetChildren = Handle.GetChildren

                        for _, v in ipairs(GetChildren(Handle)) do
                            if not v:IsA("Sound") then
                                continue
                            end

                            n4 += 1

                            if n4 > 2 then
                                v280 = true

                                break
                            end
                        end

                        if v280 then
                            break
                        end
                    end
                else
                    t1.value91.spiritBoxCache[v282] = nil
                end
            end

            if v280 then
                t1.value90(6, true)
            end
        end

        if not t1.value88[7].state then
            local v289 = timestamp - t1.value91.lastEMFCheck > t1.value91.cacheTTL

            if not v289 then
                v289 = #t1.value91.emfCache == 0
            end

            if v289 then
                t1.value91.emfCache = {}
                t1.value91.lastEMFCheck = timestamp

                local Map = t1.value6:FindFirstChild("Map")

                if Map then
                    Map = t1.value6.Map:FindFirstChild("Items")
                end

                if Map then
                    local GetChildren = Map.GetChildren

                    for _, v in ipairs(GetChildren(Map)) do
                        if v.Name == "EMF Reader" then
                            table.insert(t1.value91.emfCache, v)
                        end
                    end
                end

                local players = t1.value4:GetPlayers()

                for _, v in ipairs(players) do
                    local Character = v.Character

                    if Character then
                        local v298 = Character:FindFirstChild("EMF Reader")

                        if v298 then
                            table.insert(t1.value91.emfCache, v298)
                        end
                    end
                end
            end

            local v299 = false

            for i = 1, #t1.value91.emfCache do
                local v301 = i
                local v302 = t1.value91.emfCache[v301]

                if v302 and v302.Parent ~= nil then
                    local v303 = v302:FindFirstChild("5")

                    if v303 then
                        v303 = v303.Material == Enum.Material.Neon
                    end

                    if not v303 then
                        continue
                    end

                    v299 = true

                    break
                end

                t1.value91.emfCache[v301] = nil
            end

            if v299 then
                t1.value90(7, true)
            end
        end

        task.wait(0.0028571428571429)
    end
    if not t1.value87 and t1.value89 then
        t1.value89:Destroy()
    end
end
t1.value93 = v8:CreateWindow({
	name = "Pleiadex - Blair v1.8",
	theme = "amethyst",
	configuration = {
		autoSave = true,
		autoLoad = true,
		fileName = "BlairConfig",
		customFolder = "PleiadexConfigs"
	}
})
function EvidenceNotify(p12, p13, p14)
    local v307 = p14 or 3

    if not p13 then
        p13 = ""
    end

    t1.value93:Notify({
		title = p12,
		content = p13,
		duration = v307
	})
end
local v16 = t1.value93:CreateTab({
	name = "Misc",
	icon = 4483362458
})
v16:CreateSection({
	name = "Misc",
	icon = 0
})
v16:CreateToggle({
	name = "Fullbright",
	value = false,
	flag = "Fullbright",
	callback = function(p15)
    t1.value9 = p15
    t1.value70()
end
})
v16:CreateToggle({
	name = "Infinite Stamina",
	value = false,
	flag = "InfStamina",
	callback = function(p16)
    t1.value71 = p16

    if t1.value71 then
        coroutine.wrap(t1.value79)()

        return
    end

    t1.value72 = 12
    SpeedSlider:Set(12)
end
})
SpeedSlider = v16:CreateSlider({
	name = "Sprint Speed (Default = 12)",
	range = {
		6,
		50
	},
	increment = 1,
	suffix = "Speed",
	value = 12,
	flag = "SpeedSlider",
	callback = function(p17)
    t1.value72 = p17
end
})
v16:CreateToggle({
	name = "Remove Hiding Spots Blockage",
	value = false,
	flag = "RemoveBlockage",
	callback = function(p18)
    t1.value65 = p18

    if t1.value65 then
        coroutine.wrap(t1.value67)()
    end
end
})
v16:CreateToggle({
	name = "Remove Jumpscare",
	value = false,
	flag = "RemoveJumpscare",
	callback = function(p19)
    t1.value30 = p19

    if t1.value30 then
        coroutine.wrap(t1.value32)()
    end
end
})
v16:CreateToggle({
	name = "Clip Through Doors",
	value = false,
	flag = "ClipDoors",
	callback = function(p20)
    t1.value5 = p20

    if t1.value5 then
        coroutine.wrap(t1.value68)()
    end
end
})
v16:CreateToggle({
	name = "Notify Ghost Hunts",
	value = false,
	flag = "NotifyHunt",
	callback = function(p21)
    t1.value37 = p21

    if t1.value37 then
        coroutine.wrap(t1.value57)()
    end
end
})
v16:CreateToggle({
	name = "Ghost Info GUI (New)",
	value = false,
	flag = "GhostInfoGui",
	callback = function(p22)
    t1.value35 = p22

    if t1.value35 then
        coroutine.wrap(v14)()
    end
end
})
local v17 = t1.value93:CreateTab({
	name = "ESP",
	icon = 0
})
v17:CreateSection({
	name = "ESP",
	icon = 0
})
v17:CreateToggle({
	name = "Esp Ghost",
	value = false,
	flag = "EspGhost",
	callback = function(p23)
    t1.value1 = p23

    if t1.value1 then
        coroutine.wrap(t1.value81)()
    end
end
})
v17:CreateToggle({
	name = "Esp Ghost Room",
	value = false,
	flag = "EspGhostRoom",
	callback = function(p24)
    t1.value3 = p24

    if t1.value3 then
        coroutine.wrap(t1.value83)()

        return
    end

    if t1.value2 then
        t1.value2:Destroy()
    end
end
})
v17:CreateToggle({
	name = "Esp Cursed Object",
	value = false,
	flag = "EspCurse",
	callback = function(p25)
    t1.value59 = p25

    if t1.value59 then
        coroutine.wrap(t1.value84)()

        return
    end

    if t1.value38 then
        t1.value38:Destroy()
    end
end
})
v17:CreateToggle({
	name = "Esp BooBooDoll",
	value = false,
	flag = "EspDoll",
	callback = function(p26)
    t1.value60 = p26

    if t1.value60 then
        coroutine.wrap(t1.value85)()

        return
    end

    if t1.value82 then
        t1.value82:Destroy()
    end
end
})
v17:CreateToggle({
	name = "Esp Players",
	value = false,
	flag = "EspPlayers",
	callback = function(p27)
    t1.value44 = p27

    if t1.value44 then
        coroutine.wrap(t1.value69)()
    end
end
})
v17:CreateToggle({
	name = "Esp Players Inventory",
	value = false,
	flag = "EspInventory",
	callback = function(p28)
    t1.value23 = p28

    if t1.value23 then
        coroutine.wrap(v9)()
    end
end
})
v17:CreateToggle({
	name = "Esp Hiding Spots",
	value = false,
	flag = "EspHiding",
	callback = function(p29)
    t1.value27 = p29

    if t1.value27 then
        coroutine.wrap(t1.value86)()
    end
end
})
local v18 = t1.value93:CreateTab({
	name = "Manual",
	icon = 0
})
v18:CreateSection({
	name = "Manual TP with Keybinds",
	icon = 0
})
t1.value94 = false
v18:CreateToggle({
	name = "Manual TP",
	value = false,
	flag = "ManualTP",
	callback = function(p30)
    t1.value39 = p30

    if t1.value39 then
        if t1.value10.TouchEnabled then
            manualTPButtons()
        end

        t1.value94 = true

        return
    end

    t1.value94 = false

    if t1.value58 then
        t1.value58:Destroy()
    end
end
})
v18:CreateKeybind({
	name = "Save TP Anchor Keybind (Only for PC)",
	value = "Z",
	flag = "SaveTPKeybind",
	callback = function(_)
    if t1.value94 then
        t1.value61("save")
    end
end
})
v18:CreateKeybind({
	name = "Teleport Keybind (Only for PC)",
	value = "X",
	flag = "TPKeybind",
	callback = function(_)
    if t1.value94 then
        t1.value61("tp")
    end
end
})
v18:CreateSection({
	name = "Unkillable with Keybind (Recommend: Turn Off Auto TP)",
	icon = 0
})
t1.value95 = false
v18:CreateToggle({
	name = "Unkillable (off by default)",
	value = false,
	flag = "UnkillableToggle",
	callback = function(p33)
    t1.value63 = p33
    t1.value13 = p33

    if t1.value13 then
        if t1.value10.TouchEnabled then
            unkillableButton()
        end

        t1.value95 = true
        t1.value13 = false

        return
    end

    t1.value95 = false

    if t1.value62 then
        t1.value62:Destroy()
    end
end
})
v18:CreateKeybind({
	name = "Unkillable Keybind (Only for PC)",
	value = "C",
	flag = "UnkillableKeybind",
	description = "Avoid Stairs!. Even with unkillable on the ghost could kill you if you are in stairs.",
	callback = function(_)
    if t1.value95 then
        t1.value13 = not t1.value13

        if t1.value13 then
            coroutine.wrap(t1.value64)()
        end
    end
end
})
local v19 = t1.value93:CreateTab({
	name = "Auto",
	icon = 0
})
v19:CreateSection({
	name = "Auto",
	icon = 0
})
v19:CreateToggle({
	name = "Evidence GUI (Auto All Evidence)",
	value = false,
	flag = "AutoEvidence",
	callback = function(p35)
    t1.value87 = p35

    if t1.value87 then
        coroutine.wrap(t1.value92)()
    end
end
})
v19:CreateToggle({
	name = "Auto TP (TP outside when the hunting ghost is near)",
	value = false,
	flag = "AutoTp",
	callback = function(p36)
    t1.value8 = p36

    if t1.value8 then
        coroutine.wrap(t1.value80)()

        return
    end

    t1.value48 = 20
    AutoTpSlider:Set(20)
end
})
AutoTpSlider = v19:CreateSlider({
	name = "Distance (Default = 20)",
	range = {
		16,
		30
	},
	increment = 1,
	suffix = "Radius",
	value = 20,
	flag = "DistanceSlider",
	callback = function(p37)
    t1.value48 = p37
end
})
v19:CreateSection({
	name = "Auto Unkillable (Recommend: Turn Off Manual Unkillable)",
	icon = 0
})
v19:CreateToggle({
	name = "Auto Unkillable (Triggers when hunting ghost is near)",
	value = false,
	flag = "AutoUnkillable",
	callback = function(p38)
    t1.value54 = p38

    if t1.value54 then
        coroutine.wrap(t1.value56)()

        return
    end

    t1.value51 = 20
    UnkillableSlider:Set(20)
end
})
UnkillableSlider = v19:CreateSlider({
	name = "Distance (Default = 20)",
	range = {
		15,
		30
	},
	increment = 1,
	suffix = "Radius",
	value = 20,
	flag = "UnkillableSlider",
	description = "Avoid Stairs!. Even with unkillable on the ghost could kill you if you are in stairs.",
	callback = function(p39)
    t1.value51 = p39
end
})
