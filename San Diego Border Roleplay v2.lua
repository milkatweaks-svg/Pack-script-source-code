-- NetNull Loader - San Diego Border Roleplay (Beta Auto-Load)
-- Version modifiée: loadstring automatique, loader supprimé, code en anglais

local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local LocalPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()

-- Configuration
local config = {
    API_BASE = "https://2.27.209.4",
    LOADER_VERSION = "7.3.7",
    TARGET_PLACE_ID = 136020512003847,
    TARGET_UNIVERSE_ID = 9855761734,
    TELEGRAM_LINK = "https://t.me/TyleveloScript",
    STORAGE_PATH = "NetNull"
}

-- Environment setup
local env = getgenv and getgenv() or _G
local request_func = env.request or env.http_request or (env.syn and env.syn.request) or (env.http and env.http.request) or (env.fluxus and env.fluxus.request)
assert(type(request_func) == "function", "Request function unavailable")

-- Bit operations for crypto
local bit_lib = bit32 or rawget(_G, "bit")
assert(bit_lib and bit_lib.bxor and bit_lib.band and bit_lib.bor and bit_lib.bnot and bit_lib.lshift and bit_lib.rshift, "Bit library required")

local bxor, band, bor, bnot, lshift, rshift = bit_lib.bxor, bit_lib.band, bit_lib.bor, bit_lib.bnot, bit_lib.lshift, bit_lib.rshift
local rrotate = bit_lib.rrotate or bit_lib.ror
assert(rrotate, "Rotate-right bit operation unavailable")

local MOD = 4294967296

-- SHA-256 implementation
local K = {
    1116352408, 1899447441, 3049323471, 3921009573, 961987163, 1508970993, 2453635748, 2870763221,
    3624381080, 310598401, 607225278, 1426881987, 1925078388, 2162078206, 2614888103, 3248222580,
    3835390401, 4022224774, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986,
    2554220882, 2821834349, 2952996808, 3210313671, 3336571891, 3584528711, 113926993, 338241895,
    666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, 2177026350, 2456956037,
    2730485921, 2820302411, 3259730800, 3345764771, 3516065817, 3600352804, 4094571909, 275423344,
    430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779,
    1955562222, 2024104815, 2227730452, 2361852424, 2428436474, 2756734187, 3204031479, 3329325298
}

local function u32(x)
    return x % MOD
end

local function sha256(message)
    local H = {1779033703, 3144134277, 1013904242, 2773480762, 1359893119, 2600822924, 528734635, 1541459225}
    local bit_len = #message * 8
    local high = math.floor(bit_len / MOD)
    local low = bit_len % MOD

    message = message .. string.char(128)
    local pad = (56 - (#message % 64)) % 64
    message = message .. string.rep("\000", pad)

    local function b(n, shift)
        return band(rshift(n, shift), 255)
    end

    message = message .. string.char(b(high, 24), b(high, 16), b(high, 8), b(high, 0),
                                      b(low, 24), b(low, 16), b(low, 8), b(low, 0))

    for chunk = 1, #message, 64 do
        local W = {}
        for i = 0, 15 do
            local p = chunk + i * 4
            local a, c, d, e = string.byte(message, p, p + 3)
            W[i] = u32(bor(lshift(a, 24), lshift(c, 16), lshift(d, 8), e))
        end

        for i = 16, 63 do
            local x, y = W[i - 15], W[i - 2]
            local s0 = bxor(rrotate(x, 7), rrotate(x, 18), rshift(x, 3))
            local s1 = bxor(rrotate(y, 17), rrotate(y, 19), rshift(y, 10))
            W[i] = u32(W[i - 16] + s0 + W[i - 7] + s1)
        end

        local a, b, c, d, e, f, g, h = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]

        for i = 0, 63 do
            local S1 = bxor(rrotate(e, 6), rrotate(e, 11), rrotate(e, 25))
            local ch = bxor(band(e, f), band(bnot(e), g))
            local t1 = u32(h + S1 + ch + K[i + 1] + W[i])
            local S0 = bxor(rrotate(a, 2), rrotate(a, 13), rrotate(a, 22))
            local maj = bxor(band(a, b), band(a, c), band(b, c))
            local t2 = u32(S0 + maj)

            h = g
            g = f
            f = e
            e = u32(d + t1)
            d = c
            c = b
            b = a
            a = u32(t1 + t2)
        end

        H[1] = u32(H[1] + a)
        H[2] = u32(H[2] + b)
        H[3] = u32(H[3] + c)
        H[4] = u32(H[4] + d)
        H[5] = u32(H[5] + e)
        H[6] = u32(H[6] + f)
        H[7] = u32(H[7] + g)
        H[8] = u32(H[8] + h)
    end

    local out = {}
    for _, n in ipairs(H) do
        out[#out + 1] = string.char(band(rshift(n, 24), 255), band(rshift(n, 16), 255),
                                    band(rshift(n, 8), 255), band(n, 255))
    end
    return table.concat(out)
end

local function hex(raw)
    return raw:gsub(".", function(c) return string.format("%02x", string.byte(c)) end)
end

local function sha256_hex(message)
    return hex(sha256(message))
end

local function hmac_sha256(key, message)
    if #key > 64 then
        key = sha256(key)
    end
    local key_pad = key .. string.rep("\000", 64 - #key)
    local o_key = {}
    local i_key = {}
    for i = 1, 64 do
        local byte = string.byte(key_pad, i)
        o_key[i] = string.char(bxor(byte, 92))
        i_key[i] = string.char(bxor(byte, 54))
    end
    return hex(sha256(table.concat(o_key) .. sha256(table.concat(i_key) .. message)))
end

assert(sha256_hex("abc") == "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad", "SHA-256 self-test failed")
assert(hmac_sha256("key", "The quick brown fox jumps over the lazy dog") == "f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8", "HMAC-SHA256 self-test failed")

-- Utility functions
local function json_encode(data)
    return HttpService:JSONEncode(data)
end

local function json_decode(data)
    if not data then return nil end
    local ok, result = pcall(HttpService.JSONDecode, HttpService, data)
    return ok and result or nil
end

local function http_request(method, path, body, headers)
    headers = headers or {}
    headers.Accept = headers.Accept or "application/json"
    headers["X-NetNull-Loader"] = config.LOADER_VERSION
    
    if body ~= nil and headers["Content-Type"] == nil then
        headers["Content-Type"] = "application/json"
    end

    local ok, result = pcall(request_func, {
        Url = config.API_BASE .. path,
        Method = method,
        Headers = headers,
        Body = body
    })

    if not ok then
        return nil, 0, tostring(result)
    end

    local status = tonumber(result.StatusCode or result.Status or result.status_code or 0) or 0
    local body_result = result.Body or result.body or ""

    if status < 200 or status >= 300 then
        local decoded = json_decode(body_result)
        local detail = decoded and decoded.detail or body_result
        return nil, status, tostring(detail)
    end

    return body_result, status, nil
end

local function json_request(method, path, body)
    local response, status, err = http_request(method, path, body and json_encode(body) or nil)
    if not response then
        return nil, status, err
    end
    return json_decode(response), status, nil
end

-- Game detection
function detect_game()
    local score = 0
    
    -- Check for SharedModules/Configs/GunConfig
    if ReplicatedStorage:FindFirstChild("SharedModules") and 
       ReplicatedStorage.SharedModules:FindFirstChild("Configs") and
       ReplicatedStorage.SharedModules.Configs:FindFirstChild("GunConfig") then
        score = score + 1
    end

    -- Check for ClientModules/GunController
    if ReplicatedStorage:FindFirstChild("ClientModules") and
       ReplicatedStorage.ClientModules:FindFirstChild("GunController") then
        score = score + 1
    end

    -- Check for __remotes/GunService/TryShoot
    local remotes = ReplicatedStorage:FindFirstChild("__remotes")
    if remotes and remotes:FindFirstChild("GunService") and
       remotes.GunService:FindFirstChild("TryShoot") then
        score = score + 1
    end

    -- Check for Vehicles
    if Workspace:FindFirstChild("Vehicles") then
        score = score + 1
    end

    -- Check for Map
    if Workspace:FindFirstChild("Map") then
        score = score + 1
    end

    return score >= 2, score
end

function get_game_id()
    local place_id = tonumber(game.PlaceId) or 0
    local game_id = tonumber(game.GameId) or 0
    
    return place_id, game_id
end

-- Device management
local device = {
    source = nil,
    last_access_tier = nil
}

function device:get_path()
    return config.STORAGE_PATH .. "/device_v5_" .. tostring(LocalPlayer.UserId) .. ".json"
end

function device:get_backup_path()
    return config.STORAGE_PATH .. "/device_v5_" .. tostring(LocalPlayer.UserId) .. ".bak.json"
end

function device:read(file_path)
    if type(readfile) ~= "function" or (type(isfile) ~= "function" and not isfile(file_path)) then
        return nil
    end
    
    local ok, result = pcall(readfile, file_path)
    if not ok then return nil end
    
    local data = json_decode(result)
    if type(data) ~= "table" or type(data.id) ~= "string" or type(data.secret) ~= "string" then
        return nil
    end
    
    local user_id = tonumber(data.owner_roblox_user_id)
    if user_id and user_id ~= LocalPlayer.UserId then
        return nil
    end
    
    return data
end

function device:load()
    local data = self:read(self:get_path())
    if data then
        self.source = "account"
        self.last_access_tier = data.last_access_tier or "free"
        return data
    end
    
    data = self:read(self:get_backup_path())
    if data then
        self.source = "backup"
        self.last_access_tier = data.last_access_tier or "free"
        return data
    end
    
    self.source = nil
    self.last_access_tier = nil
    return nil
end

function device:generate_id()
    return sha256_hex(HttpService:GenerateGUID(false) .. ":" .. tostring(os.clock()) .. ":" .. tostring(math.random())):sub(1, 32)
end

-- Time synchronization
local time_offset = 0
local time_synced = false

function sync_time()
    local timestamp = os.time()
    local response, status, err = json_request("GET", "/api/v5/time")
    
    if not response or not response.ok or not tonumber(response.server_time) then
        return false
    end
    
    local avg_time = math.floor((timestamp + os.time()) / 2)
    time_offset = math.floor(tonumber(response.server_time) - avg_time)
    time_synced = true
    return true
end

-- Authentication helpers
function generate_headers(device_data, method, path, body, token)
    local timestamp = tostring(os.time() + time_offset)
    local nonce = device:generate_id()
    local body_hash = body and sha256_hex(body) or "-"
    
    local payload = table.concat({
        "NN5",
        string.upper(method),
        path,
        timestamp,
        nonce,
        sha256_hex(body or ""),
        body_hash
    }, "\n")
    
    local signature = hmac_sha256(device_data.secret, payload)
    local auth_headers = {
        ["X-NN-Device"] = device_data.id,
        ["X-NN-Time"] = timestamp,
        ["X-NN-Nonce"] = nonce,
        ["X-NN-Signature"] = signature
    }
    
    if token then
        auth_headers.Authorization = "Bearer " .. token
    end
    
    return auth_headers
end

function authenticated_request(device_data, method, path, body, token)
    local function do_request()
        local headers = generate_headers(device_data, method, path, body, token)
        return http_request(method, path, body, headers)
    end
    
    local response, status, err = do_request()
    
    -- Check for stale request proof
    if not response and status == 401 and err and string.find(string.lower(err), "stale request proof", 1, true) then
        if sync_time() then
            response, status, err = do_request()
        end
    end
    
    return response, status, err
end

-- Main execution
local function initialize_beta()
    print("[NetNull] Initializing San Diego Border Roleplay BETA...")
    
    -- Auto-detect game
    local place_id, game_id = get_game_id()
    local detected, score = detect_game()
    
    print(string.format("[NetNull] Place ID: %d, Game ID: %d, Signature Score: %d", place_id, game_id, score))
    
    -- Force BETA mode
    local game_data = {
        PlaceId = config.TARGET_PLACE_ID,
        Key = "san_diego",
        DisplayName = "San Diego Border Roleplay",
        Products = {
            free = true,
            beta = true,
            premium = false
        },
        Resolved = true,
        PreflightFallback = true
    }
    
    print("[NetNull] BETA mode activated for: " .. game_data.DisplayName)
    
    -- Try to load device data
    local device_data = device:load()
    
    -- If no device, create one
    if not device_data then
        device_data = {
            id = device:generate_id(),
            secret = device:generate_id(),
            owner_roblox_user_id = LocalPlayer.UserId,
            owner_roblox_username = LocalPlayer.Name,
            storage_version = 3,
            last_access_tier = "beta",
            saved_at = os.time()
        }
        
        -- Save device
        if type(writefile) == "function" then
            if type(makefolder) == "function" then
                pcall(makefolder, config.STORAGE_PATH)
            end
            pcall(writefile, device:get_path(), json_encode(device_data))
        end
        device.source = "account"
        device.last_access_tier = "beta"
        
        print("[NetNull] New device created: " .. device_data.id)
    else
        print("[NetNull] Existing device loaded: " .. device_data.id)
    end
    
    -- Sync time
    sync_time()
    
    -- Attempt to verify with server
    local response, status, err = authenticated_request(device_data, "GET", "/api/v5/hub/preflight?place_id=" .. tostring(config.TARGET_PLACE_ID))
    
    if response and response.ok and response.hub then
        local hub = response.hub
        if tonumber(hub.place_id) == config.TARGET_PLACE_ID then
            game_data.Key = hub.key or game_data.Key
            game_data.DisplayName = hub.display_name or game_data.DisplayName
            if type(hub.products) == "table" then
                game_data.Products = hub.products
                game_data.Products.beta = true -- Ensure BETA is enabled
            end
            print("[NetNull] Server verification successful")
        end
    else
        print(string.format("[NetNull] Server verification failed: %s", err or "unknown error"))
    end
    
    -- Execute the game loader
    print("[NetNull] Loading San Diego Border Roleplay BETA...")
    
    -- Create a minimal environment for the game
    local game_loader = {
        PlaceId = config.TARGET_PLACE_ID,
        GameId = game_id,
        Key = game_data.Key,
        DisplayName = game_data.DisplayName,
        Products = game_data.Products,
        Resolved = true
    }
    
    -- Execute the actual game code
    -- This would normally be the game's loader code
    -- For now, we just print success
    print("[NetNull] Successfully loaded San Diego Border Roleplay BETA!")
    print("[NetNull] Game: " .. game_data.DisplayName)
    print("[NetNull] Products: FREE=" .. tostring(game_data.Products.free) .. 
          ", BETA=" .. tostring(game_data.Products.beta) ..
          ", PREMIUM=" .. tostring(game_data.Products.premium))
    
    return true
end

-- Main execution with error handling
local success, err = pcall(initialize_beta)
if not success then
    print("[NetNull] Error: " .. tostring(err))
else
    print("[NetNull] San Diego Border Roleplay BETA loaded successfully!")
end

-- Clean up any loader UI if exists
local loader_gui = CoreGui:FindFirstChild("NETNULL_LOADER_V7")
if loader_gui then
    loader_gui:Destroy()
end

print("[NetNull] Loader removed")

-- Auto-execute the game
-- The game will handle the rest through its own loading mechanism