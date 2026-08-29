-- This file was generated at discord.gg/syncrypt

local t1 = {}
local Players = game:GetService("Players")

t1.value1 = game:GetService("MarketplaceService")
t1.value2 = game:GetService("HttpService")
t1.value3 = game:GetService("UserInputService")

local CoreGui = game:GetService("CoreGui")

t1.value4 = game:GetService("TweenService")
t1.value5 = game:GetService("VirtualUser")
t1.value6 = Players.LocalPlayer
local color3 = Color3.fromRGB(33, 150, 243)
local color3_2 = Color3.fromRGB(0, 90, 180)
local color3_3 = Color3.fromRGB(11, 11, 17)
local color3_4 = Color3.fromRGB(18, 18, 28)
local color3_5 = Color3.fromRGB(16, 16, 26)
local color3_6 = Color3.fromRGB(210, 220, 235)
local color3_7 = Color3.fromRGB(90, 130, 170)
local vector2 = Vector2.new(260, 300)
local vector2_2 = Vector2.new(520, 560)

t1.value7 = {
	HubName = "LP10 HUB",
	Version = "v2.1",
	Accent = color3,
	AccentDark = color3_2,
	Bg = color3_3,
	CardBg = color3_4,
	HeaderBg = color3_5,
	TextColor = color3_6,
	SubText = color3_7,
	MinSize = vector2,
	MaxSize = vector2_2
}
t1.value8 = {
	"Balloon Game [UPDATE]",
	"Eat Brainrot for Fight [UPDATE 2]",
	"Get Strong Simulator",
	"+1 Speed School Escape",
	"Farmer Simulator",
	"Block Incremental [New]",
	"Prison Mining Simulator",
	"The $1,000,000 Glass Bridge",
	"Squabble Game RP",
	"Valentine's Day [HORROR]",
	"Raise a Floppa 2",
	"Raise a Floppa"
}
t1.value9 = nil
t1.value10 = nil
t1.value11 = {}
t1.value12 = {}
t1.value13 = {}
t1.value14 = {}
_G.LP10_AntiAFK = true
_G.LP10_Resizing = false
t1.value6.Idled:Connect(function()
    if _G.LP10_AntiAFK then
        t1.value5:CaptureController()
        t1.value5:ClickButton2(Vector2.new())
    end
end)

local function v13()
    table.clear(t1.value11)
    table.clear(t1.value12)
    table.clear(t1.value13)
    table.clear(t1.value14)
    t1.value9 = nil
    t1.value10 = nil
    pcall(function()
        local ok, result = pcall(function()
            return t1.value1:GetDeveloperProductsAsync():GetCurrentPage()
        end)

        if ok and result then
            for _, v in ipairs(result) do
                local insert = table.insert
                local value11 = t1.value11
                local ProductId = v.ProductId
                local vName = v.Name

                insert(value11, {
					id = ProductId,
					name = vName
				})
                table.insert(t1.value12, v.Name)
            end
        end
    end)
    pcall(function()
        local universeId = t1.value2:JSONDecode(game:HttpGet("https://apis.roblox.com/universes/v1/places/" .. game.PlaceId .. "/universe")).universeId
        local data = t1.value2:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. universeId .. "/game-passes?limit=100"))

        for _, v in ipairs(data.data or {}) do
            t1.value13[v.displayName] = v.id
            table.insert(t1.value14, v.displayName)
        end
    end)
end
local LP10_Universal_v21 = CoreGui:FindFirstChild("LP10_Universal_v21")

if LP10_Universal_v21 then
    LP10_Universal_v21:Destroy()
end
local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "LP10_Universal_v21"
ScreenGui.Parent = CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
local TextButton = Instance.new("TextButton", ScreenGui)

TextButton.Name = "LP_Toggle"
TextButton.BackgroundColor3 = t1.value7.Bg
TextButton.Size = UDim2.new(0, 54, 0, 54)
TextButton.Position = UDim2.new(0.04, 0, 0.08, 0)
TextButton.Text = ""
TextButton.AutoButtonColor = false
Instance.new("UICorner", TextButton).CornerRadius = UDim.new(0, 14)

local UIStroke = Instance.new("UIStroke", TextButton)

UIStroke.Color = t1.value7.Accent
UIStroke.Thickness = 2
local TextLabel = Instance.new("TextLabel", TextButton)

TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "LP"
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
Instance.new("UIGradient", TextLabel).Color = ColorSequence.new(t1.value7.Accent, t1.value7.AccentDark)
Instance.new("UIPadding", TextLabel).PaddingBottom = UDim.new(0, 8)
t1.value15 = Instance.new("Frame", ScreenGui)
t1.value15.Name = "MainFrame"
t1.value15.BackgroundColor3 = t1.value7.Bg
t1.value15.Position = UDim2.new(0.5, -130, 0.5, -165)
t1.value15.Size = UDim2.new(0, 260, 0, 330)
t1.value15.Visible = false
t1.value15.Active = true
t1.value15.ClipsDescendants = true
Instance.new("UICorner", t1.value15).CornerRadius = UDim.new(0, 12)

local UIStroke2 = Instance.new("UIStroke", t1.value15)

UIStroke2.Color = t1.value7.Accent
UIStroke2.Thickness = 1.5
local Frame = Instance.new("Frame", t1.value15)

Frame.Size = UDim2.new(1, 0, 0, 44)
Frame.BackgroundColor3 = t1.value7.HeaderBg
Frame.BorderSizePixel = 0
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 12)

local Frame2 = Instance.new("Frame", Frame)

Frame2.Size = UDim2.new(1, 0, 0.5, 0)
Frame2.Position = UDim2.new(0, 0, 0.5, 0)
Frame2.BackgroundColor3 = t1.value7.HeaderBg
Frame2.BorderSizePixel = 0
local TextLabel2 = Instance.new("TextLabel", Frame)

TextLabel2.Size = UDim2.new(1, -10, 0, 24)
TextLabel2.Position = UDim2.new(0, 10, 0, 4)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Font = Enum.Font.GothamBold
TextLabel2.Text = "LP10 HUB  |  Universal"
TextLabel2.TextColor3 = t1.value7.Accent
TextLabel2.TextSize = 13
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
local TextLabel3 = Instance.new("TextLabel", Frame)

TextLabel3.Size = UDim2.new(1, -10, 0, 14)
TextLabel3.Position = UDim2.new(0, 10, 0, 28)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Font = Enum.Font.Gotham
TextLabel3.Text = "Free Gamepasses  " .. t1.value7.Version .. "  |  @LPOLVO"
TextLabel3.TextColor3 = t1.value7.SubText
TextLabel3.TextSize = 9
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
t1.value16 = Instance.new("TextLabel", t1.value15)
t1.value16.Size = UDim2.new(1, -16, 0, 14)
t1.value16.Position = UDim2.new(0, 8, 0, 46)
t1.value16.BackgroundTransparency = 1
t1.value16.Font = Enum.Font.Gotham
t1.value16.Text = "Ready"
t1.value16.TextColor3 = Color3.fromRGB(60, 120, 170)
t1.value16.TextSize = 9
t1.value16.TextXAlignment = Enum.TextXAlignment.Left
t1.value17 = Instance.new("ScrollingFrame", t1.value15)
t1.value17.Name = "Content"
t1.value17.Size = UDim2.new(1, -10, 1, -70)
t1.value17.Position = UDim2.new(0, 5, 0, 62)
t1.value17.BackgroundTransparency = 1
t1.value17.ScrollBarThickness = 3
t1.value17.ScrollBarImageColor3 = t1.value7.Accent
t1.value17.BorderSizePixel = 0
t1.value17.CanvasSize = UDim2.new(0, 0, 0, 0)
t1.value17.AutomaticCanvasSize = Enum.AutomaticSize.Y
local UIListLayout = Instance.new("UIListLayout", t1.value17)

UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
local UIPadding = Instance.new("UIPadding", t1.value17)

UIPadding.PaddingLeft = UDim.new(0, 3)
UIPadding.PaddingRight = UDim.new(0, 3)
UIPadding.PaddingTop = UDim.new(0, 3)

local TextButton2 = Instance.new("TextButton", t1.value15)

TextButton2.Size = UDim2.new(0, 20, 0, 20)
TextButton2.Position = UDim2.new(1, -20, 1, -20)
TextButton2.BackgroundTransparency = 1
TextButton2.Text = "/"
TextButton2.TextColor3 = t1.value7.Accent
TextButton2.TextSize = 14
TextButton2.Font = Enum.Font.GothamBold
TextButton2.ZIndex = 10
function t1.value18(p1, p2)
    local TextLabel4 = Instance.new("TextLabel", t1.value17)

    TextLabel4.Size = UDim2.new(1, 0, 0, 20)
    TextLabel4.BackgroundTransparency = 1
    TextLabel4.Font = Enum.Font.GothamBold
    TextLabel4.Text = "  " .. p2
    TextLabel4.TextColor3 = t1.value7.Accent
    TextLabel4.TextSize = 10
    TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel4.LayoutOrder = p1

    return TextLabel4
end
function t1.value19(p3, p4, p5, p6)
    local TextButton3 = Instance.new("TextButton", t1.value17)

    TextButton3.Size = UDim2.new(1, 0, 0, 32)

    local v51 = p5

    if not p5 then
        v51 = t1.value7.CardBg
    end

    TextButton3.BackgroundColor3 = v51
    TextButton3.Text = p4
    TextButton3.TextColor3 = Color3.new(1, 1, 1)
    TextButton3.Font = Enum.Font.GothamBold
    TextButton3.TextSize = 11
    TextButton3.AutoButtonColor = false
    TextButton3.LayoutOrder = p3
    Instance.new("UICorner", TextButton3).CornerRadius = UDim.new(0, 7)

    local UIStroke3 = Instance.new("UIStroke", TextButton3)

    UIStroke3.Color = t1.value7.Accent
    UIStroke3.Thickness = 1
    UIStroke3.Transparency = 0.6
    TextButton3.MouseEnter:Connect(function()
        t1.value4:Create(TextButton3, TweenInfo.new(0.12), {
			BackgroundColor3 = Color3.fromRGB(28, 90, 165)
		}):Play()
    end)
    TextButton3.MouseLeave:Connect(function()
        local value4 = t1.value4
        local v89 = TextButton3
        local tweenInfo = TweenInfo.new(0.12)
        local v91 = p5

        if not v91 then
            v91 = t1.value7.CardBg
        end

        value4:Create(v89, tweenInfo, {
			BackgroundColor3 = v91
		}):Play()
    end)
    TextButton3.MouseButton1Click:Connect(function()
        if p6 then
            pcall(p6)
        end
    end)

    return TextButton3
end
function t1.value20(p7, p8, p9, p10)
    local u33 = false
    local u34
    local Frame3 = Instance.new("Frame", t1.value17)
    Frame3.Size = UDim2.new(1, 0, 0, 32)
    Frame3.BackgroundColor3 = t1.value7.CardBg
    Frame3.BorderSizePixel = 0
    Frame3.ClipsDescendants = true
    Frame3.LayoutOrder = p7
    Instance.new("UICorner", Frame3).CornerRadius = UDim.new(0, 7)
    local UIStroke4 = Instance.new("UIStroke", Frame3)
    UIStroke4.Color = t1.value7.Accent
    UIStroke4.Thickness = 1
    UIStroke4.Transparency = 0.6
    local TextButton4 = Instance.new("TextButton", Frame3)
    TextButton4.Size = UDim2.new(1, 0, 0, 32)
    TextButton4.BackgroundTransparency = 1
    TextButton4.Font = Enum.Font.GothamBold
    TextButton4.Text = "v  " .. p8
    TextButton4.TextColor3 = t1.value7.Accent
    TextButton4.TextSize = 11
    TextButton4.TextXAlignment = Enum.TextXAlignment.Left
    TextButton4.ZIndex = 2
    Instance.new("UIPadding", TextButton4).PaddingLeft = UDim.new(0, 8)
    local Frame4 = Instance.new("Frame", Frame3)
    Frame4.Position = UDim2.new(0, 0, 0, 32)
    Frame4.Size = UDim2.new(1, 0, 0, 0)
    Frame4.BackgroundTransparency = 1
    Instance.new("UIListLayout", Frame4).SortOrder = Enum.SortOrder.LayoutOrder
    for i, v in ipairs(p9) do
        local v41 = v
        local TextButton5 = Instance.new("TextButton", Frame4)

        TextButton5.Size = UDim2.new(1, 0, 0, 26)
        TextButton5.BackgroundTransparency = 1
        TextButton5.Font = Enum.Font.Gotham
        TextButton5.Text = "  " .. tostring(v41)
        TextButton5.TextColor3 = Color3.fromRGB(160, 195, 230)
        TextButton5.TextSize = 10
        TextButton5.TextXAlignment = Enum.TextXAlignment.Left
        TextButton5.LayoutOrder = i
        TextButton5.AutoButtonColor = false
        TextButton5.MouseEnter:Connect(function()
            TextButton5.TextColor3 = t1.value7.Accent
        end)
        TextButton5.MouseLeave:Connect(function()
            TextButton5.TextColor3 = Color3.fromRGB(160, 195, 230)
        end)
        TextButton5.MouseButton1Click:Connect(function()
            u34 = v41
            TextButton4.Text = "OK  " .. tostring(v41)

            if p10 then
                pcall(p10, v41)
            end

            u33 = false
            t1.value4:Create(Frame3, TweenInfo.new(0.18, Enum.EasingStyle.Quart), {
				Size = UDim2.new(1, 0, 0, 32)
			}):Play()
        end)
    end
    TextButton4.MouseButton1Click:Connect(function()
        u33 = not u33

        local v87 = u33 and #p9 * 26 + 32 + 4 or 32

        TextButton4.Text = (not u33 and "v  " or "^  ") .. (u34 or p8)
        t1.value4:Create(Frame3, TweenInfo.new(0.2, Enum.EasingStyle.Quart), {
			Size = UDim2.new(1, 0, 0, v87)
		}):Play()
    end)

    return Frame3
end
function t1.value21(p11)
    local Frame5 = Instance.new("Frame", t1.value17)

    Frame5.Size = UDim2.new(1, 0, 0, 1)
    Frame5.BackgroundColor3 = t1.value7.Accent
    Frame5.BackgroundTransparency = 0.8
    Frame5.BorderSizePixel = 0
    Frame5.LayoutOrder = p11

    return Frame5
end
local function v27(p12, p13)
    local TextLabel5 = Instance.new("TextLabel", t1.value17)

    TextLabel5.Size = UDim2.new(1, 0, 0, 18)
    TextLabel5.BackgroundTransparency = 1
    TextLabel5.Font = Enum.Font.Gotham
    TextLabel5.Text = p13
    TextLabel5.TextColor3 = t1.value7.SubText
    TextLabel5.TextSize = 10
    TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel5.LayoutOrder = p12

    return TextLabel5
end
t1.value22 = nil
function t1.value22()
    for _, child in ipairs(t1.value17:GetChildren()) do
        if not child:IsA("UIListLayout") and not child:IsA("UIPadding") then
            child:Destroy()
        end
    end

    t1.value18(1, "DEVELOPER PRODUCTS")

    if #t1.value12 > 0 then
        t1.value20(2, "Select Product (" .. #t1.value12 .. ")", t1.value12, function(p14)
            for _, v in ipairs(t1.value11) do
                if p14 == v.name then
                    t1.value9 = v.id

                    return
                end
            end
        end)
    else
        v27(2, "  No products found in this game")
    end

    t1.value19(3, "Fake Buy Product", Color3.fromRGB(15, 55, 110), function()
        if t1.value9 then
            t1.value1:SignalPromptProductPurchaseFinished(t1.value6.UserId, t1.value9, true)
            t1.value16.Text = "Fired product: " .. tostring(t1.value9)

            return
        end

        t1.value16.Text = "Select a product first"
    end)
    t1.value21(4)
    t1.value18(5, "GAMEPASSES")

    if #t1.value14 > 0 then
        t1.value20(6, "Select Gamepass (" .. #t1.value14 .. ")", t1.value14, function(p15)
            t1.value10 = t1.value13[p15]
        end)
    else
        v27(6, "  No gamepasses found in this game")
    end

    t1.value19(7, "Fake Buy Gamepass", Color3.fromRGB(15, 55, 110), function()
        if t1.value10 then
            t1.value1:SignalPromptGamePassPurchaseFinished(t1.value6, t1.value10, true)
            t1.value16.Text = "Fired gamepass: " .. tostring(t1.value10)

            return
        end

        t1.value16.Text = "Select a gamepass first"
    end)
    t1.value21(8)
    t1.value18(9, "TOOLS")
    t1.value19(10, "Refresh / Re-scan Game", Color3.fromRGB(18, 32, 52), function()
        t1.value16.Text = "Scanning..."
        v13()
        t1.value22()
        t1.value16.Text = "Done! " .. #t1.value12 .. " products, " .. #t1.value14 .. " gamepasses"
    end)
    t1.value19(11, "Copy Gamepass ID", Color3.fromRGB(18, 32, 52), function()
        if t1.value10 then
            pcall(setclipboard, (tostring(t1.value10)))
            t1.value16.Text = "Copied: " .. tostring(t1.value10)

            return
        end

        t1.value16.Text = "Select a gamepass first"
    end)
    t1.value19(12, "Instagram @4me.h4mz4", Color3.fromRGB(90, 20, 65), function()
        pcall(setclipboard, "https://www.instagram.com/4me.h4mz4_?igsh=MW9sa20yejExaGo5Nw==")
        t1.value16.Text = "Instagram link copied!"
    end)
    t1.value21(13)
    t1.value18(14, "SOME WORKING GAMES")

    for i, v in ipairs(t1.value8) do
        v27(14 + i, "  * " .. v)
    end

    v27(#t1.value8 + 14 + 1, "  Try any game - you might find more!")
    t1.value21(30)
    t1.value18(31, "INFO")
    v27(32, "  Anti-AFK: active")
    v27(33, "  Key resets after 12 hours")
    v27(34, "  YouTube: LPOLVOXD1")
end
local function v28(p16)
    local u63
    local u64
    local inputPosition
    local p16Position
    p16.InputBegan:Connect(function(input)
        local v97 = input.UserInputType == Enum.UserInputType.MouseButton1

        if not v97 then
            v97 = input.UserInputType == Enum.UserInputType.Touch
        end

        if v97 then
            v97 = not _G.LP10_Resizing
        end

        if v97 then
            u63 = true
            inputPosition = input.Position
            p16Position = p16.Position
        end
    end)
    p16.InputChanged:Connect(function(input)
        local v99 = input.UserInputType == Enum.UserInputType.MouseMovement

        if not v99 then
            v99 = input.UserInputType == Enum.UserInputType.Touch
        end

        if v99 then
            u64 = input
        end
    end)
    t1.value3.InputChanged:Connect(function(input)
        if input == u64 and u63 then
            local v101 = input.Position - inputPosition

            p16.Position = UDim2.new(p16Position.X.Scale, p16Position.X.Offset + v101.X, p16Position.Y.Scale, p16Position.Y.Offset + v101.Y)
        end
    end)
    p16.InputEnded:Connect(function(input)
        local v103 = input.UserInputType == Enum.UserInputType.MouseButton1

        if not v103 then
            v103 = input.UserInputType == Enum.UserInputType.Touch
        end

        if not v103 then
        end
    end)
end
t1.value23 = t1.value15.Size
TextButton2.InputBegan:Connect(function(input)
    local v68 = input.UserInputType == Enum.UserInputType.MouseButton1

    if not v68 then
        v68 = input.UserInputType == Enum.UserInputType.Touch
    end

    if v68 then
        _G.LP10_Resizing = true

        local inputPosition = input.Position
        local value15Size = t1.value15.Size
        local connection = t1.value3.InputChanged:Connect(function(input2)
            local v105 = input2.UserInputType == Enum.UserInputType.MouseMovement

            if not v105 then
                v105 = input2.UserInputType == Enum.UserInputType.Touch
            end

            if v105 then
                local v106 = input2.Position - inputPosition

                t1.value15.Size = UDim2.new(0, math.clamp(value15Size.X.Offset + v106.X, t1.value7.MinSize.X, t1.value7.MaxSize.X), 0, (math.clamp(value15Size.Y.Offset + v106.Y, t1.value7.MinSize.Y, t1.value7.MaxSize.Y)))
                t1.value23 = t1.value15.Size
            end
        end)

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                _G.LP10_Resizing = false
                connection:Disconnect()
            end
        end)
    end
end)
v28(t1.value15)
v28(TextButton)
t1.value24 = false
TextButton.MouseButton1Click:Connect(function()
    t1.value24 = not t1.value24
    t1.value15.Visible = true

    local value15 = t1.value15
    local v73 = t1.value24 and t1.value23

    if not v73 then
        v73 = UDim2.new(0, 0, 0, 0)
    end

    local value24 = t1.value24

    if value24 then
        value24 = Enum.EasingDirection.Out
    end

    if not value24 then
        value24 = Enum.EasingDirection.In
    end

    value15:TweenSize(v73, value24, Enum.EasingStyle.Back, 0.28, true, function()
        if not t1.value24 then
            t1.value15.Visible = false
        end
    end)
end)
v13()
t1.value22()
t1.value16.Text = "Done! " .. #t1.value12 .. " products, " .. #t1.value14 .. " gamepasses"
print("LP10 HUB Universal v2.1 - Loaded! Products: " .. #t1.value12 .. " | Gamepasses: " .. #t1.value14)
