-- This file was generated at discord.gg/syncrypt

local t1 = {}
local t2 = {}
local v3 = unpack or table.unpack
local Players = game:GetService("Players")

t2.value1 = game:GetService("RunService")
t2.value2 = game:GetService("Workspace")
t2.value3 = game:GetService("UserInputService")
t2.value4 = game:GetService("ReplicatedStorage")
t2.value5 = game:GetService("TweenService")
t2.value6 = game:GetService("ContextActionService")
t2.value7 = game:GetService("Lighting")
t2.value8 = Players.LocalPlayer
t2.value9 = t2.value2.CurrentCamera
t2.value8:GetMouse()
local Weapons = t2.value4:WaitForChild("Database"):WaitForChild("Custom"):WaitForChild("Weapons")
local t3 = {
	AWP = true,
	["SSG 08"] = true,
	G3SG1 = true,
	["SCAR-20"] = true
}
t2.value10 = {}
for _, child in ipairs(Weapons:GetChildren()) do
    if child:IsA("ModuleScript") then
        local ok, result = pcall(require, child)

        if ok then
            ok = type(result) == "table"
        end

        if ok then
            setreadonly(result, false)

            local WalkSpeed = result.WalkSpeed
            local Spread = result.Spread

            if Spread then
                local SpreadRange = result.Spread.Range
                local PerShot = result.Spread.PerShot
                local MovementMultiplier = result.Spread.MovementMultiplier

                t1.value2 = result.Spread.JumpShotMinimum
                Spread = {
					Range = SpreadRange,
					PerShot = PerShot,
					MovementMultiplier = MovementMultiplier,
					JumpShotMinimum = t1.value2
				}
            end

            local v16 = Spread or nil
            local t4 = {
				WalkSpeed = WalkSpeed,
				Spread = v16,
				FireModes = {}
			}

            if result.FireModes then
                for k, v in pairs(result.FireModes) do
                    if v.Spread then
                        local FireModes = t4.FireModes
                        local SpreadRange = v.Spread.Range
                        local PerShot = v.Spread.PerShot

                        t1.value1 = v.Spread.MovementMultiplier
                        t1.value3 = v.Spread.JumpShotMinimum
                        FireModes[k] = {
							Spread = {
								Range = SpreadRange,
								PerShot = PerShot,
								MovementMultiplier = t1.value1,
								JumpShotMinimum = t1.value3
							}
						}
                    end
                end
            end

            local value10 = t2.value10
            local childName = child.Name
            local v25 = t3[child.Name] or false

            value10[childName] = {
				Data = result,
				Original = t4,
				IsSniper = v25
			}
            setreadonly(result, true)
        end
    end
end
local s1 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
t2.value11 = loadstring(game:HttpGet(s1 .. "Library.lua"))()
local v27 = loadstring(game:HttpGet(s1 .. "addons/ThemeManager.lua"))()
local v28 = loadstring(game:HttpGet(s1 .. "addons/SaveManager.lua"))()
t2.value12 = t2.value11.Options
t2.value13 = t2.value11.Toggles
local v29 = t2.value11:CreateWindow({
	Title = "ThegxxHub",
	Center = true,
	AutoShow = true,
	Resizable = true,
	ShowCustomCursor = true
})
v29:SetCornerRadius(8)

local v30 = v29:AddTab("Combat", "swords")
local v31 = v29:AddTab("ESP", "eye")
local v32 = v29:AddTab("Skins", "palette")
local v33 = v29:AddTab("Viewmodel", "camera")
local v34 = v29:AddTab("Misc", "zap")
local v35 = v29:AddTab("Settings", "settings")
local t5 = {
	Combat = v30,
	ESP = v31,
	Skins = v32,
	Viewmodel = v33,
	Misc = v34,
	Settings = v35
}
local t6 = {
	"Plastic",
	"SmoothPlastic",
	"Neon",
	"ForceField",
	"Glass",
	"Foil",
	"Metal",
	"Wood",
	"Marble",
	"Fabric"
}
local v38 = t5.Combat:AddLeftGroupbox("Aimbot Assist (Smooth)")

v38:AddToggle("AimbotEnabled", {
	Text = "Enable Smooth Aim",
	Default = false
})
v38:AddLabel("Aim Key"):AddKeyPicker("AimbotKey", {
	Default = "E",
	Mode = "Hold",
	Text = "Aim"
})
v38:AddDropdown("AimbotTargetPart", {
	Values = {
		"Head",
		"HumanoidRootPart"
	},
	Default = 1,
	Text = "Target"
})
v38:AddSlider("AimbotSmoothing", {
	Text = "Smoothing",
	Default = 3,
	Min = 1,
	Max = 10,
	Rounding = 1
})
t5.Combat:AddLeftGroupbox("Aimbot Checkers"):AddToggle("AimbotWallCheck", {
	Text = "Wall Check (Visibility)",
	Default = true
})
local v39 = t5.Combat:AddLeftGroupbox("Field of View (FOV)")

v39:AddToggle("ShowFOV", {
	Text = "Show FOV Circle",
	Default = false
}):AddColorPicker("ColorFOV", {
	Default = Color3.fromRGB(220, 20, 60),
	Title = "FOV Color"
})
v39:AddSlider("FOVRadius", {
	Text = "FOV Radius",
	Default = 100,
	Min = 10,
	Max = 500,
	Rounding = 1
})
local v40 = t5.Combat:AddLeftGroupbox("Anti-Aim System")

v40:AddToggle("AAEnabled", {
	Text = "Enable Anti-Aim",
	Default = false
})
v40:AddDropdown("AAYaw", {
	Text = "Yaw Angle (X/Z)",
	Values = {
		"Spinbot",
		"Jitter",
		"Backward",
		"Sideways"
	},
	Default = 1
})
v40:AddSlider("AASpeed", {
	Text = "Spin Speed",
	Default = 50,
	Min = 10,
	Max = 150,
	Rounding = 0
})
local v41 = t5.Combat:AddRightGroupbox("TriggerBot")

v41:AddToggle("TriggerBotEnabled", {
	Text = "Enable TriggerBot",
	Default = false
})
v41:AddSlider("TriggerBotDelay", {
	Text = "Shot Delay (ms)",
	Default = 0,
	Min = 0,
	Max = 500,
	Rounding = 0,
	Suffix = "ms"
})
local v42 = t5.Combat:AddRightGroupbox("Combat Exploits")

v42:AddToggle("HitboxEnabled", {
	Text = "Expand Hitboxes",
	Default = false
})
v42:AddSlider("HitboxSize", {
	Text = "Hitbox Size",
	Default = 3,
	Min = 1,
	Max = 3,
	Rounding = 1
})
v42:AddSlider("HitboxTransparency", {
	Text = "Hitbox Transparency",
	Default = 100,
	Min = 0,
	Max = 100,
	Rounding = 0,
	Suffix = "%"
})
t5.Combat:AddRightGroupbox("Gun Mechanics"):AddToggle("NoSpreadNonSnipers", {
	Text = "No Spread (Except Snipers)",
	Default = false,
	Tooltip = "Activates Laser Mode on everything except AWP/Scout."
})
local v43 = t5.ESP:AddLeftGroupbox("Visual Settings")

v43:AddToggle("EnableESP", {
	Text = "Enable Master ESP",
	Default = false
})
local v44 = v43:AddToggle("ESP_WallCheck", {
	Text = "Change Color if Visible",
	Default = false
})
t1.value2 = Color3.fromRGB(0, 255, 0)
v44:AddColorPicker("Color_ESP_Visible", {
	Default = t1.value2,
	Title = "Visible Color"
})
v43:AddDivider()
local v45 = v43:AddToggle("ESP_Box", {
	Text = "Show Box",
	Default = true
})
t1.value2 = Color3.fromRGB(220, 20, 60)
v45:AddColorPicker("Color_ESP_Box", {
	Default = t1.value2,
	Title = "Hidden Color"
})
local v46 = v43:AddToggle("ESP_Name", {
	Text = "Show Name",
	Default = true
})
t1.value2 = Color3.fromRGB(255, 255, 255)
v46:AddColorPicker("Color_ESP_Name", {
	Default = t1.value2,
	Title = "Name Color"
})
local v47 = v43:AddToggle("ESP_Skeleton", {
	Text = "Show Skeleton",
	Default = false
})
t1.value2 = Color3
local AddColorPicker = v47.AddColorPicker
t1.value2 = t1.value2.fromRGB(255, 255, 255)
AddColorPicker(v47, "Color_ESP_Skeleton", {
	Default = t1.value2,
	Title = "Skeleton Color"
})
local v49 = v43:AddToggle("ESP_Chams", {
	Text = "Show Chams",
	Default = false
})
t1.value2 = Color3
local AddColorPicker2 = v49.AddColorPicker
t1.value2 = t1.value2.fromRGB(220, 20, 60)
AddColorPicker2(v49, "Color_ESP_Chams", {
	Default = t1.value2,
	Title = "Chams Color"
})
v43:AddToggle("ESP_Bar", {
	Text = "Show Health Bar",
	Default = true
})
v43:AddToggle("ESP_Text", {
	Text = "Show Health (Text)",
	Default = true
})
t5.Viewmodel:AddLeftGroupbox("Master"):AddToggle("EnableVM", {
	Text = "Enable Viewmodel Colors",
	Default = false
})
local v51 = t5.Viewmodel:AddLeftGroupbox("Weapon")

v51:AddLabel("Color"):AddColorPicker("Color_Weapon", {
	Default = Color3.fromRGB(220, 20, 60)
})
v51:AddDropdown("Mat_Weapon", {
	Values = t6,
	Default = 3
})
local v52 = t5.Viewmodel:AddLeftGroupbox("Arms")

v52:AddLabel("Color"):AddColorPicker("Color_Arms", {
	Default = Color3.fromRGB(255, 255, 255)
})
v52:AddDropdown("Mat_Arms", {
	Values = t6,
	Default = 2
})
local v53 = t5.Viewmodel:AddRightGroupbox("Gloves")
local v54 = v53:AddLabel("Color")
local _Color3 = Color3
t1.value1 = v54.AddColorPicker
local v56 = _Color3.fromRGB(20, 20, 20)

t1.value1(v54, "Color_Gloves", {
	Default = v56
})
v53:AddDropdown("Mat_Gloves", {
	Values = t6,
	Default = 2
})
t1.value1 = t5.Viewmodel:AddRightGroupbox("Sleeves")

local v57 = t1.value1:AddLabel("Color")
local _Color3_2 = Color3
t1.value2 = v57.AddColorPicker
local v59 = _Color3_2.fromRGB(40, 40, 40)

t1.value2(v57, "Color_Sleeves", {
	Default = v59
})
t1.value1:AddDropdown("Mat_Sleeves", {
	Values = t6,
	Default = 2
})
t5.Misc:AddLeftGroupbox("Utilities"):AddToggle("BunnyHop", {
	Text = "Perfect Bunny Hop",
	Default = false
})
t1.value3 = t5.Misc:AddLeftGroupbox("World & Effects")
t1.value3:AddToggle("AntiFlashToggle", {
	Text = "Anti-Flashbang",
	Default = false
})
t1.value3:AddToggle("AntiSmokeToggle", {
	Text = "Anti-Smoke",
	Default = false
})
local v60 = t5.Misc:AddRightGroupbox("Movement Mods")

v60:AddToggle("WalkSpeedMod", {
	Text = "Enable Super Speed",
	Default = false
})
v60:AddSlider("SpeedSlider", {
	Text = "Target Speed",
	Default = 60,
	Min = 16,
	Max = 150,
	Rounding = 1,
	Suffix = " studs"
})
local v61 = t5.Misc:AddRightGroupbox("Camera Mods (Third Person)")

v61:AddToggle("TPEnabled", {
	Text = "Enable Third Person",
	Default = false
}):AddKeyPicker("TPKey", {
	Default = "V",
	SyncToggleState = true,
	Mode = "Toggle",
	Text = "Third Person"
})
v61:AddToggle("TPHideVM", {
	Text = "Hide Viewmodel in TP",
	Default = true
})
v61:AddSlider("TPDistance", {
	Text = "Camera Distance",
	Default = 10,
	Min = 5,
	Max = 30,
	Rounding = 1
})
v61:AddSlider("TPOffsetX", {
	Text = "Shoulder Offset",
	Default = 2,
	Min = -5,
	Max = 5,
	Rounding = 1
})
function t2.value14(p1, p2, p3)
    if not p1 or not p2 then
        return
    end

    pcall(setreadonly, p1, false)

    if p3 then
        if p1.Range then
            p1.Range = NumberRange.new(0, 0)
        end

        if p1.PerShot then
            p1.PerShot = 0
        end

        if p1.MovementMultiplier then
            p1.MovementMultiplier = 0
        end

        if p1.JumpShotMinimum then
            p1.JumpShotMinimum = 0
        end
    else
        if p1.Range then
            p1.Range = p2.Range
        end

        if p1.PerShot then
            p1.PerShot = p2.PerShot
        end

        if p1.MovementMultiplier then
            p1.MovementMultiplier = p2.MovementMultiplier
        end

        if p1.JumpShotMinimum then
            p1.JumpShotMinimum = p2.JumpShotMinimum
        end
    end

    pcall(setreadonly, p1, true)
end
t2.value13.NoSpreadNonSnipers:OnChanged(function(p4)

    for v104, v105 in pairs(t2.value10) do

        if not v105.IsSniper then
            setreadonly(v105.Data, false)

            local Spread = v105.Data.Spread

            if Spread then
                Spread = v105.Original.Spread
            end

            if Spread then
                t2.value14(v105.Data.Spread, v105.Original.Spread, p4)
            end

            if v105.Data.FireModes then
                for k, v in pairs(v105.Data.FireModes) do
                    local v109 = k
                    local Spread2 = v.Spread

                    if Spread2 then
                        Spread2 = v105.Original.FireModes[v109]

                        if Spread2 then
                            Spread2 = v105.Original.FireModes[v109].Spread
                        end
                    end

                    if Spread2 then
                        t2.value14(v.Spread, v105.Original.FireModes[v109].Spread, p4)
                    end
                end
            end

            setreadonly(v105.Data, true)
        end
    end
end)

local function v62()
    local WalkSpeedModValue = t2.value13.WalkSpeedMod.Value
    local SpeedSliderValue = t2.value12.SpeedSlider.Value

    for _, v in pairs(t2.value10) do
        if v.Original.WalkSpeed then
            setreadonly(v.Data, false)

            local Data = v.Data
            local v116 = WalkSpeedModValue and SpeedSliderValue

            if not v116 then
                v116 = v.Original.WalkSpeed
            end

            Data.WalkSpeed = v116
            setreadonly(v.Data, true)
        end
    end
end
t2.value13.WalkSpeedMod:OnChanged(v62)
t2.value12.SpeedSlider:OnChanged(function()
    if t2.value13.WalkSpeedMod.Value then
        v62()
    end
end)

local Characters = t2.value2:WaitForChild("Characters", 10)

t2.value15 = nil
t2.value15 = Characters
function t2.value16()
    local value15 = t2.value15

    if value15 then
        value15 = t2.value15:FindFirstChild("Terrorists")
    end

    return value15
end
t2.value17 = nil
function t2.value17()
    local v125 = t2.value16()
    local value15 = t2.value15

    if value15 then
        value15 = t2.value15:FindFirstChild("Counter-Terrorists")
    end

    if v125 then
        v125 = v125:FindFirstChild(t2.value8.Name)
    end

    if not v125 then
        if value15 then
            value15 = value15:FindFirstChild(t2.value8.Name)
        end

        v125 = value15
    end

    return v125
end
function t2.value18()
    if not t2.value17() then
        return nil
    end

    local v127 = t2.value16()
    local value15 = t2.value15

    if value15 then
        value15 = t2.value15:FindFirstChild("Counter-Terrorists")
    end

    local v129 = v127

    if v127 then
        v129 = v127:FindFirstChild(t2.value8.Name)
    end

    if v129 then
        return value15
    end

    if value15 then
        value15 = value15:FindFirstChild(t2.value8.Name)
    end

    if value15 then
        return v127
    end

    return nil
end
function t2.value19(p5)
    local Humanoid = p5:FindFirstChildOfClass("Humanoid")

    if Humanoid then
        return Humanoid.Health, Humanoid.MaxHealth
    end

    return 100, 100
end
function t2.value20(p6, p7)
    local CFramePosition = t2.value9.CFrame.Position
    local v120 = p6.Position - CFramePosition
    local t7 = { t2.value9 }

    if t2.value8.Character then
        table.insert(t7, t2.value8.Character)
    end

    if p7 then
        table.insert(t7, p7)
    end

    local raycastParams = RaycastParams.new()

    raycastParams.FilterType = Enum.RaycastFilterType.Exclude
    raycastParams.FilterDescendantsInstances = t7

    return t2.value2:Raycast(CFramePosition, v120, raycastParams) == nil
end
t2.value21 = {}
t2.value22 = {}
task.spawn(function()
    while task.wait(0.2) do
        local v132 = t2.value18()

        if v132 then
            for _, child in ipairs(v132:GetChildren()) do
                local Head = child:FindFirstChild("Head")
                local Humanoid = child:FindFirstChildOfClass("Humanoid")
                local v137 = Head

                if Head then
                    v137 = Humanoid and Humanoid.Health > 0
                end

                if v137 then
                    if not t2.value21[Head] then
                        t2.value21[Head] = Head.Size
                    end

                    local HitboxEnabled = t2.value13.HitboxEnabled

                    if HitboxEnabled then
                        HitboxEnabled = t2.value13.HitboxEnabled.Value
                    end

                    if HitboxEnabled then
                        local HitboxSizeValue = t2.value12.HitboxSize.Value
                        local v140 = t2.value12.HitboxTransparency.Value / 100
                        local v141 = not t2.value22[Head]

                        if not v141 then
                            v141 = not t2.value22[Head].Parent
                        end

                        if v141 then
                            local Part = Instance.new("Part")

                            Part.Name = "ThegxxFakeHead"
                            Part.Size = t2.value21[Head]
                            Part.CFrame = Head.CFrame
                            Part.Color = Head.Color
                            Part.Material = Head.Material
                            Part.Transparency = 0
                            Part.CanCollide = false
                            Part.Massless = true
                            Part.CastShadow = false

                            local face = Head:FindFirstChild("face")

                            if not face then
                                face = Head:FindFirstChildOfClass("Decal")
                            end

                            if face then
                                face:Clone().Parent = Part
                            end

                            local WeldConstraint = Instance.new("WeldConstraint")

                            WeldConstraint.Part0 = Head
                            WeldConstraint.Part1 = Part
                            WeldConstraint.Parent = Part
                            Part.Parent = child
                            t2.value22[Head] = Part
                        end

                        Head.Size = Vector3.new(HitboxSizeValue, HitboxSizeValue, HitboxSizeValue)
                        Head.CanCollide = false
                        Head.Transparency = v140

                        local GetChildren = Head.GetChildren

                        for _, v in ipairs(GetChildren(Head)) do
                            if v:IsA("Decal") then
                                v.Transparency = 1
                            end
                        end
                    else
                        if t2.value21[Head] and Head.Size ~= t2.value21[Head] then
                            Head.Size = t2.value21[Head]
                            Head.Transparency = 0

                            local GetChildren = Head.GetChildren

                            for _, v in ipairs(GetChildren(Head)) do
                                if v:IsA("Decal") then
                                    v.Transparency = 0
                                end
                            end
                        end

                        if t2.value22[Head] then
                            t2.value22[Head]:Destroy()
                            t2.value22[Head] = nil
                        end
                    end
                end
            end
        end
    end
end)
task.spawn(function()
    while task.wait(0.01) do
        local TriggerBotEnabled = t2.value13.TriggerBotEnabled

        if TriggerBotEnabled then
            TriggerBotEnabled = t2.value13.TriggerBotEnabled.Value and t2.value17()
        end

        if TriggerBotEnabled then
            local ViewportSize = t2.value9.ViewportSize
            local v153 = t2.value9:ViewportPointToRay(ViewportSize.X / 2, ViewportSize.Y / 2)
            local raycastParams = RaycastParams.new()

            raycastParams.FilterType = Enum.RaycastFilterType.Exclude

            local t8 = { t2.value9 }

            if t2.value8.Character then
                table.insert(t8, t2.value8.Character)
            end

            raycastParams.FilterDescendantsInstances = t8

            local raycastResult = t2.value2:Raycast(v153.Origin, v153.Direction * 1000, raycastParams)

            if raycastResult and raycastResult.Instance then
                local Model = raycastResult.Instance:FindFirstAncestorOfClass("Model")
                local v158 = Model

                if Model then
                    v158 = Model:FindFirstChildOfClass("Humanoid")
                end

                if v158 then
                    local v159 = t2.value18()

                    if v159 and v159 == Model.Parent then
                        local Humanoid = Model:FindFirstChildOfClass("Humanoid")

                        if Humanoid and Humanoid.Health > 0 then
                            local TriggerBotDelayValue = t2.value12.TriggerBotDelay.Value

                            if TriggerBotDelayValue > 0 then
                                task.wait(TriggerBotDelayValue / 1000)
                            end

                            if t2.value9:FindFirstChild("R8 Revolver") then
                                if not t2.value13.NoSpreadNonSnipers.Value then
                                    t2.value13.NoSpreadNonSnipers:SetValue(true)
                                end

                                if mouse2click then
                                    mouse2click()
                                end
                            elseif mouse1click then
                                mouse1click()
                            end

                            task.wait(0.05)
                        end
                    end
                end
            end
        end
    end
end)
t2.value23 = Drawing.new("Circle")
t2.value23.Filled = false
t2.value23.Thickness = 1
t2.value23.Visible = false
local function v64()
    local v162
    local FOVRadiusValue = t2.value12.FOVRadius.Value
    local v164 = t2.value18()
    local v165 = not v164
    if not v165 then
        v165 = not t2.value13.AimbotEnabled.Value
    end
    if v165 then
        return nil
    end
    local MouseLocation = t2.value3:GetMouseLocation()
    local AimbotTargetPartValue = t2.value12.AimbotTargetPart.Value
    local GetChildren = v164.GetChildren
    for _, v in ipairs(GetChildren(v164)) do
        local Humanoid = v:FindFirstChildOfClass("Humanoid")
        local AimbotTargetPartValue2 = v:FindFirstChild(AimbotTargetPartValue)

        if not AimbotTargetPartValue2 then
            AimbotTargetPartValue2 = v:FindFirstChild("Head")
        end

        if Humanoid and (Humanoid.Health > 0 and AimbotTargetPartValue2) and (not t2.value13.AimbotWallCheck.Value or t2.value20(AimbotTargetPartValue2, v)) then
            local v173, v174 = t2.value9:WorldToViewportPoint(AimbotTargetPartValue2.Position)

            if v174 then
                local Magnitude = (Vector2.new(v173.X, v173.Y) - MouseLocation).Magnitude

                if Magnitude < FOVRadiusValue then
                    v162 = AimbotTargetPartValue2
                    FOVRadiusValue = Magnitude
                end
            end
        end
    end

    return v162
end
t2.value24 = t2.value4:WaitForChild("Assets"):WaitForChild("Skins")
t2.value25 = false
t2.value26 = {}
t2.value27 = {}
local t9 = {
	["USP-S"] = true,
	["Five-SeveN"] = true,
	MP9 = true,
	FAMAS = true,
	["M4A1-S"] = true,
	M4A4 = true,
	AUG = true,
	["MAG-7"] = true,
	["SCAR-20"] = true,
	MP7 = true
}
local t10 = {
	["Glock-18"] = true,
	["Tec-9"] = true,
	["MAC-10"] = true,
	["Galil AR"] = true,
	["AK-47"] = true,
	["SG 553"] = true,
	["Sawed-Off"] = true,
	G3SG1 = true
}
local t11 = {
	P250 = true,
	["Desert Eagle"] = true,
	["Dual Berettas"] = true,
	["R8 Revolver"] = true,
	Negev = true,
	M249 = true,
	P90 = true,
	["UMP-45"] = true,
	["PP-Bizon"] = true,
	Nova = true,
	XM1014 = true,
	AWP = true,
	["SSG 08"] = true,
	["Zeus x27"] = true
}
local t12 = {
	Karambit = true,
	["Butterfly Knife"] = true,
	["M9 Bayonet"] = true,
	["Flip Knife"] = true,
	["Gut Knife"] = true,
	["T Knife"] = true,
	["CT Knife"] = true
}
t2.value28 = {
	["Sports Gloves"] = true
}
local t13 = {
	["HE Grenade"] = true,
	["Incendiary Grenade"] = true,
	Molotov = true,
	["Smoke Grenade"] = true,
	Flashbang = true,
	["Decoy Grenade"] = true,
	C4 = true,
	["CT Glove"] = true,
	["T Glove"] = true
}
local v70 = t5.Skins:AddLeftGroupbox("Master Skin Changer")

v70:AddToggle("SkinChangerToggle", {
	Text = "Enable Skin Changer",
	Default = false,
	Callback = function(p8)
    t2.value25 = p8

    if not p8 then
        for _, child in ipairs(t2.value9:GetChildren()) do
            child:SetAttribute("SkinApplied", nil)
        end
    end
end
})
v70:AddButton({
	Text = "Randomize Skins",
	Func = function()
    for k, v in pairs(t2.value27) do
        local t14 = {}
        local v182, v183, v184 = ipairs(v)
        local v185 = k

        while true do
            local v186

            v184, v186 = v182(v183, v184)

            if not v184 then
                break
            end

            if v186 ~= "Stock" and v186 ~= "Vanilla" then
                table.insert(t14, v186)
            end
        end

        if #t14 > 0 then
            local v187 = t14[math.random(1, #t14)]

            if t2.value12["Skin_" .. v185] then
                t2.value12["Skin_" .. v185]:SetValue(v187)
            end
        end
    end
end
})
local v71 = t5.Skins:AddLeftGroupbox("Custom Knives and Gloves")
local v72 = t5.Skins:AddRightGroupbox("CT Weapons")
local v73 = t5.Skins:AddRightGroupbox("T Weapons")
local v74 = t5.Skins:AddRightGroupbox("Shared Weapons")

function t2.value29(p9)
    local v189 = not p9

    if not v189 then
        v189 = not t2.value25 or not t2.value17()
    end

    if v189 then
        return
    end

    local v190 = t2.value26[p9.Name]

    if not v190 then
        return
    end

    pcall(function()
        local p9Name = t2.value24:FindFirstChild(p9.Name)
        if not p9Name then
            return
        end
        local v436 = p9Name:FindFirstChild(v190)
        if v436 then
            local Camera = v436:FindFirstChild("Camera")

            if Camera then
                Camera = v436.Camera:FindFirstChild("Factory New")
            end

            v436 = Camera
        end
        if not v436 then
            return
        end
        for v440, v441 in ipairs(t2.value9:GetChildren()) do

            if v441:FindFirstChild("Left Arm") or v441:FindFirstChild("Right Arm") then
                local v442 = t2.value24:FindFirstChild("Sports Gloves")

                if v442 then
                    v442 = v442:FindFirstChild(t2.value26["Sports Gloves"] or "")
                end

                if v442 then
                    local Camera = v442:FindFirstChild("Camera")

                    if Camera then
                        Camera = v442.Camera:FindFirstChild("Factory New")
                    end

                    v442 = Camera
                end

                if v442 then
                    for _, v in ipairs({
						"Left Arm",
						"Right Arm"
					}) do
                        local FindFirstChild = v442.FindFirstChild
                        local v2 = v441:FindFirstChild(v)
                        local v448 = FindFirstChild(v442, v)

                        if v2 and v448 then
                            local Glove = v2:FindFirstChild("Glove")

                            if Glove then
                                local SurfaceAppearance = Glove:FindFirstChildOfClass("SurfaceAppearance")

                                if SurfaceAppearance then
                                    SurfaceAppearance:Destroy()
                                end

                                local clone = v448:Clone()

                                clone.Name = "SurfaceAppearance"
                                clone.Parent = Glove
                            end
                        end
                    end
                end
            end
        end
        if not t2.value28[p9.Name] then
            local Weapon = p9:FindFirstChild("Weapon")

            if Weapon then
                for _, descendant in ipairs(Weapon:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        local descendantName = v436:FindFirstChild(descendant.Name)

                        if descendantName then
                            local SurfaceAppearance = descendant:FindFirstChildOfClass("SurfaceAppearance")

                            if SurfaceAppearance then
                                SurfaceAppearance:Destroy()
                            end

                            local clone = descendantName:Clone()

                            clone.Name = "SurfaceAppearance"
                            clone.Parent = descendant
                        end
                    end
                end
            end
        end
        p9:SetAttribute("SkinApplied", v190)
    end)
end
local function v75(p10, p11)
    local p11_2 = t2.value24:FindFirstChild(p11)
    if not p11_2 then
        return
    end
    local GetChildren = p11_2.GetChildren
    local t15 = {}
    for v198, v199 in ipairs(GetChildren(p11_2)) do

        table.insert(t15, v199.Name)
    end
    t2.value27[p11] = t15
    if not t2.value26[p11] then
        t2.value26[p11] = t15[1]
    end
    p10:AddDropdown("Skin_" .. p11, {
		Values = t15,
		Default = 1,
		Multi = false,
		Text = p11,
		Callback = function(p12)
        t2.value26[p11] = p12

        for _, child in ipairs(t2.value9:GetChildren()) do
            child:SetAttribute("SkinApplied", nil)
            t2.value29(child)
        end
    end
	})
end
local v76, v77, v78 = pairs(t12)

t1.value4 = v76
while true do
    v78 = t1.value4(v77, v78)

    if not v78 then
        break
    end

    v75(v71, v78)
end
for k in pairs(t2.value28) do
    v75(v71, k)
end
local v80, v81, v82 = pairs(t9)

t1.value4 = v80
while true do
    v82 = t1.value4(v81, v82)

    if not v82 then
        break
    end

    v75(v72, v82)
end
for k in pairs(t10) do
    v75(v73, k)
end
local v84, v85, v86 = pairs(t11)

t1.value4 = v84
while true do
    v86 = t1.value4(v85, v86)

    if not v86 then
        break
    end

    v75(v74, v86)
end
for _, child in ipairs(t2.value24:GetChildren()) do
    local childName = child.Name
    local v90 = not t13[childName]

    if v90 then
        v90 = not t12[childName]

        if v90 then
            v90 = not t2.value28[childName]

            if v90 then
                v90 = not t9[childName]

                if v90 then
                    v90 = not t10[childName] and not t11[childName]
                end
            end
        end
    end

    if v90 then
        v75(v74, childName)
    end
end
t1.value4 = t2.value9
t1.value4.ChildAdded:Connect(function(child)
    if t2.value25 and t2.value17() then
        task.wait(0.1)
        t2.value29(child)
    end
end)
t2.value30 = false
t2.value31 = "Butterfly Knife"
t2.value32 = false
t2.value33 = false
t2.value34 = false
t2.value35 = 0
t2.value36 = nil
t2.value37 = nil
t2.value38 = nil
t2.value39 = nil
t2.value40 = nil
t2.value41 = nil
t2.value42 = nil
t2.value43 = nil
local t16 = {
	Offset = CFrame.new(0, -1.5, 1.5)
}
local t17 = {
	Offset = CFrame.new(0, -1.5, 1.5)
}
local t18 = {
	Offset = CFrame.new(0, -1.5, 1)
}
local t19 = {
	Offset = CFrame.new(0, -1.5, 1.25)
}
local cFrame = CFrame.new(0, -1.5, 0.5)

t2.value44 = {
	Karambit = t16,
	["Butterfly Knife"] = t17,
	["M9 Bayonet"] = t18,
	["Flip Knife"] = t19,
	["Gut Knife"] = {
		Offset = cFrame
	}
}
function t2.value45()
    local v201 = t2.value9:FindFirstChild("T Knife")

    if not v201 then
        v201 = t2.value9:FindFirstChild("CT Knife")
    end

    return v201
end
function t2.value46(p13)
    if not p13:IsA("BasePart") then
        return
    end

    p13.CanCollide = false
    p13.Anchored = false
    p13.CastShadow = false
    p13.CanTouch = false
    p13.CanQuery = false
end
local function v96(p14, p15, p16, p17, p18)
    local p15_2 = t2.value36:FindFirstChild(p15)

    if not p15_2 then
        return
    end

    local clone = p14:WaitForChild(p16):Clone()

    t2.value46(clone)
    clone.Name = p17
    clone.Parent = p15_2

    local Motor6D = Instance.new("Motor6D")

    Motor6D.Part0 = p15_2
    Motor6D.Part1 = clone
    Motor6D.C0 = p18
    Motor6D.Parent = p15_2
end
function t2.value47()
    t2.value32 = false
    t2.value6:UnbindAction("InspectKnifeAction")
    t2.value6:UnbindAction("AttackKnifeAction")

    if t2.value36 then
        t2.value36:Destroy()
        t2.value36 = nil
    end

    t2.value37 = nil
    t2.value33 = false
    t2.value34 = false
end
function t2.value48(p19, p20)
    local v205 = p20 ~= Enum.UserInputState.Begin

    if not v205 then
        v205 = not t2.value32

        if not v205 then
            v205 = not t2.value37 or not t2.value17()
        end
    end

    if v205 then
        return Enum.ContextActionResult.Pass
    end

    if p19 == "InspectKnifeAction" then
        local value38 = t2.value38

        if value38 then
            value38 = t2.value38.IsPlaying
        end

        if not value38 then
            value38 = t2.value33 or t2.value34
        end

        if value38 then
            return Enum.ContextActionResult.Pass
        end

        t2.value33 = true

        if t2.value39 then
            t2.value39:Stop()
        end

        t2.value40:Play()
        t2.value40.Stopped:Once(function()
            t2.value33 = false
        end)
    elseif p19 == "AttackKnifeAction" then
        local elapsed = os.clock()
        local value38 = t2.value38

        if value38 then
            value38 = t2.value38.IsPlaying
        end

        if not value38 then
            value38 = elapsed - t2.value35 < 1
        end

        if value38 then
            return Enum.ContextActionResult.Pass
        end

        if t2.value33 then
            t2.value33 = false

            if t2.value40 then
                t2.value40:Stop()
            end
        end

        t2.value34 = true

        if t2.value39 then
            t2.value39:Stop()
        end

        local t20 = {
			t2.value41,
			t2.value42,
			t2.value43
		}
        local v210 = t20[math.random(1, #t20)]

        v210:Play()
        v210.Stopped:Once(function()
            t2.value34 = false
        end)
    end

    return Enum.ContextActionResult.Pass
end
function t2.value49(p21)
    local value32 = t2.value32
    if not value32 then
        value32 = not t2.value30
    end
    if value32 then
        return
    end
    local v221 = t2.value17()
    if not v221 then
        return
    end
    t2.value32 = true
    t2.value36 = t2.value4.Assets.Weapons:WaitForChild(t2.value31):WaitForChild("Camera"):Clone()
    local value36 = t2.value36
    local value36_2 = t2.value36
    local value9 = t2.value9
    value36.Name = t2.value31
    value36_2.Parent = value9
    for v227, v228 in ipairs(t2.value36:GetDescendants()) do

        t2.value46(v228)
    end
    for _, descendant in ipairs(p21:GetDescendants()) do
        local v231 = descendant:IsA("BasePart")

        if not v231 then
            v231 = descendant:IsA("MeshPart") or descendant:IsA("Texture")
        end

        if v231 then
            descendant.Transparency = 1
        end
    end
    if v221.Parent.Name == "Terrorists" then
        local v232 = t2.value4.Assets.Weapons:WaitForChild("T Glove")

        v96(v232, "Left Arm", "Left Arm", "Glove", CFrame.new(0, 0, -1.5))
        v96(v232, "Right Arm", "Right Arm", "Glove", CFrame.new(0, 0, -1.5))
    else
        local IDF = t2.value4.Assets.Sleeves:WaitForChild("IDF")
        local v234 = t2.value4.Assets.Weapons:WaitForChild("CT Glove")

        v96(IDF, "Left Arm", "Left Arm", "Sleeve", CFrame.new(0, 0, 0.5))
        v96(v234, "Left Arm", "Left Arm", "Glove", CFrame.new(0, 0, -1.5))
        v96(IDF, "Right Arm", "Right Arm", "Sleeve", CFrame.new(0, 0, 0.5))
        v96(v234, "Right Arm", "Right Arm", "Glove", CFrame.new(0, 0, -1.5))
    end
    local AnimationController = t2.value36:FindFirstChildOfClass("AnimationController")
    if not AnimationController then
        AnimationController = t2.value36:FindFirstChildOfClass("Animator")
    end
    t2.value37 = AnimationController:FindFirstChildWhichIsA("Animator") or AnimationController
    local CameraAnimations = t2.value4.Assets.WeaponAnimations:WaitForChild(t2.value31):WaitForChild("CameraAnimations")
    t2.value38 = t2.value37:LoadAnimation(CameraAnimations:WaitForChild("Equip"))
    local value37 = t2.value37
    local t21 = { CameraAnimations:WaitForChild("Idle") }
    t2.value39 = value37:LoadAnimation(v3(t21))
    local value37_2 = t2.value37
    local t22 = { CameraAnimations:WaitForChild("Inspect") }
    value37_2:LoadAnimation(v3(t22))
    local value37_3 = t2.value37
    local t23 = { CameraAnimations:WaitForChild("Heavy Swing") }
    value37_3:LoadAnimation(v3(t23))
    t2.value37:LoadAnimation(CameraAnimations:WaitForChild("Swing1"))
    local value37_4 = t2.value37
    local t24 = { CameraAnimations:WaitForChild("Swing2") }
    value37_4:LoadAnimation(v3(t24))
    t2.value36:SetPrimaryPartCFrame(t2.value9.CFrame * CFrame.new(0, -1.5, 5))
    t2.value5:Create(t2.value36.PrimaryPart, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		CFrame = t2.value9.CFrame * t2.value44[t2.value31].Offset
	}):Play()
    t2.value38:Play()
    t2.value6:BindAction("InspectKnifeAction", t2.value48, false, Enum.KeyCode.F)
    t2.value6:BindAction("AttackKnifeAction", t2.value48, false, Enum.UserInputType.MouseButton1)
end
v71:AddToggle("CustomKnifeToggle", {
	Text = "Enable Custom Knives",
	Default = false,
	Callback = function(p22)
    t2.value30 = p22

    if not p22 then
        t2.value47()
    end
end
})
v71:AddDropdown("SelectCustomKnife", {
	Values = {
		"Butterfly Knife",
		"Karambit",
		"M9 Bayonet",
		"Flip Knife",
		"Gut Knife"
	},
	Default = 1,
	Callback = function(p23)
    t2.value31 = p23

    if t2.value32 then
        t2.value47()
    end
end
})
v71:AddDivider()
t2.value50 = {}
function t2.value51(p24, p25, p26)
    local v250 = not p24

    if not v250 then
        v250 = not p24:IsA("BasePart")

        if not v250 then
            v250 = p24.Name == "Hitbox"
        end
    end

    if v250 then
        return
    end

    if p25 ~= p24.Color then
        p24.Color = p25
    end

    if p26 ~= p24.Material then
        p24.Material = p26
    end

    local v251 = p24:IsA("MeshPart")

    if v251 then
        v251 = p24.TextureID ~= ""
    end

    if v251 then
        p24.TextureID = ""
    end

    local GetChildren = p24.GetChildren

    for _, v in ipairs(GetChildren(p24)) do
        local v255 = v:IsA("SpecialMesh")

        if v255 then
            v255 = v.TextureId ~= ""
        end

        if v255 then
            v.TextureId = ""
        else
            local v256 = v:IsA("SurfaceAppearance")

            if not v256 then
                v256 = v:IsA("Texture")

                if not v256 then
                    v256 = v:IsA("Decal")
                end
            end

            if v256 then
                local v257 = v:IsA("WeldConstraint")

                if not v257 then
                    v257 = v:IsA("Weld")

                    if not v257 then
                        v257 = v:IsA("ManualWeld")
                    end
                end

                if not v257 then
                    v:Destroy()
                end
            end
        end
    end
end
local function v97(p27, p28, p29, p30, p31, p32, p33)
    if not p27 then
        return
    end

    t2.value51(p27, p28, p29)

    local GetDescendants = p27.GetDescendants

    for _, v in ipairs(GetDescendants(p27)) do
        if v:IsA("BasePart") then
            if v.Name == "Glove" then
                t2.value51(v, p30, p31)
            elseif v.Name == "Sleeve" then
                t2.value51(v, p32, p33)
            else
                t2.value51(v, p28, p29)
            end
        elseif v:IsA("SpecialMesh") then
            v.TextureId = ""
        else
            local v268 = v:IsA("SurfaceAppearance")

            if not v268 then
                v268 = v:IsA("Texture") or v:IsA("Decal")
            end

            if v268 then
                local v269 = v:IsA("WeldConstraint")

                if not v269 then
                    v269 = v:IsA("Weld") or v:IsA("ManualWeld")
                end

                if not v269 then
                    v:Destroy()
                end
            end
        end
    end
end
t2.value52 = 0
t2.value1.Heartbeat:Connect(function(dt)
    local v271 = t2.value17()

    if v271 then
        v271 = t2.value13.AAEnabled

        if v271 then
            v271 = t2.value13.AAEnabled.Value
        end
    end

    if v271 then
        local Character = t2.value8.Character
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        local v274 = HumanoidRootPart

        if HumanoidRootPart then
            v274 = Character:FindFirstChildOfClass("Humanoid")

            if v274 then
                v274 = Character:FindFirstChildOfClass("Humanoid").Health > 0
            end
        end

        if v274 then
            local AAYawValue = t2.value12.AAYaw.Value
            local n1 = 0

            if AAYawValue == "Spinbot" then
                t2.value52 = t2.value52 + t2.value12.AASpeed.Value * dt * 10
                n1 = math.rad(t2.value52)
            elseif AAYawValue == "Jitter" then
                n1 = math.rad((math.random(-180, 180)))
            elseif AAYawValue == "Backward" then
                local LookVector = t2.value9.CFrame.LookVector

                n1 = math.atan2(-LookVector.X, -LookVector.Z) + 3.141592653589793
            elseif AAYawValue == "Sideways" then
                local LookVector = t2.value9.CFrame.LookVector

                n1 = math.atan2(-LookVector.X, -LookVector.Z) + 1.5707963267948966
            end

            HumanoidRootPart.CFrame = CFrame.new(HumanoidRootPart.Position) * CFrame.Angles(0, n1, 0)
        end
    end
end)
t2.value1:BindToRenderStep("ThirdPersonOverride", Enum.RenderPriority.Camera.Value + 1, function()
    local v279 = t2.value17()
    local TPEnabled = t2.value13.TPEnabled

    if TPEnabled then
        TPEnabled = t2.value13.TPEnabled.Value and v279
    end

    if TPEnabled then
        local Character = t2.value8.Character
        local v282 = Character

        if Character then
            v282 = Character:FindFirstChild("Head")

            if not v282 then
                v282 = Character:FindFirstChild("HumanoidRootPart")
            end
        end

        if v282 then
            t2.value3.MouseBehavior = Enum.MouseBehavior.LockCenter
            local TPDistanceValue = t2.value12.TPDistance.Value
            local TPOffsetXValue = t2.value12.TPOffsetX.Value
            local cFrame2 = CFrame.new(TPOffsetXValue, 1.5, TPDistanceValue)
            t2.value9.CFrame = CFrame.new(v282.Position) * t2.value9.CFrame.Rotation * cFrame2
            for v288, v289 in ipairs(Character:GetDescendants()) do

                local v290 = v289:IsA("BasePart")

                if v290 then
                    v290 = v289.Name ~= "HumanoidRootPart"
                end

                if v290 and v289.LocalTransparencyModifier > 0.5 then
                    v289.LocalTransparencyModifier = 0
                end
            end
            local TPHideVM = t2.value13.TPHideVM
            if TPHideVM then
                TPHideVM = t2.value13.TPHideVM.Value
            end
            if TPHideVM then
                local value36 = t2.value36

                if value36 then
                    value36 = t2.value36.Parent
                end

                if value36 then
                    for _, descendant in ipairs(t2.value36:GetDescendants()) do
                        local v295 = descendant:IsA("BasePart")

                        if not v295 then
                            v295 = descendant:IsA("MeshPart")
                        end

                        if v295 then
                            descendant.LocalTransparencyModifier = 1
                        end
                    end
                end

                for _, child in ipairs(t2.value9:GetChildren()) do
                    local v298 = child:IsA("Model")

                    if v298 then
                        v298 = child ~= t2.value36
                    end

                    if v298 then
                        local GetDescendants = child.GetDescendants

                        for _, v in ipairs(GetDescendants(child)) do
                            local v302 = v:IsA("BasePart")

                            if not v302 then
                                v302 = v:IsA("MeshPart")
                            end

                            if v302 then
                                v.LocalTransparencyModifier = 1
                            end
                        end
                    end
                end

                return
            end
        end
    elseif v279 then
        local value36 = t2.value36

        if value36 then
            value36 = t2.value36.Parent
        end

        if value36 then
            for _, descendant in ipairs(t2.value36:GetDescendants()) do
                local v306 = descendant:IsA("BasePart")

                if not v306 then
                    v306 = descendant:IsA("MeshPart")
                end

                if v306 then
                    descendant.LocalTransparencyModifier = 0
                end
            end
        end

        for _, child in ipairs(t2.value9:GetChildren()) do
            local v309 = child:IsA("Model")

            if v309 then
                v309 = child ~= t2.value36
            end

            if v309 then
                for _, descendant in ipairs(child:GetDescendants()) do
                    if descendant:IsA("BasePart") or descendant:IsA("MeshPart") then
                        descendant.LocalTransparencyModifier = 0
                    end
                end
            end
        end
    end
end)
t2.value53 = {}
function t2.value54()
    local drawing = Drawing.new("Square")
    local drawing2 = Drawing.new("Text")
    local drawing3 = Drawing.new("Square")
    local drawing4 = Drawing.new("Square")
    local drawing5 = Drawing.new("Text")
    local t25 = {
		Box = drawing,
		Name = drawing2,
		HBBg = drawing3,
		HB = drawing4,
		HText = drawing5,
		Lines = {}
	}

    t25.Box.Thickness = 1
    t25.Box.Filled = false
    t25.Name.Size = 14
    t25.Name.Center = true
    t25.Name.Outline = true
    t25.HBBg.Filled = true
    t25.HBBg.Color = Color3.new(0, 0, 0)
    t25.HB.Filled = true
    t25.HText.Size = 12
    t25.HText.Center = true
    t25.HText.Outline = true

    for _ = 1, 15 do
        local drawing6 = Drawing.new("Line")

        drawing6.Thickness = 1
        table.insert(t25.Lines, drawing6)
    end

    return t25
end
function t2.value55(p34, p35)
    local ThegxxChams = p34:FindFirstChild("ThegxxChams")

    if not ThegxxChams then
        ThegxxChams = Instance.new("Highlight", p34)
        ThegxxChams.Name = "ThegxxChams"
    end

    ThegxxChams.FillColor = p35
    ThegxxChams.FillTransparency = 0.5
    ThegxxChams.OutlineTransparency = 1
    ThegxxChams.Enabled = true
end
t2.value1.RenderStepped:Connect(function()
    if t2.value13.ShowFOV.Value then
        t2.value23.Position = t2.value3:GetMouseLocation()
        t2.value23.Radius = t2.value12.FOVRadius.Value
        t2.value23.Color = t2.value12.ColorFOV.Value
        t2.value23.Visible = true
    else
        t2.value23.Visible = false
    end
    local AimbotEnabledValue = t2.value13.AimbotEnabled.Value
    if AimbotEnabledValue then
        AimbotEnabledValue = t2.value12.AimbotKey:GetState() and t2.value17()
    end
    if AimbotEnabledValue then
        local v324 = v64()

        if v324 then
            local v325, v326 = t2.value9:WorldToViewportPoint(v324.Position)

            if v326 then
                local MouseLocation = t2.value3:GetMouseLocation()
                local AimbotSmoothingValue = t2.value12.AimbotSmoothing.Value
                local v329 = (v325.X - MouseLocation.X) / AimbotSmoothingValue
                local v330 = (v325.Y - MouseLocation.Y) / AimbotSmoothingValue

                if mousemoverel then
                    mousemoverel(v329, v330)
                end
            end
        end
    end
    local BunnyHopValue = t2.value13.BunnyHop.Value
    if BunnyHopValue then
        BunnyHopValue = t2.value3:IsKeyDown(Enum.KeyCode.Space)
    end
    if BunnyHopValue then
        local v332 = t2.value17()

        if v332 then
            local Humanoid = v332:FindFirstChildOfClass("Humanoid")
            local v334 = Humanoid

            if Humanoid then
                v334 = Humanoid.FloorMaterial ~= Enum.Material.Air
            end

            if v334 then
                Humanoid.Jump = true
            end
        end
    end
    local v335 = t2.value18()
    local t26 = {}
    local v337 = v335
    if v335 then
        v337 = t2.value13.EnableESP.Value
    end
    if v337 then
        local GetChildren = v335.GetChildren

        for _, v in ipairs(GetChildren(v335)) do
            if v:IsA("Model") then
                t26[v] = true
            end
        end
    end
    for v343, v344 in pairs(t2.value53) do

        if not t26[v343] then
            v344.Box.Visible = false
            v344.Name.Visible = false
            v344.HBBg.Visible = false
            v344.HB.Visible = false
            v344.HText.Visible = false

            for _, v in ipairs(v344.Lines) do
                v.Visible = false
            end

            if v343:FindFirstChild("ThegxxChams") then
                v343.ThegxxChams:Destroy()
            end
        end
    end
    for v349, v350 in pairs(t26) do

        if not t2.value53[v349] then
            t2.value53[v349] = t2.value54()
        end

        local v351 = t2.value53[v349]
        local HumanoidRootPart = v349:FindFirstChild("HumanoidRootPart")

        if not HumanoidRootPart then
            HumanoidRootPart = v349:FindFirstChild("Torso") or v349.PrimaryPart
        end

        local v353 = v349:FindFirstChild("Head") or HumanoidRootPart
        local v354, v355 = t2.value19(v349)
        local v356 = HumanoidRootPart

        if HumanoidRootPart then
            v356 = v353 and v354 > 0
        end

        if v356 then
            local v357, v358 = t2.value9:WorldToViewportPoint(HumanoidRootPart.Position)
            local v359 = t2.value9:WorldToViewportPoint(v353.Position + Vector3.new(0, 0.5, 0))
            local v360 = t2.value9:WorldToViewportPoint(HumanoidRootPart.Position - Vector3.new(0, 3, 0))

            if v358 and v357.Z > 0 then
                local v361 = math.abs(v359.Y - v360.Y)
                local v362 = v361 * 0.65
                local v363 = v357.X - v362 / 2
                local Y = v359.Y
                local Color_ESP_BoxValue = t2.value12.Color_ESP_Box.Value

                if t2.value13.ESP_WallCheck.Value and t2.value20(v353, v349) then
                    Color_ESP_BoxValue = t2.value12.Color_ESP_Visible.Value
                end

                if t2.value13.ESP_Box.Value then
                    v351.Box.Color = Color_ESP_BoxValue
                    v351.Box.Size = Vector2.new(v362, v361)
                    v351.Box.Position = Vector2.new(v363, Y)
                    v351.Box.Visible = true
                else
                    v351.Box.Visible = false
                end

                if t2.value13.ESP_Name.Value then
                    v351.Name.Color = t2.value12.Color_ESP_Name.Value
                    v351.Name.Text = v349.Name
                    v351.Name.Position = Vector2.new(v357.X, Y - 18)
                    v351.Name.Visible = true
                else
                    v351.Name.Visible = false
                end

                local v366 = math.clamp(v354 / v355, 0, 1)
                local v367 = v361 * v366

                if t2.value13.ESP_Bar.Value then
                    v351.HBBg.Size = Vector2.new(2, v361)
                    v351.HBBg.Position = Vector2.new(v363 - 6, Y)
                    v351.HBBg.Visible = true
                    v351.HB.Color = Color3.new(1 - v366, v366, 0)
                    v351.HB.Size = Vector2.new(2, v367)

                    local HB = v351.HB
                    local new = Vector2.new
                    local v370 = Y + (v361 - v367)

                    HB.Position = new(v363 - 6, v370)
                    v351.HB.Visible = true
                else
                    v351.HBBg.Visible = false
                    v351.HB.Visible = false
                end

                if t2.value13.ESP_Text.Value then
                    v351.HText.Text = tostring((math.floor(v354)))
                    v351.HText.Color = Color3.new(1 - v366, v366, 0)

                    local HText = v351.HText
                    local new = Vector2.new
                    local v373 = Y + (v361 - v367) - 6

                    HText.Position = new(v363 - 18, v373)
                    v351.HText.Visible = true
                else
                    v351.HText.Visible = false
                end

                if t2.value13.ESP_Chams.Value then
                    local value55 = t2.value55
                    local ESP_WallCheckValue = t2.value13.ESP_WallCheck.Value

                    if ESP_WallCheckValue then
                        ESP_WallCheckValue = t2.value20(v353, v349)

                        if ESP_WallCheckValue then
                            ESP_WallCheckValue = t2.value12.Color_ESP_Visible.Value
                        end
                    end

                    if not ESP_WallCheckValue then
                        ESP_WallCheckValue = t2.value12.Color_ESP_Chams.Value
                    end

                    value55(v349, ESP_WallCheckValue)
                elseif v349:FindFirstChild("ThegxxChams") then
                    v349.ThegxxChams:Destroy()
                end
            else
                v351.Box.Visible = false
                v351.Name.Visible = false
                v351.HBBg.Visible = false
                v351.HB.Visible = false
                v351.HText.Visible = false

                if v349:FindFirstChild("ThegxxChams") then
                    v349.ThegxxChams:Destroy()
                end
            end
        end
    end
    if t2.value13.EnableVM.Value then
        local Color_WeaponValue = t2.value12.Color_Weapon.Value
        local Name = Enum.Material[t2.value12.Mat_Weapon.Value].Name
        local Color_ArmsValue = t2.value12.Color_Arms.Value
        local Name2 = Enum.Material[t2.value12.Mat_Arms.Value].Name
        local Color_GlovesValue = t2.value12.Color_Gloves.Value
        local Name3 = Enum.Material[t2.value12.Mat_Gloves.Value].Name
        local Color_SleevesValue = t2.value12.Color_Sleeves.Value
        local Name4 = Enum.Material[t2.value12.Mat_Sleeves.Value].Name

        for _, child in ipairs(t2.value9:GetChildren()) do
            if child:IsA("Model") then
                local v386 = child.Name .. Name .. Name2 .. tostring(Color_WeaponValue)

                if v386 ~= t2.value50[child] then
                    local v387 = child:FindFirstChild("Weapon") or child.Name == t2.value31 and child

                    if v387 then
                        for _, descendant in ipairs(v387:GetDescendants()) do
                            t2.value51(descendant, Color_WeaponValue, Enum.Material[Name])
                        end
                    end

                    local v390 = child:FindFirstChild("Left Arm")

                    if v390 then
                        v97(v390, Color_ArmsValue, Enum.Material[Name2], Color_GlovesValue, Enum.Material[Name3], Color_SleevesValue, Enum.Material[Name4])
                    end

                    local v391 = child:FindFirstChild("Right Arm")

                    if v391 then
                        v97(v391, Color_ArmsValue, Enum.Material[Name2], Color_GlovesValue, Enum.Material[Name3], Color_SleevesValue, Enum.Material[Name4])
                    end

                    t2.value50[child] = v386
                end
            end
        end
    else
        t2.value50 = {}
    end
    local value30 = t2.value30
    if value30 then
        value30 = t2.value36

        if value30 then
            value30 = t2.value36.PrimaryPart
        end
    end
    if value30 then
        t2.value36.PrimaryPart.CFrame = t2.value9.CFrame * t2.value44[t2.value31].Offset

        local value38 = t2.value38

        if value38 then
            value38 = t2.value38.IsPlaying
        end

        local v394 = not value38

        if v394 then
            v394 = not t2.value33 and not t2.value34
        end

        if v394 then
            local value39 = t2.value39

            if value39 then
                value39 = not t2.value39.IsPlaying
            end

            if value39 then
                t2.value39:Play()
            end
        end
    end
end)
task.spawn(function()
    while task.wait(0.1) do
        local v396 = t2.value17()
        local v397 = t2.value45()
        local value30 = t2.value30
        if value30 then
            value30 = v396 and v397 and not t2.value32
        end
        if value30 then
            t2.value49(v397)
        else
            local v399 = not t2.value30

            if not v399 then
                v399 = not v397 or not v396
            end

            if v399 and t2.value32 then
                t2.value47()
            end
        end
        if t2.value25 and v396 then
            for _, child in ipairs(t2.value9:GetChildren()) do
                local v402 = t2.value26[child.Name]

                if v402 then
                    v402 = child:GetAttribute("SkinApplied") ~= t2.value26[child.Name]
                end

                if v402 then
                    t2.value29(child)
                end
            end
        end
    end
end)
task.spawn(function()
    while task.wait(0.2) do
        local AntiFlashToggle = t2.value13.AntiFlashToggle

        if AntiFlashToggle then
            AntiFlashToggle = t2.value13.AntiFlashToggle.Value
        end

        if AntiFlashToggle then
            local PlayerGui = t2.value8:FindFirstChild("PlayerGui")

            if PlayerGui then
                local FlashbangEffect = PlayerGui:FindFirstChild("FlashbangEffect")

                if FlashbangEffect then
                    FlashbangEffect:Destroy()
                end
            end

            local FlashbangColorCorrection = t2.value7:FindFirstChild("FlashbangColorCorrection")

            if FlashbangColorCorrection then
                FlashbangColorCorrection:Destroy()
            end
        end
    end
end)
task.spawn(function()
    while task.wait(0.5) do
        local AntiSmokeToggle = t2.value13.AntiSmokeToggle

        if AntiSmokeToggle then
            AntiSmokeToggle = t2.value13.AntiSmokeToggle.Value
        end

        if AntiSmokeToggle then
            local Debris = t2.value2:FindFirstChild("Debris")

            if Debris then
                for _, child in ipairs(Debris:GetChildren()) do
                    if string.match(child.Name, "Voxel") then
                        child:ClearAllChildren()
                        child:Destroy()
                    end
                end
            end
        end
    end
end)
t5.Settings:AddLeftGroupbox("Menu"):AddButton({
	Text = "Unload Script",
	Func = function()
    t2.value11:Unload()
end
})
v27:SetLibrary(t2.value11)
v28:SetLibrary(t2.value11)
v28:IgnoreThemeSettings()
v28:SetIgnoreIndexes({ "MenuKeybind" })
v27:SetFolder("ThegxxHub")
v28:SetFolder("ThegxxHub/Config")
v28:BuildConfigSection(t5.Settings)
v27:ApplyToTab(t5.Settings)
v28:LoadAutoloadConfig()
t2.value11.AccentColor = Color3.fromRGB(220, 20, 60)
t2.value11.MainColor = Color3.fromRGB(25, 25, 25)
t2.value11.BackgroundColor = Color3.fromRGB(15, 15, 15)
t2.value11.OutlineColor = Color3.fromRGB(50, 50, 50)
t2.value11:UpdateColorsUsingRegistry()
t2.value11:OnUnload(function()
    t2.value23:Remove()
    t2.value1:UnbindFromRenderStep("ThirdPersonOverride")
    if t2.value17() then
        local value36 = t2.value36

        if value36 then
            value36 = t2.value36.Parent
        end

        if value36 then
            for _, descendant in ipairs(t2.value36:GetDescendants()) do
                if descendant:IsA("BasePart") or descendant:IsA("MeshPart") then
                    descendant.LocalTransparencyModifier = 0
                end
            end
        end

        for _, child in ipairs(t2.value9:GetChildren()) do
            local v416 = child:IsA("Model")

            if v416 then
                v416 = child ~= t2.value36
            end

            if v416 then
                for _, descendant in ipairs(child:GetDescendants()) do
                    local v419 = descendant:IsA("BasePart")

                    if not v419 then
                        v419 = descendant:IsA("MeshPart")
                    end

                    if v419 then
                        descendant.LocalTransparencyModifier = 0
                    end
                end
            end
        end
    end
    for v422, v423 in pairs(t2.value21) do

        if v422 and v422.Parent then
            v422.Size = v423
            v422.Transparency = 0

            local GetChildren = v422.GetChildren

            for _, v in ipairs(GetChildren(v422)) do
                if v:IsA("Decal") then
                    v.Transparency = 0
                end
            end
        end
    end
    for v429, v430 in pairs(t2.value22) do

        if v430 then
            v430:Destroy()
        end
    end
    for _, v in pairs(t2.value53) do
        v.Box:Remove()
        v.Name:Remove()
        v.HBBg:Remove()
        v.HB:Remove()
        v.HText:Remove()

        for _, v4 in ipairs(v.Lines) do
            v4:Remove()
        end
    end
    table.clear(t2.value53)
    table.clear(t2.value50)
end)
