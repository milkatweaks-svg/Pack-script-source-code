-- This file was generated at discord.gg/syncrypt

local t1 = {}
local Players = game:GetService("Players")

t1.value1 = game:GetService("ReplicatedStorage")
t1.value2 = Players.LocalPlayer
t1.value3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/csgo1compte-cloud/RayVoidUi/refs/heads/main/RayVoid"))()
t1.value3:ShowCredit()
t1.value3:SetScriptName("Milka Skin Changer")

local t2 = {
	["Dream Bow"] = true,
	["Key Bow"] = true,
	["Compound Bow"] = true,
	["Arch Crossbow"] = true,
	["Campfire Crossbow"] = true,
	Crossbone = true,
	["Harpoon Crossbow"] = true,
	["Violin Crossbow"] = true,
	Buzzsaw = true,
	["Festive Buzzsaw"] = true,
	Handsaws = true,
	["Mega Drill"] = true,
	Sharksaw = true,
	Keyvolver = true,
	["Cruise Revolver"] = true,
	["Desert Eagle"] = true
}
t1.value4 = nil
t1.value5 = t2
t1.value6 = {}
function t1.value7(...)
    if t1.value4 then
        print("[MilkaDebug]", ...)
    end
end
_G.ActiveSelection = nil
_G.ActiveTab = "Skins"
_G.Telemetry = {}
_G.EquippedData = _G.EquippedData or {}
print("[+] Initializing Milka Skin Changer v2.2 (HEURISTIC SCAN Edition)...")
_G.MilkaVersion = "2.2-GC"
t1.value7("Script démarré. DEBUG =", true)

local function v4(p1)
    local str = tostring(p1)
    local _setthreadidentity = setthreadidentity
    if not _setthreadidentity then
        _setthreadidentity = set_thread_identity

        if not _setthreadidentity then
            _setthreadidentity = syn

            if _setthreadidentity then
                _setthreadidentity = syn.set_thread_identity
            end

            if not _setthreadidentity then
                _setthreadidentity = fluxus

                if _setthreadidentity then
                    _setthreadidentity = fluxus.set_thread_identity
                end

                if not _setthreadidentity then
                    _setthreadidentity = getgenv

                    if _setthreadidentity then
                        _setthreadidentity = getgenv().set_thread_identity
                    end
                end
            end
        end
    end
    local v25 = _setthreadidentity
    local _getthreadidentity = getthreadidentity
    if not _getthreadidentity then
        _getthreadidentity = get_thread_identity

        if not _getthreadidentity then
            _getthreadidentity = syn

            if _getthreadidentity then
                _getthreadidentity = syn.get_thread_identity
            end

            if not _getthreadidentity then
                _getthreadidentity = fluxus

                if _getthreadidentity then
                    _getthreadidentity = fluxus.set_thread_identity
                end

                if not _getthreadidentity then
                    _getthreadidentity = getgenv

                    if _getthreadidentity then
                        _getthreadidentity = getgenv().get_thread_identity
                    end
                end
            end
        end
    end
    local v27 = _getthreadidentity
    if shared[str] or _G[str] then
        _G.Telemetry[str] = "Global Cache Check"

        return shared[str] or _G[str]
    end
    local _getrenv = getrenv
    if _getrenv then
        _getrenv = getrenv()._G[str]

        if not _getrenv then
            _getrenv = getrenv().shared[str]
        end
    end
    if _getrenv then
        _G.Telemetry[str] = "Shared Environment Scan"

        local v29 = getrenv()._G[str]

        if not v29 then
            v29 = getrenv().shared[str]
        end

        return v29
    end
    local u30
    pcall(function()
        if v27 and v25 then
            u30 = v27()
            v25(2)
        end
    end)
    local ok, result = pcall(require, p1)
    local v33 = not ok
    if v33 then
        v33 = getgenv

        if v33 then
            v33 = getgenv().require
        end
    end
    if v33 then
        local success, resultValue = pcall(getgenv().require, p1)
        if success then
            ok = true
            result = resultValue
        end
    end
    pcall(function()
        if v25 and u30 then
            local v90 = u30

            v25(v90)
        end
    end)
    if ok then
        _G.Telemetry[str] = "Identity Bypass (" .. (v27 and v27() or "ID6)")

        return result
    end
    local v36 = debug.getupvalues or getupvalues
    local t4 = {
		getgc,
		getregistry,
		debug.getregistry
	}
    for _, v in pairs(t4) do
        if type(v) == "function" then
            local ok2, result2 = pcall(v, true)

            if ok2 then
                ok2 = type(result2) == "table"
            end

            if ok2 then
                for _, v2 in pairs(result2) do
                    if type(v2) == "table" then
                        local v44 = str:find("CosmeticLibrary")

                        if v44 then
                            v44 = v2.Cosmetics

                            if not v44 then
                                v44 = rawget(v2, "Cosmetics")
                            end

                            if v44 then
                                v44 = type(v2.Equip) == "function"

                                if not v44 then
                                    v44 = type(v2.GetSkins) == "function"
                                end
                            end
                        end

                        if v44 then
                            _G.Telemetry[str] = "Heuristic Memory Scan (GC)"

                            return v2
                        end

                        local v45 = str:find("ItemLibrary")

                        if v45 then
                            v45 = v2.ViewModels

                            if not v45 then
                                v45 = rawget(v2, "ViewModels")
                            end
                        end

                        if v45 then
                            _G.Telemetry[str] = "Heuristic Memory Scan (GC)"

                            return v2
                        end

                        local v46 = str:find("ClientViewModel")

                        if v46 then
                            v46 = v2.new

                            if not v46 then
                                v46 = rawget(v2, "new")
                            end

                            if v46 then
                                v46 = v2.GetWrap

                                if not v46 then
                                    v46 = rawget(v2, "GetWrap")
                                end
                            end
                        end

                        if v46 then
                            _G.Telemetry[str] = "Heuristic Memory Scan (GC)"

                            return v2
                        end

                        local v47 = str:find("ReplicatedClass")

                        if v47 then
                            v47 = type(v2.ToEnum) == "function"
                        end

                        if not v47 then
                            continue
                        end

                        _G.Telemetry[str] = "Heuristic Memory Scan (GC)"

                        return v2
                    end

                    if type(v2) == "function" and v36 then
                        local v48 = v36(v2)

                        for _, v3 in pairs(v48) do
                            if type(v3) ~= "table" then
                                continue
                            end

                            local v51 = str:find("CosmeticLibrary")

                            if v51 then
                                v51 = v3.Cosmetics and v3.Equip
                            end

                            if v51 then
                                _G.Telemetry[str] = "Function Upvalue Scan"

                                return v3
                            end

                            if str:find("ItemLibrary") and v3.ViewModels then
                                _G.Telemetry[str] = "Function Upvalue Scan"

                                return v3
                            end
                        end
                    end
                end
            end
        end
    end
    _G.Telemetry[str] = "NOT_FOUND"
    warn("[!] Skin Changer: All retrieval methods failed for " .. str .. ". Your executor may be too restricted.")

    return nil
end
function t1.value8()
    local t5 = {}
    local v12 = not CosmeticLibrary
    if not v12 then
        v12 = not CosmeticLibrary.Cosmetics
    end
    if v12 then
        warn("[!] BuildSkinLists: CosmeticLibrary.Cosmetics unavailable.")

        return t5
    end
    for v15, v16 in pairs(CosmeticLibrary.Cosmetics) do

        if v16.Type == "Skin" and v16.ItemName then
            local ItemName = v16.ItemName

            if not t5[ItemName] then
                t5[ItemName] = { "Default" }
            end

            table.insert(t5[ItemName], v15)
        end
    end
    for _, v in pairs(t5) do
        table.sort(v, function(p2, p3)
            if p2 == "Default" then
                return true
            end

            if p3 == "Default" then
                return false
            end

            return p2 < p3
        end)
    end

    return t5
end
function t1.value9()
    local t6 = { "None" }
    local v55 = not CosmeticLibrary

    if not v55 then
        v55 = not CosmeticLibrary.Cosmetics
    end

    if v55 then
        return t6
    end

    for k, v in pairs(CosmeticLibrary.Cosmetics) do
        if v.Type == "Wrap" then
            table.insert(t6, k)
        end
    end

    table.sort(t6, function(p4, p5)
        if p4 == "None" then
            return true
        end

        if p5 == "None" then
            return false
        end

        return p4 < p5
    end)

    return t6
end
function t1.value10()
    local t7 = { "None" }
    local v6 = not CosmeticLibrary

    if not v6 then
        v6 = not CosmeticLibrary.Cosmetics
    end

    if v6 then
        return t7
    end

    for k, v in pairs(CosmeticLibrary.Cosmetics) do
        if v.Type == "Charm" then
            table.insert(t7, k)
        end
    end

    table.sort(t7, function(p6, p7)
        if p6 == "None" then
            return true
        end

        if p7 == "None" then
            return false
        end

        return p6 < p7
    end)

    return t7
end
function t1.value11(p8)
    local ok, result = pcall(function()
        local _ItemLibrary = ItemLibrary

        if _ItemLibrary then
            _ItemLibrary = ItemLibrary.ViewModels

            if _ItemLibrary then
                _ItemLibrary = ItemLibrary.ViewModels[p8]
            end
        end

        if _ItemLibrary then
            local v94 = ItemLibrary.ViewModels[p8]

            if v94.ImageHighResolution then
                return v94.ImageHighResolution
            end

            if v94.Image then
                return v94.Image
            end
        end

        local _CosmeticLibrary = CosmeticLibrary

        if _CosmeticLibrary then
            _CosmeticLibrary = CosmeticLibrary.Cosmetics

            if _CosmeticLibrary then
                _CosmeticLibrary = CosmeticLibrary.Cosmetics[p8]
            end
        end

        if _CosmeticLibrary then
            local v96 = CosmeticLibrary.Cosmetics[p8]

            if v96.ImageHighResolution then
                return v96.ImageHighResolution
            end

            if v96.Image then
                return v96.Image
            end
        end

        return nil
    end)

    if ok and result then
        return result
    end

    return ""
end
function t1.value12(p9, p10)
    if t1.value5[p10] then
        warn("[Milka] Refusing to equip '" .. p10 .. "': skin is blacklisted (known to cause a softlock).")

        return
    end

    t1.value7("EquipSkin appelé :", p9, "->", p10)
    _G.EquippedData[p9].Skin = p10
end
function t1.value13(p11, p12)
    t1.value7("EquipWrap appelé :", p11, "->", p12)
    _G.EquippedData[p11].Wrap = p12
end
function t1.value14(p13, p14)
    if t1.value6[p14] then
        warn("[Milka] Refusing to equip charm '" .. p14 .. "': blacklisted (known to crash).")

        return
    end

    t1.value7("EquipCharm appelé :", p13, "->", p14)
    _G.EquippedData[p13].Charm = p14
end
task.spawn(function()
    t1.value7("task.spawn démarré, attente 1.5s...")
    task.wait(1.5)
    CosmeticLibrary = v4(t1.value1:WaitForChild("Modules", 20):WaitForChild("CosmeticLibrary", 20))
    t1.value7("CosmeticLibrary =", CosmeticLibrary, "| méthode :", _G.Telemetry.CosmeticLibrary)
    ItemLibrary = v4(t1.value1.Modules:WaitForChild("ItemLibrary", 20))
    t1.value7("ItemLibrary =", ItemLibrary, "| méthode :", _G.Telemetry.ItemLibrary)
    ReplicatedClass = v4(t1.value1.Modules:WaitForChild("ReplicatedClass", 20))
    t1.value7("ReplicatedClass =", ReplicatedClass, "| méthode :", _G.Telemetry.ReplicatedClass)
    local Modules = t1.value2.PlayerScripts:WaitForChild("Modules", 15)
    local v62 = v4(Modules:WaitForChild("ClientReplicatedClasses", 15):WaitForChild("ClientFighter", 15):WaitForChild("ClientItem", 15))
    t1.value7("ClientItem =", v62)
    ClientViewModel = v4(Modules.ClientReplicatedClasses.ClientFighter.ClientItem:WaitForChild("ClientViewModel", 15))
    t1.value7("ClientViewModel =", ClientViewModel, "| méthode :", _G.Telemetry.ClientViewModel)
    local v63 = not CosmeticLibrary
    if not v63 then
        v63 = not ItemLibrary

        if not v63 then
            v63 = not ClientViewModel or not ReplicatedClass
        end
    end
    if v63 then
        warn("[!] Skin Changer: Modules failed to load. The UI will not show until libraries are found.")
        t1.value7("ARRÊT : un ou plusieurs modules sont nil, l'UI ne sera jamais construite.")

        return
    end
    t1.value7("Tous les modules sont chargés, construction de l'UI...")
    local v64 = t1.value8()
    local n1 = 0
    for _ in pairs(v64) do
        n1 += 1
    end
    t1.value7("SkinLists construite dynamiquement depuis CosmeticLibrary. Armes trouvées :", n1)
    if n1 == 0 then
        warn("[!] BuildSkinLists found no weapons in CosmeticLibrary.Cosmetics. The UI will not be built.")
        t1.value7("ARRÊT : weaponCount == 0, vérifie que Type=='Skin' et .ItemName existent toujours dans CosmeticLibrary.Cosmetics.")

        return
    end
    local v67 = t1.value9()
    t1.value7("WrapList construite dynamiquement depuis CosmeticLibrary. Wraps trouvés :", #v67)
    local v68 = t1.value10()
    t1.value7("CharmList construite dynamiquement depuis CosmeticLibrary. Charms trouvés :", #v68)
    for k in pairs(v64) do
        local v70 = k

        if not _G.EquippedData[v70] then
            _G.EquippedData[v70] = {
				Skin = "Default",
				Wrap = "None",
				Charm = "None"
			}
        else
            if not _G.EquippedData[v70].Charm then
                _G.EquippedData[v70].Charm = "None"
            end

            if t1.value5[_G.EquippedData[v70].Skin] then
                warn("[Milka] '" .. _G.EquippedData[v70].Skin .. "' was equipped on " .. v70 .. " but is blacklisted -> reset to Default.")
                _G.EquippedData[v70].Skin = "Default"
            end

            if t1.value6[_G.EquippedData[v70].Charm] then
                warn("[Milka] Charm '" .. _G.EquippedData[v70].Charm .. "' was equipped on " .. v70 .. " but is blacklisted -> reset to None.")
                _G.EquippedData[v70].Charm = "None"
            end
        end
    end
    local function v71(p15, p16)
        local v99 = CosmeticLibrary.Cosmetics[p15]

        if not v99 then
            return nil
        end

        local v100 = table.clone(v99)

        v100.Name = p15
        v100.Type = p16

        if p15 == "AKEY-47" then
            v100.IsMythical = true
            v100.BundlePath = "Bundles"

            return v100
        end

        if p15:find("Gingerbread") then
            v100.BundlePath = "Festive Skin Case"

            return v100
        end

        if p15 == "Evil Trident" or p15 == "Devil's Trident" then
            v100.DisplayName = "Evil Trident"
        end

        return v100
    end
    local GetWrap = ClientViewModel.GetWrap
    function ClientViewModel.GetWrap(p17)
        local ok, result = pcall(function()
            local ClientItem = p17.ClientItem

            if ClientItem then
                ClientItem = p17.ClientItem.Name
            end

            local v154 = ClientItem

            if ClientItem then
                v154 = _G.EquippedData[ClientItem]
            end

            if v154 then
                local Wrap = _G.EquippedData[ClientItem].Wrap

                if Wrap and Wrap ~= "None" then
                    return v71(Wrap, "Wrap")
                end
            end
        end)

        if ok and result then
            return result
        end

        return GetWrap(p17)
    end
    local new = ClientViewModel.new
    function ClientViewModel.new(p18, p19)
        pcall(function()
            if not p19 then
                return
            end

            local p19Name = p19.Name

            if not p19Name then
                return
            end

            if not _G.EquippedData[p19Name] then
                return
            end

            local v157 = rawget(p19, "ClientFighter")

            if not v157 then
                v157 = pcall(function()
                    return p19.ClientFighter
                end)

                if v157 then
                    v157 = p19.ClientFighter
                end
            end

            if not v157 or v157.Player ~= t1.value2 then
                return
            end

            local v158 = ReplicatedClass:ToEnum("Data")

            p18[v158] = p18[v158] or {}

            local Skin = _G.EquippedData[p19Name].Skin

            if Skin and Skin ~= "Default" then
                local v160 = v71(Skin, "Skin")

                if v160 then
                    local v161 = ReplicatedClass:ToEnum("Skin")
                    local v162 = ReplicatedClass:ToEnum("Name")

                    p18[v158][v161] = v160
                    p18[v158][v162] = Skin
                end
            end

            local Charm = _G.EquippedData[p19Name].Charm
            local v164 = Charm

            if Charm then
                v164 = Charm ~= "None" and not t1.value6[Charm]
            end

            if v164 then
                local v165 = v71(Charm, "Charm")

                if v165 then
                    local v166 = ReplicatedClass:ToEnum("Charm")

                    p18[v158][v166] = v165
                end
            end
        end)
        local u106
        local success, resultValue = pcall(new, p18, p19)
        if success then
            u106 = resultValue
        else
            warn("[Milka] ViewModel construction failed (likely a broken charm):", (tostring(resultValue)))
            pcall(function()
                local v167 = ReplicatedClass:ToEnum("Data")
                local v168 = ReplicatedClass:ToEnum("Charm")

                if p18[v167] then
                    p18[v167][v168] = nil
                end
            end)

            local ok, result = pcall(new, p18, p19)

            if ok then
                u106 = result
                warn("[Milka] Weapon rebuilt WITHOUT the charm after failure. Add this charm to BROKEN_CHARMS.")
            else
                warn("[Milka] Still failed even without the charm -- unrelated issue. Re-raising the original error.")
                error(resultValue, 0)
            end
        end
        task.delay(0.1, function()
            pcall(function()
                local v204 = u106

                if v204 then
                    v204 = u106._UpdateWrap
                end

                if v204 then
                    u106:_UpdateWrap()
                end
            end)
        end)

        return u106
    end
    local value3 = t1.value3
    local CreateWindow = value3.CreateWindow
    local t9 = {
		Enabled = true,
		FileName = "MilkaSkinConfig"
	}
    local v77 = CreateWindow(value3, {
		Name = "Milka Skin Changer",
		LoadingTitle = "Milka Skin Changer",
		LoadingSubtitle = "by Milka",
		Theme = "Default",
		ToggleUIKeybind = "K",
		ConfigurationSaving = t9
	}):CreateTab("Skins", 0)
    local t10 = {}
    for k in pairs(v64) do
        table.insert(t10, k)
    end
    table.sort(t10)
    local u80 = t10[1]
    local u81
    local u82
    for _, v in ipairs(t10) do
        local v85 = v

        t1.value3.Flags["Skin_" .. v85] = {
			Type = "CardGrid",
			GetSelected = function()
            local v111 = _G.EquippedData[v85]

            if v111 then
                v111 = _G.EquippedData[v85].Skin
            end

            return {
					[v111 or "Default"] = true
				}
        end,
			SetSelected = function(_, p21)
            for k, v5 in pairs(p21) do
                local v116 = k

                if v5 then
                    t1.value7("Flag RayVoid restauré pour", v85, "->", v116)
                    t1.value12(v85, v116)

                    if not (u80 == v85 and nil) then
                        return
                    end;

                    (nil):SetSelected({
							[v116] = true
						})

                    return
                end
            end
        end
		}
        t1.value3.Flags["Wrap_" .. v85] = {
			Type = "CardGrid",
			GetSelected = function()
            local v117 = _G.EquippedData[v85]

            if v117 then
                v117 = _G.EquippedData[v85].Wrap
            end

            return {
					[v117 or "None"] = true
				}
        end,
			SetSelected = function(_, p23)
            for k, v7 in pairs(p23) do
                local v122 = k

                if v7 then
                    t1.value7("Flag RayVoid restauré pour", v85, "-> Wrap", v122)
                    t1.value13(v85, v122)

                    if not (u80 == v85 and u81) then
                        return
                    end

                    u81:Set(v122)

                    return
                end
            end
        end
		}
        t1.value3.Flags["Charm_" .. v85] = {
			Type = "CardGrid",
			GetSelected = function()
            local v123 = _G.EquippedData[v85]

            if v123 then
                v123 = _G.EquippedData[v85].Charm
            end

            return {
					[v123 or "None"] = true
				}
        end,
			SetSelected = function(_, p25)
            for k, v8 in pairs(p25) do
                local v128 = k

                if v8 then
                    t1.value7("Flag RayVoid restauré pour", v85, "-> Charm", v128)
                    t1.value14(v85, v128)

                    if not (u80 == v85 and u82) then
                        return
                    end

                    u82:Set(v128)

                    return
                end
            end
        end
		}
    end
    t1.value7(#t10, "flags de config enregistrés (Skin + Wrap + Charm, par arme).");
    (function(p26)
        t1.value7("RenderTab appelé pour :", p26)
        u80 = p26
        v77:Clear()
        v77:CreateSection("Selected weapon: " .. p26)
        local v130 = v77
        local v131 = t10
        v130:CreateDropdown({
			Name = "Choose a weapon",
			Options = v131,
			CurrentOption = { p26 },
			MultipleOptions = false,
			Callback = function(p27)
            local v170 = p27[1] or p27

            t1.value7("Dropdown arme -> choix :", v170)

            if v170 and v170 ~= u80 then
                task.delay(0.5, function()
                    (nil)(v170)
                end)
            end
        end
		})
        v77:CreateSection("Skin")
        local v132 = _G.EquippedData[p26]
        if v132 then
            v132 = _G.EquippedData[p26].Skin
        end
        local v133 = v132 or "Default"
        t1.value7("Skin actuellement équipé pour", p26, ":", v133)
        local t11 = {}
        local t12 = {}
        for v138, v139 in ipairs(v64[p26]) do

            if t1.value5[v139] then
                table.insert(t12, v139)
            else
                local insert = table.insert
                local v141 = t1.value11(v139)

                insert(t11, {
					Name = v139,
					Icon = v141
				})
            end
        end
        if #t12 > 0 then
            local v142 = v77
            local v143 = table.concat(t12, ", ")

            v142:CreateParagraph({
				Title = "⚠\239\184\143 Disabled skin(s)",
				Content = v143 .. " — broken on the game's side (incomplete model structure), removed to avoid a softlock."
			})
            t1.value7("Skins masqués pour", p26, ":", table.concat(t12, ", "))
        end
        v77:CreateCardGrid({
			Items = t11,
			Columns = 4,
			Callback = function(p28)
            local Skin = _G.EquippedData[p26].Skin

            for k, v in pairs(p28) do
                local v175 = v
                local v176 = k

                if v then
                    v175 = v176 ~= _G.EquippedData[p26].Skin
                end

                if v175 then
                    Skin = v176

                    break
                end
            end

            t1.value7("CardGrid callback ->", p26, "target =", Skin, "| déjà équipé =", _G.EquippedData[p26].Skin)

            if Skin ~= _G.EquippedData[p26].Skin then
                t1.value12(p26, Skin)

                local value3_2 = t1.value3
                local v178 = p26
                local v179 = "✅ Equipped: " .. Skin

                value3_2:Notify({
						Title = v178,
						Content = v179,
						Duration = 2
					})
            end;

            (nil):SetSelected({
					[Skin] = true
				})
        end
		}):SetSelected({
			[v133] = true
		})
        v77:CreateSection("Wrap")
        local v144 = _G.EquippedData[p26]
        if v144 then
            v144 = _G.EquippedData[p26].Wrap
        end
        local v145 = v144 or "None"
        t1.value7("Wrap actuellement équipé pour", p26, ":", v145)
        v77:CreateInput({
			Name = "Search for a wrap",
			PlaceholderText = "e.g. gold, camo, neon...",
			RemoveTextAfterFocusLost = false,
			Callback = function(p29)
            local v181 = p29:lower():match("^%s*(.-)%s*$")
            local t13 = {}

            if v181 == "" then
                t13 = v67
            else
                for _, v in ipairs(v67) do
                    if v:lower():find(v181, 1, true) then
                        table.insert(t13, v)
                    end
                end
            end

            if #t13 == 0 then
                t13 = { "(no results)" }
            end

            t1.value7("Recherche wrap '" .. v181 .. "' ->", #t13, "résultat(s)")

            if u81 then
                u81:Refresh(t13)
            end
        end
		})
        local v146 = v77
        local CreateDropdown = v146.CreateDropdown
        local v148 = v67
        u81 = CreateDropdown(v146, {
			Name = "Choose a wrap",
			Options = v148,
			CurrentOption = { v145 },
			MultipleOptions = false,
			Callback = function(p30)
            local v186 = p30[1] or p30
            local v187 = v186

            if v186 then
                v187 = v186 ~= "(no results)"

                if v187 then
                    v187 = v186 ~= _G.EquippedData[p26].Wrap
                end
            end

            if v187 then
                t1.value13(p26, v186)

                local value3_3 = t1.value3
                local v189 = p26
                local Notify = value3_3.Notify
                local v191 = "✅ Wrap: " .. v186

                Notify(value3_3, {
						Title = v189,
						Content = v191,
						Duration = 2
					})
            end
        end
		})
        v77:CreateSection("Charm")
        local v149 = _G.EquippedData[p26]
        if v149 then
            v149 = _G.EquippedData[p26].Charm
        end
        local v150 = v149 or "None"
        t1.value7("Charm actuellement équipé pour", p26, ":", v150)
        v77:CreateInput({
			Name = "Search for a charm",
			PlaceholderText = "e.g. star, coin, skull...",
			RemoveTextAfterFocusLost = false,
			Callback = function(p31)
            local v193 = p31:lower():match("^%s*(.-)%s*$")
            local t14 = {}

            if v193 == "" then
                t14 = v68
            else
                for _, v in ipairs(v68) do
                    if v:lower():find(v193, 1, true) then
                        table.insert(t14, v)
                    end
                end
            end

            if #t14 == 0 then
                t14 = { "(no results)" }
            end

            t1.value7("Recherche charm '" .. v193 .. "' ->", #t14, "résultat(s)")

            if u82 then
                u82:Refresh(t14)
            end
        end
		})
        local v151 = v77
        local v152 = v68
        u82 = v151:CreateDropdown({
			Name = "Choose a charm",
			Options = v152,
			CurrentOption = { v150 },
			MultipleOptions = false,
			Callback = function(p32)
            local v198 = p32[1] or p32
            local v199 = v198

            if v198 then
                v199 = v198 ~= "(no results)"

                if v199 then
                    v199 = v198 ~= _G.EquippedData[p26].Charm
                end
            end

            if v199 then
                t1.value14(p26, v198)

                local value3_4 = t1.value3
                local v201 = p26
                local Notify = value3_4.Notify
                local v203 = "✅ Charm: " .. v198

                Notify(value3_4, {
						Title = v201,
						Content = v203,
						Duration = 2
					})
            end
        end
		})
        v77:CreateSection("Configuration")
        v77:CreateParagraph({
			Title = "Save / Load",
			Content = "Handled by RayVoid: click the ⚙\239\184\143 icon in the top bar of the window → Configurations."
		})
    end)(u80)
    print("[+] Milka Skin Changer loaded. Press K to toggle.")
    t1.value7("Construction de l'UI terminée.")
end)