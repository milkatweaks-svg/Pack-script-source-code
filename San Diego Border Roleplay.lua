-- This file was generated at discord.gg/syncrypt

local t1 = {}
local v2 = unpack or table.unpack
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

t1.value1 = game:GetService("HttpService")
t1.value2 = game:GetService("UserInputService")
t1.value3 = game:GetService("TweenService")
t1.value4 = game:GetService("Workspace")
t1.value5 = game:GetService("ReplicatedStorage")
t1.value6 = Players.LocalPlayer or Players.PlayerAdded:Wait()
local function v5(p1)
    return table.concat(p1)
end
t1.value7 = v5({
	"https",
	"://",
	"2.27",
	".209",
	".4"
})
t1.value8 = "7.3.7"
t1.value9 = 136020512003847
t1.value10 = "136020512003847"
t1.value11 = 9855761734
t1.value12 = v5({
	"https://",
	"t.me/",
	"Tylevelo",
	"Script"
})
t1.value13 = "NetNull"
local v6 = t1.value13 .. "/device_v5_" .. tostring(t1.value6.UserId) .. ".json"
local v7 = t1.value13 .. "/device_v5_" .. tostring(t1.value6.UserId) .. ".bak.json"
local v8 = t1.value13 .. "/device_v5_" .. tostring(t1.value6.UserId) .. ".enroll.lock"
local v9 = t1.value13 .. "/device_v5.json"
t1.value14 = {
	AccountFile = v6,
	BackupFile = v7,
	EnrollLockFile = v8,
	LegacyFile = v9,
	Source = nil,
	LastAccessTier = nil,
	IgnoreLegacy = false
}
t1.value15 = {
	IdentityEnforced = false,
	HubRoutingEnforced = false
}
local v10 = tonumber(game.PlaceId) or 0
local v11 = tonumber(game.GameId) or 0
local v12 = tonumber(game.PlaceId) or 0
local t2 = {
	free = false,
	beta = false,
	premium = false
}
t1.value16 = {
	RuntimePlaceId = v10,
	GameId = v11,
	PlaceId = v12,
	Resolved = false,
	Key = nil,
	DisplayName = nil,
	Products = t2,
	SignatureScore = 0,
	RouteMode = "pending",
	PreflightFallback = false
}
t1.value17 = type(getgenv) == "function" and getgenv() or _G
local request = t1.value17.request
if not request then
    request = t1.value17.http_request

    if not request then
        request = t1.value17.syn and t1.value17.syn.request

        if not request then
            request = t1.value17.http and t1.value17.http.request or t1.value17.fluxus and t1.value17.fluxus.request
        end
    end
end
t1.value18 = request
assert(type(t1.value18) == "function", "NetNull: executor request() is unavailable")

function t1.value19(p2)
    local v99 = tonumber(p2) or 0

    if v99 >= 1048576 then
        return string.format("%.2f MB", v99 / 1048576)
    end

    if v99 >= 1024 then
        return string.format("%.1f KB", v99 / 1024)
    end

    return tostring(v99) .. " B"
end
local v15 = bit32 or rawget(_G, "bit")
local _assert = assert
local v17 = v15
if v15 then
    v17 = v15.bxor

    if v17 then
        v17 = v15.band

        if v17 then
            v17 = v15.bor and (v15.bnot and (v15.lshift and v15.rshift))
        end
    end
end
_assert(v17, "NetNull: bit32/bit library is required")

local bxor = v15.bxor
local band = v15.band
local bor = v15.bor
local bnot = v15.bnot
local lshift = v15.lshift
local rshift = v15.rshift
local v24 = v15.rrotate or v15.ror
t1.value20 = {
	bxor = bxor,
	band = band,
	bor = bor,
	bnot = bnot,
	lshift = lshift,
	rshift = rshift,
	rrotate = v24
}
assert(t1.value20.rrotate, "NetNull: rotate-right bit operation is unavailable")
t1.value21 = 4294967296
t1.value22 = {
	1116352408,
	1899447441,
	3049323471,
	3921009573,
	961987163,
	1508970993,
	2453635748,
	2870763221,
	3624381080,
	310598401,
	607225278,
	1426881987,
	1925078388,
	2162078206,
	2614888103,
	3248222580,
	3835390401,
	4022224774,
	264347078,
	604807628,
	770255983,
	1249150122,
	1555081692,
	1996064986,
	2554220882,
	2821834349,
	2952996808,
	3210313671,
	3336571891,
	3584528711,
	113926993,
	338241895,
	666307205,
	773529912,
	1294757372,
	1396182291,
	1695183700,
	1986661051,
	2177026350,
	2456956037,
	2730485921,
	2820302411,
	3259730800,
	3345764771,
	3516065817,
	3600352804,
	4094571909,
	275423344,
	430227734,
	506948616,
	659060556,
	883997877,
	958139571,
	1322822218,
	1537002063,
	1747873779,
	1955562222,
	2024104815,
	2227730452,
	2361852424,
	2428436474,
	2756734187,
	3204031479,
	3329325298
}
function t1.value23(p3)
    return p3 % t1.value21
end
function t1.value24(p4)
    local t3 = {
		1779033703,
		3144134277,
		1013904242,
		2773480762,
		1359893119,
		2600822924,
		528734635,
		1541459225
	}
    local v107 = #p4 * 8
    local v108 = math.floor(v107 / t1.value21)
    local v109 = v107 % t1.value21
    local v110 = p4 .. string.char(128)
    local _string = string
    local v112 = (56 - #v110 % 64) % 64
    local v113 = (v110 .. _string.rep("\000", v112)) .. string.char(t1.value20.band(t1.value20.rshift(v108, 24), 255), t1.value20.band(t1.value20.rshift(v108, 16), 255), t1.value20.band(t1.value20.rshift(v108, 8), 255), t1.value20.band(t1.value20.rshift(v108, 0), 255), t1.value20.band(t1.value20.rshift(v109, 24), 255), t1.value20.band(t1.value20.rshift(v109, 16), 255), t1.value20.band(t1.value20.rshift(v109, 8), 255), (function(p5, p6)
        return t1.value20.band(t1.value20.rshift(p5, p6), 255)
    end)(v109, 0))

    for i = 1, #v113, 64 do
        local t4 = {}

        for j = 0, 15 do
            local v117 = i + j * 4
            local v118, v119, v120, v121 = string.byte(v113, v117, v117 + 3)

            t4[j] = t1.value23(t1.value20.bor(t1.value20.lshift(v118, 24), t1.value20.lshift(v119, 16), t1.value20.lshift(v120, 8), v121))
        end

        for j = 16, 63 do
            local v123 = t4[j - 15]
            local v124 = t4[j - 2]
            local v125 = t1.value20.bxor(t1.value20.rrotate(v123, 7), t1.value20.rrotate(v123, 18), t1.value20.rshift(v123, 3))
            local v126 = t1.value20.bxor(t1.value20.rrotate(v124, 17), t1.value20.rrotate(v124, 19), t1.value20.rshift(v124, 10))

            t4[j] = t1.value23(t4[j - 16] + v125 + t4[j - 7] + v126)
        end

        local v127 = t3[1]
        local v128 = t3[2]
        local v129 = t3[3]
        local v130 = t3[4]
        local v131 = t3[5]
        local v132 = t3[6]
        local v133 = t3[7]
        local v134 = t3[8]

        for j = 0, 63 do
            local v136 = t1.value20.bxor(t1.value20.rrotate(v131, 6), t1.value20.rrotate(v131, 11), t1.value20.rrotate(v131, 25))
            local v137 = t1.value20.bxor(t1.value20.band(v131, v132), t1.value20.band(t1.value20.bnot(v131), v133))
            local v138 = t1.value22[j + 1]
            local v139 = t4[j]
            local v140 = t1.value23(v134 + v136 + v137 + v138 + v139)
            local v141 = t1.value20.bxor(t1.value20.rrotate(v127, 2), t1.value20.rrotate(v127, 13), t1.value20.rrotate(v127, 22))
            local v142 = t1.value20.bxor(t1.value20.band(v127, v128), t1.value20.band(v127, v129), t1.value20.band(v128, v129))
            local v143 = t1.value23(v141 + v142)
            local v144 = v132

            v132 = v131
            v131 = t1.value23(v130 + v140)
            v134 = v133
            v130 = v129
            v129 = v128

            local v145 = t1.value23(v140 + v143)

            v128 = v127
            v127 = v145
            v133 = v144
        end

        local v146 = t3[1]

        t3[1] = t1.value23(v146 + v127)

        local v147 = t3[2]

        t3[2] = t1.value23(v147 + v128)

        local v148 = t3[3]

        t3[3] = t1.value23(v148 + v129)

        local v149 = t3[4]

        t3[4] = t1.value23(v149 + v130)

        local v150 = t3[5]

        t3[5] = t1.value23(v150 + v131)

        local v151 = t3[6]

        t3[6] = t1.value23(v151 + v132)

        local v152 = t3[7]

        t3[7] = t1.value23(v152 + v133)
        t3[8] = t1.value23(t3[8] + v134)
    end

    local t5 = {}

    for _, v in ipairs(t3) do
        t5[#t5 + 1] = string.char(t1.value20.band(t1.value20.rshift(v, 24), 255), t1.value20.band(t1.value20.rshift(v, 16), 255), t1.value20.band(t1.value20.rshift(v, 8), 255), t1.value20.band(v, 255))
    end

    return table.concat(t5)
end
t1.value25 = nil
function t1.value25(p7)
    return p7:gsub(".", function(p8)
        return string.format("%02x", string.byte(p8))
    end)
end
function t1.value26(p9)
    return t1.value25(t1.value24(p9))
end
function t1.value27(p10, p11)
    if #p10 > 64 then
        p10 = t1.value24(p10)
    end

    local v158 = p10 .. string.rep("\000", 64 - #p10)
    local t6 = {}
    local t7 = {}

    for i = 1, 64 do
        local byte = string.byte(v158, i)

        t7[i] = string.char(t1.value20.bxor(byte, 92))
        t6[i] = string.char(t1.value20.bxor(byte, 54))
    end

    return t1.value25(t1.value24(table.concat(t7) .. t1.value24(table.concat(t6) .. p11)))
end
assert(t1.value26("abc") == "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad", "NetNull: SHA-256 self-test failed")
assert(t1.value27("key", "The quick brown fox jumps over the lazy dog") == "f7bc83f430538424b13298e6aa6fb143ef4d59a14946175997479dbc2d1a3cd8", "NetNull: HMAC-SHA256 self-test failed")
t1.value28 = "ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad"
function t1.value29(p12)
    if type(p12) ~= "string" then
        return nil
    end

    if #p12 == 32 then
        local t8 = {}

        for i = 1, #p12 do
            t8[#t8 + 1] = string.format("%02x", string.byte(p12, i))
        end

        p12 = table.concat(t8)
    end

    local v167 = string.lower(p12):gsub("^0x", ""):gsub("%s+", "")

    if #v167 == 64 and v167:match("^[0-9a-f]+$") then
        return v167
    end

    return nil
end
t1.value30 = [[return (function()
local rawBit=bit32 or rawget(_G,"bit")
if not (rawBit and rawBit.bxor and rawBit.band and rawBit.bor and rawBit.bnot and rawBit.lshift and rawBit.rshift) then
 return nil,"bit32/bit unavailable"
end
local bit={bxor=rawBit.bxor,band=rawBit.band,bor=rawBit.bor,bnot=rawBit.bnot,lshift=rawBit.lshift,rshift=rawBit.rshift,rrotate=rawBit.rrotate or rawBit.ror}
if not bit.rrotate then return nil,"rotate-right unavailable" end
local MOD=4294967296
local K={
0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2}
local function u32(x)return x%MOD end
local function rawsha(message,yieldEvery)
 local H={0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19}
 local bitLen=#message*8 local high=math.floor(bitLen/MOD) local low=bitLen%MOD
 message=message..string.char(0x80)
 local pad=(56-(#message%64))%64 message=message..string.rep("\0",pad)
 local function b(n,shift)return bit.band(bit.rshift(n,shift),0xff)end
 message=message..string.char(b(high,24),b(high,16),b(high,8),b(high,0),b(low,24),b(low,16),b(low,8),b(low,0))
 local count=0
 for chunk=1,#message,64 do
  count=count+1
  local W={}
  for i=0,15 do local p=chunk+i*4 local a,c,d,e=string.byte(message,p,p+3) W[i]=u32(bit.bor(bit.lshift(a,24),bit.lshift(c,16),bit.lshift(d,8),e)) end
  for i=16,63 do local x,y=W[i-15],W[i-2] local s0=bit.bxor(bit.rrotate(x,7),bit.rrotate(x,18),bit.rshift(x,3)) local s1=bit.bxor(bit.rrotate(y,17),bit.rrotate(y,19),bit.rshift(y,10)) W[i]=u32(W[i-16]+s0+W[i-7]+s1) end
  local a,bv,c,d,e,f,g,h=H[1],H[2],H[3],H[4],H[5],H[6],H[7],H[8]
  for i=0,63 do local S1=bit.bxor(bit.rrotate(e,6),bit.rrotate(e,11),bit.rrotate(e,25)) local ch=bit.bxor(bit.band(e,f),bit.band(bit.bnot(e),g)) local t1=u32(h+S1+ch+K[i+1]+W[i]) local S0=bit.bxor(bit.rrotate(a,2),bit.rrotate(a,13),bit.rrotate(a,22)) local maj=bit.bxor(bit.band(a,bv),bit.band(a,c),bit.band(bv,c)) local t2=u32(S0+maj) h=g g=f f=e e=u32(d+t1) d=c c=bv bv=a a=u32(t1+t2) end
  H[1]=u32(H[1]+a) H[2]=u32(H[2]+bv) H[3]=u32(H[3]+c) H[4]=u32(H[4]+d) H[5]=u32(H[5]+e) H[6]=u32(H[6]+f) H[7]=u32(H[7]+g) H[8]=u32(H[8]+h)
  if yieldEvery and yieldEvery>0 and count%yieldEvery==0 then
   if task and task.wait then task.wait() elseif wait then wait() end
  end
 end
 local out={} for _,n in ipairs(H) do out[#out+1]=string.char(bit.band(bit.rshift(n,24),255),bit.band(bit.rshift(n,16),255),bit.band(bit.rshift(n,8),255),bit.band(n,255)) end
 return table.concat(out)
end
local function hex(raw)return(raw:gsub('.',function(c)return string.format('%02x',string.byte(c))end))end
return function(data,yieldEvery)return hex(rawsha(data,yieldEvery))end
end)()
]]
local v25, v26 = (function()
    local t9 = {}
    local t10 = {}
    local v170 = rawget(t1.value17, "crypt") or rawget(_G, "crypt")
    local t11 = {
		name = "crypt",
		value = v170
	}
    local v172 = rawget(t1.value17, "crypto") or rawget(_G, "crypto")
    local t12 = {
		t11,
		{
			name = "crypto",
			value = v172
		}
	}
    local v174 = rawget(t1.value17, "syn") or rawget(_G, "syn")
    if type(v174) == "table" then
        local v175 = #t12 + 1
        local crypt = v174.crypt

        t12[v175] = {
			name = "syn.crypt",
			value = crypt
		}
    end
    for v179, v180 in ipairs(t12) do

        local value = v180.value

        if type(value) == "table" then
            local hash = value.hash

            if type(hash) == "function" then
                local v183 = v180.name .. ".hash(data,sha256)"

                local function v184(p13)
                    return hash(p13, "sha256")
                end

                if type(v184) == "function" and not t10[v183] then
                    t10[v183] = true
                    t9[#t9 + 1] = {
						name = v183,
						fn = v184
					}
                end

                local v185 = v180.name .. ".hash(data,SHA256)"

                local function v186(p14)
                    return hash(p14, "SHA256")
                end

                if type(v186) == "function" and not t10[v185] then
                    t10[v185] = true
                    t9[#t9 + 1] = {
						name = v185,
						fn = v186
					}
                end

                local v187 = v180.name .. ".hash(data,sha-256)"

                local function v188(p15)
                    return hash(p15, "sha-256")
                end

                if type(v188) == "function" and not t10[v187] then
                    t10[v187] = true
                    t9[#t9 + 1] = {
						name = v187,
						fn = v188
					}
                end

                local v189 = v180.name .. ".hash(sha256,data)"

                local function v190(p16)
                    return hash("sha256", p16)
                end

                if type(v190) == "function" and not t10[v189] then
                    t10[v189] = true
                    t9[#t9 + 1] = {
						name = v189,
						fn = v190
					}
                end
            end

            if type(value.sha256) == "function" then
                local sha256 = value.sha256
                local v192 = v180.name .. ".sha256(data)"

                local function v193(p17)
                    return sha256(p17)
                end

                if type(v193) == "function" and not t10[v192] then
                    t10[v192] = true
                    t9[#t9 + 1] = {
						name = v192,
						fn = v193
					}
                end
            end
        end
    end
    for _, v in ipairs(t9) do
        local v196 = v
        local ok, result = pcall(v196.fn, "abc")

        if ok then
            ok = t1.value29(result)
        end

        if (ok or nil) == t1.value28 then
            return function(p18)
                local ok2, result2 = pcall(v196.fn, p18)

                if not ok2 then
                    return nil
                end

                return t1.value29(result2)
            end, v196.name
        end
    end

    return nil, nil
end)()
t1.value31 = v25
t1.value32 = nil
t1.value33 = v26
t1.value34 = nil
t1.value32 = nil
t1.value35 = nil
function t1.value35()
    if t1.value34 then
        return t1.value34, nil
    end
    if t1.value32 then
        return nil, t1.value32
    end
    local v199 = loadstring or load
    if type(v199) ~= "function" then
        t1.value32 = "loadstring/load unavailable"

        return nil, t1.value32
    end
    local v200, v201 = v199(t1.value30, "=V/Crypto/PayloadSHA256")
    if not v200 then
        t1.value32 = tostring(v201)

        return nil, t1.value32
    end
    local ok, result, v204 = pcall(v200)
    if not (not ok or type(result) ~= "function") then
        local ok3, result3 = pcall(result, "abc", nil)
        local v207 = not ok3

        if not v207 then
            v207 = t1.value29(result3) ~= t1.value28
        end

        if v207 then
            t1.value32 = "runtime SHA self-test failed"

            return nil, t1.value32
        end

        t1.value34 = result

        return t1.value34, nil
    end
    local v208 = t1
    local g209
    if not ok then
        if result then
            g209 = true
        end
    end
    if not g209 then
        result = v204

        if not result then
            result = "runtime SHA helper unavailable"
        end
    end
    g209 = false
    v208.value32 = tostring(result)

    return nil, t1.value32
end
function t1.value36(p19)
    if type(p19) ~= "string" then
        return nil, "invalid payload", 0, nil
    end

    if t1.value31 then
        local elapsed = os.clock()
        local v212 = t1.value31(p19)
        local v213 = os.clock() - elapsed

        if v212 then
            return v212, nil, v213, t1.value33
        end

        local v214 = "[V/" .. tostring("CRYPTO") .. "] " .. tostring("native provider failed at runtime; falling back")

        if type(print) == "function" then
            pcall(print, v214)
        end

        t1.value33 = nil
    end

    local v215, v216 = t1.value35()

    if not v215 then
        if not v216 then
            v216 = "no SHA provider"
        end

        return nil, v216, 0, nil
    end

    local elapsed = os.clock()
    local ok, result = pcall(v215, p19, 1024)
    local v220 = os.clock() - elapsed

    if not ok then
        return nil, tostring(result), v220, "runtime-lua"
    end

    local v221 = t1.value29(result)

    if not v221 then
        return nil, "invalid SHA result", v220, "runtime-lua"
    end

    return v221, nil, v220, "runtime-lua"
end
local value8 = t1.value8
local str = tostring(t1.value33 or "runtime-lua")

t1.value37 = nil;
(function(p20, p21)
    local v102 = "[V/" .. tostring(p20) .. "] " .. tostring(p21)

    if type(print) == "function" then
        pcall(print, v102)
    end
end)("CAPS", "loader=" .. value8 .. " build=" .. "f0b94ec7a1d6732e" .. " request=yes payload_sha=" .. str)
t1.value38 = nil
function t1.value39(p22)
    return t1.value1:JSONEncode(p22)
end
t1.value40 = nil
function t1.value40(p23)
    local _pcall = pcall
    local JSONDecode = t1.value1.JSONDecode
    local value1 = t1.value1

    if not p23 then
        p23 = ""
    end

    local v248, v249 = _pcall(JSONDecode, value1, p23)

    return v248 and v249 or nil
end
t1.value41 = nil
function t1.value41(p24, p25, p26, p27)
    if not p27 then
        p27 = {}
    end

    p27.Accept = p27.Accept or "application/json"
    p27["X-NetNull-Loader"] = t1.value8

    if p26 ~= nil and p27["Content-Type"] == nil then
        p27["Content-Type"] = "application/json"
    end

    local ok, result = pcall(t1.value18, {
		Url = t1.value7 .. p25,
		Method = p24,
		Headers = p27,
		Body = p26
	})

    if not ok then
        return nil, 0, tostring(result)
    end

    local v239 = tonumber(result.StatusCode or (result.Status or (result.status_code or 0))) or 0
    local v240 = result.Body or (result.body or "")

    if v239 < 200 or v239 >= 300 then
        local v241 = t1.value40(v240)
        local v242 = v241 and v241.detail or v240

        if type(v242) == "table" then
            v242 = v242.reason or (v242.code or t1.value39(v242))
        end

        local _tostring = tostring

        if not v242 then
            v242 = "HTTP " .. v239
        end

        return nil, v239, _tostring(v242)
    end

    return v240, v239, nil
end
function t1.value42(p28, p29, p30)
    if p30 then
        p30 = t1.value39(p30)
    end

    local v253 = p30 or nil
    local v254, v255, v256 = t1.value41(p28, p29, v253, nil)

    if not v254 then
        return nil, v255, v256
    end

    return t1.value40(v254), v255, nil
end
function t1.value43(p31)
    local u258 = p31
    local success, result = pcall(function()
        return game[u258]
    end)
    if not success then
        return 0
    end

    return tonumber(result) or 0
end
t1.value44 = nil
function t1.value44(p32, p33)
    if not p32 then
        return nil
    end
    local success, result = pcall(function()
        return p32:FindFirstChild(p33, true)
    end)
    if success then
        return result
    end

    return nil
end
t1.value45 = nil
function t1.value45()
    local n1 = 0
    local SharedModules = t1.value5:FindFirstChild("SharedModules")
    local v263 = SharedModules and SharedModules:FindFirstChild("Configs")

    if v263 and v263:FindFirstChild("GunConfig") or t1.value44(t1.value5, "GunConfig") then
        n1 += 1
    end

    local ClientModules = t1.value5:FindFirstChild("ClientModules")

    if ClientModules and ClientModules:FindFirstChild("GunController") or t1.value44(t1.value5, "GunController") then
        n1 += 1
    end

    local __remotes = t1.value5:FindFirstChild("__remotes")
    local v266 = __remotes and __remotes:FindFirstChild("GunService")

    if v266 and v266:FindFirstChild("TryShoot") or t1.value44(t1.value5, "TryShoot") then
        n1 += 1
    end

    if t1.value4:FindFirstChild("Vehicles") or t1.value44(t1.value4, "Vehicles") then
        n1 += 1
    end

    if t1.value4:FindFirstChild("Map") or t1.value44(t1.value4, "Map") then
        n1 += 1
    end

    if t1.value44(t1.value5, "ProjectileCast") then
        n1 += 1
    end

    if t1.value44(t1.value5, "CameraController") then
        n1 += 1
    end

    t1.value16.SignatureScore = n1

    return n1 >= 2, n1
end
function t1.value46()
    local v271 = os.clock() + 4

    if not (v271 <= os.clock()) then
    end

    repeat
        t1.value16.RuntimePlaceId = t1.value43("PlaceId")
        t1.value16.GameId = t1.value43("GameId")

        if t1.value16.RuntimePlaceId == t1.value9 then
            t1.value16.PlaceId = t1.value9
            t1.value16.RouteMode = "place-id"

            return true, nil, 200
        end

        if t1.value16.GameId == t1.value11 then
            t1.value16.PlaceId = t1.value9
            t1.value16.RouteMode = "universe-id"

            return true, nil, 200
        end

        local v272, v273 = t1.value45()

        if v272 then
            t1.value16.PlaceId = t1.value9
            t1.value16.RouteMode = "signature"

            local v274 = "San Diego signature score=" .. tostring(v273) .. " runtime_place=" .. tostring(t1.value16.RuntimePlaceId) .. " game_id=" .. tostring(t1.value16.GameId)
            local v275 = "[V/" .. tostring("HUB") .. "] " .. tostring(v274)

            if type(print) == "function" then
                pcall(print, v275)
            end

            return true, nil, 200
        end

        task.wait(0.15)
    until v271 <= os.clock()

    t1.value16.PlaceId = t1.value9
    t1.value16.RouteMode = "compat-forced"

    local v276 = "compat route forced; runtime_place=" .. tostring(t1.value16.RuntimePlaceId) .. " game_id=" .. tostring(t1.value16.GameId) .. " signature=" .. tostring(t1.value16.SignatureScore)
    local v277 = "[V/" .. tostring("HUB") .. "] " .. tostring(v276)

    if type(print) == "function" then
        pcall(print, v277)
    end

    return true, nil, 200
end
function t1.value47(p34, p35)
    t1.value16.PlaceId = t1.value9
    t1.value16.Key = "san_diego"
    t1.value16.DisplayName = "San Diego Border Roleplay"
    t1.value16.Products = {
		free = true,
		beta = true,
		premium = false
	}
    t1.value16.Resolved = true
    t1.value16.PreflightFallback = true

    local v280 = "public preflight fallback enabled code=" .. tostring(p35) .. " reason=" .. tostring(p34) .. " route=" .. tostring(t1.value16.RouteMode)
    local v281 = "[V/" .. tostring("HUB") .. "] " .. tostring(v280)

    if type(print) == "function" then
        pcall(print, v281)
    end

    return true, nil, 206
end
function t1.value48()
    local v282, v283, v284 = t1.value46()
    if not v282 then
        return false, v283, v284
    end
    local v285 = "/api/v5/hub/preflight?place_id=" .. t1.value10
    local n2 = 0
    local v287
    for i = 1, 3 do
        local v289 = i
        local v290, v291

        v290, v291, v287 = t1.value42("GET", v285, nil)
        n2 = v291

        if v290 and (v290.ok and type(v290.hub) == "table") then
            local hub = v290.hub

            if tonumber(hub.place_id) == t1.value9 and (type(hub.key) == "string" and type(hub.display_name) == "string") then
                t1.value16.Key = hub.key
                t1.value16.DisplayName = hub.display_name
                t1.value16.Products = type(hub.products) == "table" and hub.products or t1.value16.Products
                t1.value16.PlaceId = t1.value9
                t1.value16.Resolved = true

                return true, nil, v291
            end

            n2 = 0
            v287 = "invalid hub response"
        end

        local v293 = v291 == 0

        if not v293 then
            v293 = v291 == 429 or v291 and (v291 >= 500 and v291 <= 599)
        end

        if not v293 or v289 >= 3 then
            break
        end

        task.wait(0.3 * v289)
    end
    if n2 == 404 or (n2 == 400 or n2 == 422) then
        return t1.value47(v287, n2)
    end

    return false, v287 or "HTTP " .. tostring(n2), n2
end
t1.value37 = 0
t1.value38 = false
t1.value49 = nil
function t1.value49(p36, p37)
    local num = tonumber(p36)
    local v270 = tonumber(p37) or os.time()

    if not num or not v270 then
        return false
    end

    t1.value37 = math.floor(num - v270)
    t1.value38 = true

    return true
end
function t1.value50()
    local timestamp = os.time()
    local v295, v296, v297 = t1.value42("GET", "/api/v5/time", nil)
    local timestamp2 = os.time()

    if not v295 or (not v295.ok or not tonumber(v295.server_time)) then
        return false, v297 or "HTTP " .. tostring(v296)
    end

    local v299 = math.floor((timestamp + timestamp2) / 2)

    t1.value49(v295.server_time, v299)

    return true
end
function t1.value51()
    return t1.value26(t1.value1:GenerateGUID(false) .. ":" .. tostring(os.clock()) .. ":" .. tostring(math.random())):sub(1, 32)
end
local function v29(p38, p39, p40, p41, p42)
    local str2 = tostring(os.time() + t1.value37)
    local v306 = t1.value51()

    if not p41 then
        p41 = ""
    end

    local v307 = p42 and t1.value26(p42) or "-"
    local v308 = table.concat({
		"NN5",
		string.upper(p39),
		p40,
		str2,
		v306,
		t1.value26(p41),
		v307
	}, "\n")
    local id = p38.id
    local v310 = t1.value27(p38.secret, v308)
    local v311 = p42 and "Bearer " .. p42 or nil

    return {
		["X-NN-Device"] = id,
		["X-NN-Time"] = str2,
		["X-NN-Nonce"] = v306,
		["X-NN-Signature"] = v310,
		Authorization = v311
	}
end
function t1.value52(p43, p44)
    local v224 = p43 == 401

    if v224 then
        local find = string.find
        local lower = string.lower
        local _tostring = tostring

        if not p44 then
            p44 = ""
        end

        v224 = find(lower(_tostring(p44)), "stale request proof", 1, true) ~= nil
    end

    return v224
end
function t1.value53(p45, p46, p47, p48, p49, p50)
    local u318 = p50
    local function v319()
        local v608 = p47
        local v609 = p48
        local v610 = v29(p45, v608, v609, p49, p46)

        if u318 then
            for k, v in pairs(u318) do
                v610[k] = v
            end
        end

        return t1.value41(p47, p48, p49, v610)
    end
    local v320, v321, v322 = v319()
    if not v320 and t1.value52(v321, v322) and t1.value50() then
        v320, v321, v322 = v319()
    end

    return v320, v321, v322
end
function t1.value54(p51, p52, p53, p54, p55)
    if p55 then
        p55 = t1.value39(p55)
    end

    local v328 = p55 or nil
    local v329, v330, v331 = t1.value53(p51, p52, p53, p54, v328, nil)

    if not v329 then
        return nil, v330, v331
    end

    local v332 = t1.value40(v329)

    if v332 and v332.server_time then
        t1.value49(v332.server_time)
    end

    return v332, v330, nil
end
function t1.value14.EnsureDir()
    if type(makefolder) == "function" and (type(isfolder) == "function" and not isfolder(t1.value13)) then
        pcall(makefolder, t1.value13)
    end
end
function t1.value14.Read(p56, p57)
    if type(readfile) ~= "function" or (type(isfile) ~= "function" or not isfile(p56)) then
        return nil
    end

    local ok, result = pcall(readfile, p56)

    if not ok then
        return nil
    end

    local v341 = t1.value40(result)

    if type(v341) ~= "table" or (type(v341.id) ~= "string" or type(v341.secret) ~= "string") then
        return nil
    end

    local num = tonumber(v341.owner_roblox_user_id)

    if num and num ~= t1.value6.UserId then
        warn("[NetNull] ignored device file owned by another Roblox account:", p57, num, t1.value6.UserId)

        return nil
    end

    v341.last_access_tier = string.lower(tostring(v341.last_access_tier or "free"))
    t1.value14.LastAccessTier = v341.last_access_tier
    t1.value14.Source = p57

    return v341
end
function t1.value14.Save(p58, p59)
    if type(writefile) ~= "function" then
        return false
    end

    t1.value14.EnsureDir()

    local lower = string.lower
    local _tostring = tostring

    if not p59 then
        p59 = p58.last_access_tier or (t1.value14.LastAccessTier or "free")
    end

    local v347 = lower(_tostring(p59))

    if v347 ~= "beta" then
        v347 = "free"
    end

    local id = p58.id
    local secret = p58.secret
    local UserId = t1.value6.UserId
    local value6Name = t1.value6.Name
    local timestamp = os.time()
    local t15 = {
		id = id,
		secret = secret,
		owner_roblox_user_id = UserId,
		owner_roblox_username = value6Name,
		storage_version = 3,
		last_access_tier = v347,
		saved_at = timestamp
	}
    local v354 = t1.value39(t15)
    local ok = pcall(writefile, t1.value14.AccountFile, v354)
    local ok4 = pcall(writefile, t1.value14.BackupFile, v354)

    if ok then
        t1.value14.Source = "account"
        t1.value14.LastAccessTier = v347
    elseif ok4 then
        t1.value14.Source = "backup"
        t1.value14.LastAccessTier = v347
    end

    return ok or ok4
end
function t1.value14.Load()
    local v357 = t1.value14.Read(t1.value14.AccountFile, "account")

    if v357 then
        return v357
    end

    local v358 = t1.value14.Read(t1.value14.BackupFile, "backup")

    if v358 then
        local last_access_tier = v358.last_access_tier

        if t1.value14.Save(v358, last_access_tier) then
            t1.value14.Source = "account"

            return v358
        end

        t1.value14.Source = "backup"

        return v358
    end

    if not t1.value14.IgnoreLegacy then
        local v360 = t1.value14.Read(t1.value14.LegacyFile, "legacy")

        if v360 then
            return v360
        end
    end

    t1.value14.Source = nil
    t1.value14.LastAccessTier = nil

    return nil
end
function t1.value14.Delete(p60)
    if type(delfile) == "function" and (type(isfile) == "function" and isfile(p60)) then
        return pcall(delfile, p60)
    end

    return true
end
function t1.value14.ClearAccount()
    t1.value14.Delete(t1.value14.AccountFile)
    t1.value14.Delete(t1.value14.BackupFile)
    t1.value14.Delete(t1.value14.EnrollLockFile)

    if t1.value14.Source == "account" or t1.value14.Source == "backup" then
        t1.value14.Source = nil
    end

    t1.value14.LastAccessTier = nil
end
function t1.value14.MigrateLegacy(p61)
    if t1.value14.Source ~= "legacy" then
        return true
    end

    if not t1.value15.IdentityEnforced then
        return false
    end

    if not t1.value14.Save(p61, t1.value14.LastAccessTier or "free") then
        return false
    end

    t1.value14.Delete(t1.value14.LegacyFile)
    t1.value14.Source = "account"
    t1.value14.IgnoreLegacy = true

    return true
end
function t1.value14.TryEnrollLock()
    if type(writefile) ~= "function" or (type(readfile) ~= "function" or type(isfile) ~= "function") then
        return nil
    end

    t1.value14.EnsureDir()

    if isfile(t1.value14.EnrollLockFile) then
        local ok, result = pcall(readfile, t1.value14.EnrollLockFile)
        local v365 = ok and tonumber(string.match(tostring(result), "^(%d+)|")) or nil

        if not (v365 and math.abs(os.time() - v365) > 12) then
            return nil
        end

        t1.value14.Delete(t1.value14.EnrollLockFile)
    end

    local v366 = tostring(os.time()) .. "|" .. t1.value1:GenerateGUID(false) .. ":" .. tostring(os.clock())

    if not pcall(writefile, t1.value14.EnrollLockFile, v366) then
        return nil
    end

    task.wait(0.05)

    local ok, result = pcall(readfile, t1.value14.EnrollLockFile)

    if ok then
        ok = result == v366
    end

    if ok then
        return v366
    end

    return nil
end
function t1.value14.ReleaseEnrollLock(p62)
    if not p62 or (type(readfile) ~= "function" or type(isfile) ~= "function") then
        return
    end

    if not isfile(t1.value14.EnrollLockFile) then
        return
    end

    local ok, result = pcall(readfile, t1.value14.EnrollLockFile)

    if ok then
        ok = result == p62
    end

    if ok then
        t1.value14.Delete(t1.value14.EnrollLockFile)
    end
end
function t1.value14.WaitForPeerDevice(p63)
    local v373 = os.clock() + (tonumber(p63) or 3)

    while v373 > os.clock() do
        task.wait(0.2)

        local v374 = t1.value14.Load()

        if v374 then
            return v374
        end

        if type(isfile) == "function" and not isfile(t1.value14.EnrollLockFile) then
            return nil
        end
    end

    return nil
end
function t1.value15.CredentialMessage(p64, p65)
    local lower = string.lower
    local _tostring = tostring

    if not p65 then
        p65 = ""
    end

    local v379 = lower(_tostring(p65))

    if string.find(v379, "beta device limit reached", 1, true) then
        return "BETA уже привязана к другому устройству. Используйте recovery-код."
    end

    if string.find(v379, "recovery account mismatch", 1, true) then
        return "Recovery-код выдан для другого Roblox-аккаунта."
    end

    if string.find(v379, "device account mismatch", 1, true) then
        return "Устройство привязано к другому Roblox-аккаунту."
    end

    if string.find(v379, "recovery unavailable", 1, true) then
        return "Recovery-код недействителен, истёк или уже использован."
    end

    if string.find(v379, "credential unavailable", 1, true) or p64 == 403 then
        return "Код недействителен, истёк или уже использован."
    end

    if p64 == 409 then
        return "Не удалось перепривязать BETA. Нужен recovery-код."
    end

    return "Не удалось проверить BETA-код. Попробуйте ещё раз."
end
function t1.value15.SessionMessage(p66, p67)
    local lower = string.lower
    local _tostring = tostring

    if not p67 then
        p67 = ""
    end

    local t16 = { _tostring(p67) }
    local v385 = lower(v2(t16))

    if p66 == 0 then
        return "Не удалось связаться с сервером. Сохранённая привязка не удалена — попробуйте ещё раз."
    end

    if string.find(v385, "unsupported place", 1, true) then
        return "V HUB: этот Roblox-плейс пока не поддерживается."
    end

    if string.find(v385, "place id required", 1, true) then
        return "V HUB: сервер не получил PlaceId. Обновите Loader."
    end

    if p66 == 426 or string.find(v385, "loader upgrade required", 1, true) then
        return "Нужна новая версия Loader. Сохранённая привязка не удалена."
    end

    if p66 == 429 then
        return "Слишком много запросов. Подождите немного и повторите — привязка сохранена."
    end

    if p66 >= 500 and p66 <= 599 then
        return "Временная ошибка сервера. Привязка сохранена, повторите позже."
    end

    if string.find(v385, "account mismatch", 1, true) then
        return "Привязка устройства не совпадает с текущим Roblox-аккаунтом. Используйте recovery или ручной сброс."
    end

    if p66 == 401 or p66 == 403 then
        return "Сохранённое устройство отклонено сервером. Не вводите новый BETA-ключ: для старой BETA используйте recovery-код."
    end

    if p66 == 409 then
        return "Не удалось подтвердить сохранённую привязку. Не сбрасывайте её автоматически; при необходимости используйте recovery."
    end

    return "Не удалось подтвердить устройство. Привязка сохранена — повторите запуск."
end
if type(gethui) == "function" then
    local ok, result = pcall(gethui)

    if ok and result then
        CoreGui = result
    end
end
local NETNULL_LOADER_V7 = CoreGui:FindFirstChild("NETNULL_LOADER_V7")

if NETNULL_LOADER_V7 then
    NETNULL_LOADER_V7:Destroy()
end
local color3 = Color3.fromRGB(3, 5, 7)
local color3_2 = Color3.fromRGB(7, 10, 14)
local color3_3 = Color3.fromRGB(7, 10, 14)
local color3_4 = Color3.fromRGB(10, 14, 19)
local color3_5 = Color3.fromRGB(12, 17, 23)
local color3_6 = Color3.fromRGB(16, 23, 31)
local color3_7 = Color3.fromRGB(35, 52, 66)
local color3_8 = Color3.fromRGB(22, 33, 43)
local color3_9 = Color3.fromRGB(83, 190, 255)
local color3_10 = Color3.fromRGB(143, 220, 255)
local color3_11 = Color3.fromRGB(12, 55, 82)
local color3_12 = Color3.fromRGB(247, 250, 252)
local color3_13 = Color3.fromRGB(203, 215, 223)
local color3_14 = Color3.fromRGB(126, 144, 156)
local color3_15 = Color3.fromRGB(84, 101, 113)
local color3_16 = Color3.fromRGB(86, 230, 188)
local color3_17 = Color3.fromRGB(255, 102, 121)
local color3_18 = Color3.fromRGB(255, 193, 96)
local color3_19 = Color3.fromRGB(27, 21, 13)
local color3_20 = Color3.fromRGB(80, 59, 25)

t1.value55 = {
	bg = color3,
	bg2 = color3_2,
	panel = color3_3,
	panel2 = color3_4,
	card = color3_5,
	cardHover = color3_6,
	border = color3_7,
	borderSoft = color3_8,
	accent = color3_9,
	accent2 = color3_10,
	accentDeep = color3_11,
	text = color3_12,
	textSoft = color3_13,
	muted = color3_14,
	dim = color3_15,
	success = color3_16,
	danger = color3_17,
	warning = color3_18,
	warningBg = color3_19,
	warningBorder = color3_20
}
function t1.value56(p68, p69, p70, p71, p72)
    local value3 = t1.value3
    local new = TweenInfo.new
    local v393 = p69 or 0.16

    if not p71 then
        p71 = Enum.EasingStyle.Quad
    end

    local v394 = value3:Create(p68, new(v393, p71, p72 or Enum.EasingDirection.Out), p70)

    v394:Play()

    return v394
end
function t1.value57(p73, p74)
    local UICorner = Instance.new("UICorner")

    UICorner.CornerRadius = UDim.new(0, p74 or 10)
    UICorner.Parent = p73

    return UICorner
end
function t1.value58(p75, p76, p77, p78)
    local UIStroke = Instance.new("UIStroke")

    if not p76 then
        p76 = t1.value55.border
    end

    UIStroke.Color = p76
    UIStroke.Thickness = p77 or 1
    UIStroke.Transparency = p78 or 0
    UIStroke.Parent = p75

    return UIStroke
end
function t1.value59(p79, p80, p81, p82)
    local UIGradient = Instance.new("UIGradient")

    UIGradient.Color = ColorSequence.new(p80, p81)
    UIGradient.Rotation = p82 or 0
    UIGradient.Parent = p79

    return UIGradient
end
function t1.value60(p83, p84, p85, p86, p87, p88, p89)
    local TextLabel = Instance.new("TextLabel")

    TextLabel.Parent = p83
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = p85

    if not p86 then
        p86 = UDim2.new()
    end

    TextLabel.Position = p86
    TextLabel.Font = p87 or Enum.Font.GothamMedium
    TextLabel.TextSize = p88 or 13
    TextLabel.TextColor3 = p89 or t1.value55.text
    TextLabel.Text = p84 or ""
    TextLabel.TextXAlignment = Enum.TextXAlignment.Left
    TextLabel.TextYAlignment = Enum.TextYAlignment.Center

    return TextLabel
end
local function v53(p90, p91, p92, p93, p94)
    local TextButton = Instance.new("TextButton")

    TextButton.Parent = p90
    TextButton.Size = p92

    if not p93 then
        p93 = UDim2.new()
    end

    TextButton.Position = p93
    TextButton.BorderSizePixel = 0
    TextButton.AutoButtonColor = false
    TextButton.Font = Enum.Font.GothamMedium
    TextButton.TextSize = 13
    TextButton.Text = p91
    TextButton.TextColor3 = t1.value55.text
    TextButton.BackgroundColor3 = p94 == "accent" and Color3.fromRGB(10, 31, 43) or t1.value55.card
    t1.value57(TextButton, 10)

    local v428 = t1.value58(TextButton, p94 == "accent" and t1.value55.accent or t1.value55.borderSoft, 1, p94 ~= "accent" and 0.25 or 0.15)

    TextButton.MouseEnter:Connect(function()
        if not TextButton.Active then
            return
        end

        if p94 == "accent" then
            t1.value56(TextButton, 0.12, {
				BackgroundColor3 = Color3.fromRGB(13, 43, 59)
			})
            t1.value56(v428, 0.12, {
				Color = t1.value55.accent2,
				Transparency = 0
			})

            return
        end

        t1.value56(TextButton, 0.12, {
			BackgroundColor3 = t1.value55.cardHover
		})
        t1.value56(v428, 0.12, {
			Color = t1.value55.border,
			Transparency = 0
		})
    end)
    TextButton.MouseLeave:Connect(function()
        if p94 == "accent" then
            t1.value56(TextButton, 0.12, {
				BackgroundColor3 = Color3.fromRGB(10, 31, 43)
			})
            t1.value56(v428, 0.12, {
				Color = t1.value55.accent,
				Transparency = 0.15
			})

            return
        end

        t1.value56(TextButton, 0.12, {
			BackgroundColor3 = t1.value55.card
		})
        t1.value56(v428, 0.12, {
			Color = t1.value55.borderSoft,
			Transparency = 0.25
		})
    end)

    return TextButton, v428
end
t1.value61 = Instance.new("ScreenGui")
t1.value61.Name = "NETNULL_LOADER_V7"
t1.value61.ResetOnSpawn = false
t1.value61.IgnoreGuiInset = false
t1.value61.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
t1.value61.DisplayOrder = 100000
t1.value61.Parent = CoreGui
t1.value62 = Instance.new("Frame")
t1.value62.Parent = t1.value61
t1.value62.AnchorPoint = Vector2.new(0.5, 0.5)
t1.value62.Position = UDim2.fromScale(0.5, 0.5)
t1.value62.Size = UDim2.fromOffset(640, 472)
t1.value62.BackgroundColor3 = t1.value55.panel
t1.value62.BorderSizePixel = 0
t1.value62.ClipsDescendants = true
t1.value62.ZIndex = 2
t1.value57(t1.value62, 20)
t1.value58(t1.value62, t1.value55.border, 1, 0.18)
t1.value59(t1.value62, t1.value55.panel, t1.value55.bg, 115)
t1.value63 = Instance.new("UIScale")
t1.value63.Parent = t1.value62
local function v54()
    local CurrentCamera = t1.value4.CurrentCamera

    if not CurrentCamera then
        return
    end

    local ViewportSize = CurrentCamera.ViewportSize
    local v431 = not t1.value2.TouchEnabled and 28 or 36
    local v432 = math.min((ViewportSize.X - v431) / 640, (ViewportSize.Y - v431) / 472, 1)

    t1.value63.Scale = math.max(v432, 0.3)
end
v54()
if t1.value4.CurrentCamera then
    t1.value4.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(v54)
end
local Frame = Instance.new("Frame")

Frame.Parent = t1.value62
Frame.Position = UDim2.fromOffset(24, 0)
Frame.Size = UDim2.fromOffset(94, 2)
Frame.BackgroundColor3 = t1.value55.accent
Frame.BorderSizePixel = 0
Frame.ZIndex = 4
local UIGradient = Instance.new("UIGradient")

UIGradient.Parent = Frame
UIGradient.Color = ColorSequence.new({
	ColorSequenceKeypoint.new(0, t1.value55.accent2),
	ColorSequenceKeypoint.new(0.55, t1.value55.accent),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(24, 48, 61))
})

local TextLabel = Instance.new("TextLabel")

TextLabel.Parent = t1.value62
TextLabel.Position = UDim2.fromOffset(28, 22)
TextLabel.Size = UDim2.fromOffset(44, 44)
TextLabel.BackgroundColor3 = Color3.fromRGB(8, 17, 23)
TextLabel.BorderSizePixel = 0
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextSize = 28
TextLabel.Text = "V"
TextLabel.TextColor3 = t1.value55.text
TextLabel.TextXAlignment = Enum.TextXAlignment.Center
TextLabel.TextYAlignment = Enum.TextYAlignment.Center
TextLabel.ZIndex = 5
t1.value57(TextLabel, 12)
t1.value58(TextLabel, t1.value55.accent, 1, 0.28)
t1.value60(t1.value62, "LOADER  " .. t1.value8, UDim2.fromOffset(190, 24), UDim2.fromOffset(84, 32), Enum.Font.GothamMedium, 12, t1.value55.muted).ZIndex = 5
t1.value64 = Instance.new("Frame")
t1.value64.Parent = t1.value62
t1.value64.AnchorPoint = Vector2.new(1, 0)
t1.value64.Position = UDim2.new(1, -28, 0, 26)
t1.value64.Size = UDim2.fromOffset(108, 38)
t1.value64.BackgroundColor3 = Color3.fromRGB(8, 24, 32)
t1.value64.BorderSizePixel = 0
t1.value64.ZIndex = 5
t1.value57(t1.value64, 11)
t1.value65 = t1.value58(t1.value64, t1.value55.border, 1, 0.2)
t1.value66 = Instance.new("Frame")
t1.value66.Parent = t1.value64
t1.value66.Position = UDim2.fromOffset(13, 14)
t1.value66.Size = UDim2.fromOffset(9, 9)
t1.value66.BackgroundColor3 = t1.value55.accent
t1.value66.BorderSizePixel = 0
t1.value66.ZIndex = 6
t1.value57(t1.value66, 99)
t1.value67 = t1.value60(t1.value64, "FREE", UDim2.new(1, -35, 1, 0), UDim2.fromOffset(31, 0), Enum.Font.GothamBold, 12, t1.value55.accent2)
t1.value67.ZIndex = 6
local Frame2 = Instance.new("Frame")

Frame2.Parent = t1.value62
Frame2.Position = UDim2.fromOffset(28, 92)
Frame2.Size = UDim2.new(1, -56, 0, 82)
Frame2.BackgroundColor3 = t1.value55.bg2
Frame2.BorderSizePixel = 0
Frame2.ZIndex = 4
t1.value57(Frame2, 13)
t1.value58(Frame2, t1.value55.borderSoft, 1, 0.35)
t1.value60(Frame2, "ПРОФИЛЬ", UDim2.fromOffset(110, 19), UDim2.fromOffset(17, 10), Enum.Font.GothamBold, 10, t1.value55.dim).ZIndex = 5
local v59 = t1.value60(Frame2, tostring(t1.value6.Name), UDim2.new(0.52, -18, 0, 30), UDim2.fromOffset(17, 31), Enum.Font.GothamSemibold, 16, t1.value55.text)

v59.ZIndex = 5
v59.TextTruncate = Enum.TextTruncate.AtEnd
local Frame3 = Instance.new("Frame")

Frame3.Parent = Frame2
Frame3.AnchorPoint = Vector2.new(1, 0.5)
Frame3.Position = UDim2.new(1, -16, 0.5, 0)
Frame3.Size = UDim2.fromOffset(260, 48)
Frame3.BackgroundTransparency = 1
Frame3.ZIndex = 5
t1.value68 = Instance.new("Frame")
t1.value68.Parent = Frame3
t1.value68.Position = UDim2.fromOffset(0, 18)
t1.value68.Size = UDim2.fromOffset(8, 8)
t1.value68.BackgroundColor3 = t1.value55.warning
t1.value68.BorderSizePixel = 0
t1.value68.ZIndex = 6
t1.value57(t1.value68, 99)
t1.value69 = t1.value60(Frame3, "Подключение...", UDim2.new(1, -20, 1, 0), UDim2.fromOffset(20, 0), Enum.Font.GothamMedium, 13, t1.value55.textSoft)
t1.value69.ZIndex = 6
t1.value69.TextXAlignment = Enum.TextXAlignment.Left
t1.value69.TextWrapped = true
t1.value70 = t1.value60(t1.value62, "V HUB • ОПРЕДЕЛЕНИЕ ИГРЫ...", UDim2.new(1, -56, 0, 20), UDim2.fromOffset(28, 194), Enum.Font.GothamBold, 10, t1.value55.dim)
t1.value70.ZIndex = 5
local v61, _ = v53(t1.value62, "FREE", UDim2.fromOffset(180, 76), UDim2.fromOffset(28, 220), "normal")

t1.value71 = v61
t1.value71.ZIndex = 5
t1.value71.Text = ""
t1.value60(t1.value71, "FREE", UDim2.new(1, -32, 0, 30), UDim2.fromOffset(18, 10), Enum.Font.GothamBold, 16, t1.value55.text).ZIndex = 6
t1.value60(t1.value71, "Основной доступ", UDim2.new(1, -32, 0, 22), UDim2.fromOffset(18, 42), Enum.Font.GothamMedium, 11, t1.value55.muted).ZIndex = 6
local v63 = t1.value60(t1.value71, "›", UDim2.fromOffset(24, 40), UDim2.new(1, -40, 0.5, -20), Enum.Font.GothamBold, 24, t1.value55.accent)

v63.ZIndex = 6
v63.TextXAlignment = Enum.TextXAlignment.Center
local v64, _ = v53(t1.value62, "BETA", UDim2.fromOffset(180, 76), UDim2.fromOffset(230, 220), "accent")

t1.value72 = v64
t1.value72.ZIndex = 5
t1.value72.Text = ""
t1.value60(t1.value72, "BETA", UDim2.new(1, -32, 0, 30), UDim2.fromOffset(18, 10), Enum.Font.GothamBold, 16, t1.value55.text).ZIndex = 6
t1.value73 = t1.value60(t1.value72, "Расширенный доступ", UDim2.new(1, -32, 0, 22), UDim2.fromOffset(18, 42), Enum.Font.GothamMedium, 11, t1.value55.accent2)
t1.value73.ZIndex = 6
local v66 = t1.value60(t1.value72, "›", UDim2.fromOffset(24, 40), UDim2.new(1, -40, 0.5, -20), Enum.Font.GothamBold, 24, t1.value55.accent2)

v66.ZIndex = 6
v66.TextXAlignment = Enum.TextXAlignment.Center
local v67, v68 = v53(t1.value62, "PREMIUM", UDim2.fromOffset(180, 76), UDim2.fromOffset(432, 220), "normal")

t1.value74 = v67
t1.value74.ZIndex = 5
t1.value74.Text = ""
t1.value74.Active = false
t1.value74.BackgroundColor3 = Color3.fromRGB(9, 12, 16)
v68.Color = t1.value55.borderSoft
v68.Transparency = 0.55
t1.value60(t1.value74, "PREMIUM", UDim2.new(1, -32, 0, 30), UDim2.fromOffset(18, 10), Enum.Font.GothamBold, 16, t1.value55.muted).ZIndex = 6
t1.value75 = t1.value60(t1.value74, "Скоро", UDim2.new(1, -32, 0, 22), UDim2.fromOffset(18, 42), Enum.Font.GothamMedium, 11, t1.value55.dim)
t1.value75.ZIndex = 6
local v69 = t1.value60(t1.value74, "×", UDim2.fromOffset(24, 40), UDim2.new(1, -40, 0.5, -20), Enum.Font.GothamBold, 20, t1.value55.dim)

v69.ZIndex = 6
v69.TextXAlignment = Enum.TextXAlignment.Center
function t1.value76(p95)
    if type(p95) ~= "table" then
        return
    end

    if type(p95.key) == "string" then
        t1.value16.Key = p95.key
    end

    if type(p95.display_name) == "string" then
        t1.value16.DisplayName = p95.display_name
    end

    if tonumber(p95.place_id) then
        t1.value16.PlaceId = tonumber(p95.place_id)
    end

    if type(p95.products) == "table" then
        t1.value16.Products = p95.products
    end

    t1.value16.Resolved = t1.value16.Key ~= nil
    t1.value70.Text = string.upper(tostring(t1.value16.DisplayName or (t1.value16.Key or "V HUB"))) .. " • ЗАПУСК"

    local v434 = t1.value16.Products and t1.value16.Products.premium == true

    t1.value74.Active = false
    t1.value75.Text = not v434 and "Скоро" or "Ожидает клиента"
end
t1.value77 = Instance.new("Frame")
t1.value77.Parent = t1.value62
t1.value77.Position = UDim2.fromOffset(28, 314)
t1.value77.Size = UDim2.new(1, -56, 0, 78)
t1.value77.BackgroundColor3 = t1.value55.bg2
t1.value77.BorderSizePixel = 0
t1.value77.ZIndex = 4
t1.value57(t1.value77, 13)
t1.value58(t1.value77, t1.value55.borderSoft, 1, 0.35)
t1.value60(t1.value77, "BETA ACCESS", UDim2.fromOffset(120, 18), UDim2.fromOffset(15, 9), Enum.Font.GothamBold, 10, t1.value55.dim).ZIndex = 5
t1.value78 = Instance.new("TextBox")
t1.value78.Parent = t1.value77
t1.value78.Position = UDim2.fromOffset(15, 34)
t1.value78.Size = UDim2.new(1, -164, 0, 32)
t1.value78.BackgroundColor3 = t1.value55.card
t1.value78.BorderSizePixel = 0
t1.value78.ClearTextOnFocus = false
t1.value78.Font = Enum.Font.Code
t1.value78.TextSize = 12
t1.value78.TextColor3 = t1.value55.textSoft
t1.value78.PlaceholderColor3 = t1.value55.dim
t1.value78.PlaceholderText = "BETA / recovery code"
t1.value78.Text = ""
t1.value78.ZIndex = 5
t1.value57(t1.value78, 8)
t1.value58(t1.value78, t1.value55.borderSoft, 1, 0.35)
t1.value79 = v53(t1.value77, "Активировать", UDim2.fromOffset(132, 32), UDim2.new(1, -147, 0, 34), "accent")
t1.value79.ZIndex = 5
t1.value80 = Instance.new("Frame")
t1.value80.Parent = t1.value62
t1.value80.Position = t1.value77.Position
t1.value80.Size = t1.value77.Size
t1.value80.BackgroundColor3 = Color3.fromRGB(8, 31, 35)
t1.value80.BorderSizePixel = 0
t1.value80.Visible = false
t1.value80.ZIndex = 4
t1.value57(t1.value80, 13)
t1.value58(t1.value80, t1.value55.success, 1, 0.55)

local Frame4 = Instance.new("Frame")

Frame4.Parent = t1.value80
Frame4.Position = UDim2.fromOffset(16, 28)
Frame4.Size = UDim2.fromOffset(10, 10)
Frame4.BackgroundColor3 = t1.value55.success
Frame4.BorderSizePixel = 0
Frame4.ZIndex = 5
t1.value57(Frame4, 99)
t1.value60(t1.value80, "BETA активирована", UDim2.fromOffset(260, 26), UDim2.fromOffset(40, 18), Enum.Font.GothamSemibold, 14, t1.value55.text).ZIndex = 5
t1.value60(t1.value80, "Код больше не требуется на этом устройстве", UDim2.new(1, -58, 0, 22), UDim2.fromOffset(40, 43), Enum.Font.GothamMedium, 11, t1.value55.muted).ZIndex = 5
local Frame5 = Instance.new("Frame")

Frame5.Parent = t1.value62
Frame5.Position = UDim2.fromOffset(28, 410)
Frame5.Size = UDim2.new(1, -56, 0, 36)
Frame5.BackgroundTransparency = 1
Frame5.ZIndex = 4
t1.value81 = v53(Frame5, "Инструкция", UDim2.fromOffset(140, 36), UDim2.fromOffset(0, 0), "normal")
t1.value81.ZIndex = 5
t1.value82 = v53(Frame5, "Устройство", UDim2.fromOffset(140, 36), UDim2.fromOffset(152, 0), "normal")
t1.value82.ZIndex = 5
local v72 = t1.value60(Frame5, "V", UDim2.fromOffset(80, 36), UDim2.new(1, -80, 0, 0), Enum.Font.GothamBold, 12, t1.value55.dim)

v72.ZIndex = 5
v72.TextXAlignment = Enum.TextXAlignment.Right
t1.value83 = Instance.new("Frame")
t1.value83.Parent = t1.value61
t1.value83.Size = UDim2.fromScale(1, 1)
t1.value83.BackgroundColor3 = Color3.new(0, 0, 0)
t1.value83.BackgroundTransparency = 0.28
t1.value83.BorderSizePixel = 0
t1.value83.Visible = false
t1.value83.Active = true
t1.value83.ZIndex = 50
local function v73(p96)
    local Frame6 = Instance.new("Frame")

    Frame6.Parent = t1.value83
    Frame6.AnchorPoint = Vector2.new(0.5, 0.5)
    Frame6.Position = UDim2.fromScale(0.5, 0.5)
    Frame6.Size = p96
    Frame6.BackgroundColor3 = t1.value55.panel
    Frame6.BorderSizePixel = 0
    Frame6.ZIndex = 51
    t1.value57(Frame6, 18)
    t1.value58(Frame6, t1.value55.border, 1, 0.05)
    t1.value59(Frame6, t1.value55.panel, t1.value55.bg, 115)

    local UIScale = Instance.new("UIScale")

    UIScale.Parent = Frame6

    local function v438()
        local CurrentCamera = t1.value4.CurrentCamera

        if not CurrentCamera then
            return
        end

        local ViewportSize = CurrentCamera.ViewportSize
        local XOffset = p96.X.Offset
        local YOffset = p96.Y.Offset
        local TouchEnabled = t1.value2.TouchEnabled
        local _math = math
        local v619 = not TouchEnabled and 24 or 56

        UIScale.Scale = math.max(_math.min((ViewportSize.X - v619) / XOffset, (ViewportSize.Y - v619) / YOffset, 1), 0.3)
    end

    v438()

    if t1.value4.CurrentCamera then
        t1.value4.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(v438)
    end

    return Frame6
end
t1.value84 = v73(v2({ UDim2.fromOffset(470, 300) }))
t1.value84.Visible = false
t1.value60(t1.value84, "Устройство", UDim2.fromOffset(280, 34), UDim2.fromOffset(24, 18), Enum.Font.GothamBold, 22, t1.value55.text).ZIndex = 52
local v74 = t1.value60(t1.value84, "Используйте этот раздел только для поддержки или перепривязки.", UDim2.new(1, -48, 0, 42), UDim2.fromOffset(24, 54), Enum.Font.GothamMedium, 12, t1.value55.muted)

v74.ZIndex = 52
v74.TextWrapped = true
v74.TextYAlignment = Enum.TextYAlignment.Top
t1.value85 = Instance.new("TextBox")
t1.value85.Parent = t1.value84
t1.value85.Position = UDim2.fromOffset(24, 102)
t1.value85.Size = UDim2.new(1, -48, 0, 42)
t1.value85.BackgroundColor3 = t1.value55.card
t1.value85.BorderSizePixel = 0
t1.value85.ClearTextOnFocus = false
t1.value85.TextEditable = false
t1.value85.Font = Enum.Font.Code
t1.value85.TextSize = 11
t1.value85.TextColor3 = t1.value55.textSoft
t1.value85.Text = "Device ID unavailable"
t1.value85.ZIndex = 52
t1.value57(t1.value85, 9)
t1.value58(t1.value85, t1.value55.borderSoft, 1, 0.35)
t1.value86 = v53(t1.value84, "Копировать ID", UDim2.fromOffset(202, 38), UDim2.fromOffset(24, 158), "normal")
t1.value86.ZIndex = 52
t1.value87 = v53(t1.value84, "Сбросить устройство", UDim2.fromOffset(202, 38), UDim2.new(1, -226, 0, 158), "normal")
t1.value87.ZIndex = 52
local v75 = t1.value60(t1.value84, "После сброса BETA потребуется новый recovery-код.", UDim2.new(1, -48, 0, 36), UDim2.fromOffset(24, 207), Enum.Font.GothamMedium, 11, t1.value55.warning)

v75.ZIndex = 52
v75.TextWrapped = true
local v76 = v53(t1.value84, "Закрыть", UDim2.new(1, -48, 0, 36), UDim2.fromOffset(24, 246), "accent")

v76.ZIndex = 52
t1.value88 = v73(v2({ UDim2.fromOffset(540, 326) }))
t1.value88.Visible = false
local Frame7 = Instance.new("Frame")

Frame7.Parent = t1.value88
Frame7.Size = UDim2.new(1, 0, 0, 86)
Frame7.BackgroundColor3 = Color3.fromRGB(7, 20, 29)
Frame7.BorderSizePixel = 0
Frame7.ZIndex = 52
t1.value57(Frame7, 18)
t1.value59(Frame7, Color3.fromRGB(8, 28, 40), Color3.fromRGB(7, 14, 21), 0)

local Frame8 = Instance.new("Frame")

Frame8.Parent = Frame7
Frame8.Position = UDim2.new(0, 0, 1, -18)
Frame8.Size = UDim2.new(1, 0, 0, 18)
Frame8.BackgroundColor3 = Color3.fromRGB(7, 14, 21)
Frame8.BorderSizePixel = 0
Frame8.ZIndex = 52
t1.value60(t1.value88, "V", UDim2.fromOffset(56, 38), UDim2.fromOffset(24, 15), Enum.Font.GothamBold, 29, t1.value55.text).ZIndex = 53
t1.value60(t1.value88, "FREE START", UDim2.fromOffset(122, 24), UDim2.fromOffset(78, 20), Enum.Font.GothamBold, 10, t1.value55.accent2).ZIndex = 53
t1.value60(t1.value88, "Перед запуском FREE", UDim2.new(1, -48, 0, 30), UDim2.fromOffset(24, 102), Enum.Font.GothamBold, 21, t1.value55.text).ZIndex = 52
local v79 = t1.value60(t1.value88, "Подпишись на наш Telegram. Там обновления, фиксы и новые функции V.", UDim2.new(1, -48, 0, 42), UDim2.fromOffset(24, 136), Enum.Font.GothamMedium, 12, t1.value55.muted)

v79.ZIndex = 52
v79.TextWrapped = true
v79.TextYAlignment = Enum.TextYAlignment.Top
local TextBox = Instance.new("TextBox")

TextBox.Parent = t1.value88
TextBox.Position = UDim2.fromOffset(24, 188)
TextBox.Size = UDim2.new(1, -184, 0, 38)
TextBox.BackgroundColor3 = t1.value55.card
TextBox.BorderSizePixel = 0
TextBox.ClearTextOnFocus = false
TextBox.TextEditable = false
TextBox.Font = Enum.Font.Code
TextBox.TextSize = 12
TextBox.TextColor3 = t1.value55.accent2
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.Text = t1.value12
TextBox.ZIndex = 52
t1.value57(TextBox, 9)
t1.value58(TextBox, t1.value55.borderSoft, 1, 0.28)
t1.value89 = v53(t1.value88, "Скопировать", UDim2.fromOffset(124, 38), UDim2.new(1, -148, 0, 188), "accent")
t1.value89.ZIndex = 52
t1.value90 = t1.value60(t1.value88, "Нажми на ссылку или кнопку, чтобы скопировать её.", UDim2.new(1, -48, 0, 20), UDim2.fromOffset(24, 232), Enum.Font.GothamMedium, 10, t1.value55.dim)
t1.value90.ZIndex = 52
local Frame9 = Instance.new("Frame")

Frame9.Parent = t1.value88
Frame9.Position = UDim2.fromOffset(24, 261)
Frame9.Size = UDim2.new(1, -48, 0, 5)
Frame9.BackgroundColor3 = Color3.fromRGB(20, 31, 40)
Frame9.BorderSizePixel = 0
Frame9.ClipsDescendants = true
Frame9.ZIndex = 52
t1.value57(Frame9, 99)
t1.value91 = Instance.new("Frame")
t1.value91.Parent = Frame9
t1.value91.Size = UDim2.new(0, 0, 1, 0)
t1.value91.BackgroundColor3 = t1.value55.accent
t1.value91.BorderSizePixel = 0
t1.value91.ZIndex = 53
t1.value57(t1.value91, 99)
t1.value92 = t1.value60(t1.value88, "FREE запустится через 10 сек.", UDim2.new(1, -48, 0, 28), UDim2.fromOffset(24, 276), Enum.Font.GothamSemibold, 12, t1.value55.textSoft)
t1.value92.ZIndex = 52
t1.value92.TextXAlignment = Enum.TextXAlignment.Center
t1.value93 = v73(v2({ UDim2.fromOffset(760, not t1.value2.TouchEnabled and 580 or 500) }))
t1.value93.Visible = false
local Frame10 = Instance.new("Frame")

Frame10.Parent = t1.value93
Frame10.Size = UDim2.new(1, 0, 0, 112)
Frame10.BackgroundColor3 = Color3.fromRGB(7, 20, 29)
Frame10.BorderSizePixel = 0
Frame10.ZIndex = 52
t1.value57(Frame10, 18)
t1.value59(Frame10, Color3.fromRGB(8, 25, 36), Color3.fromRGB(7, 14, 21), 0);
(function(p97, p98)
    p98.Active = true
    local u441 = false
    local u442
    local inputPosition
    local p97Position
    p98.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            u441 = true
            inputPosition = input.Position
            p97Position = p97.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    u441 = false
                end
            end)
        end
    end)
    p98.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            u442 = input
        end
    end)
    t1.value2.InputChanged:Connect(function(input)
        if not u441 or (input ~= u442 or (not inputPosition or not p97Position)) then
            return
        end

        local v623 = input.Position - inputPosition

        p97.Position = UDim2.new(p97Position.X.Scale, p97Position.X.Offset + v623.X, p97Position.Y.Scale, p97Position.Y.Offset + v623.Y)
    end)
end)(t1.value93, Frame10)

local Frame11 = Instance.new("Frame")

Frame11.Parent = Frame10
Frame11.Position = UDim2.new(0, 0, 1, -18)
Frame11.Size = UDim2.new(1, 0, 0, 18)
Frame11.BackgroundColor3 = Color3.fromRGB(7, 14, 21)
Frame11.BorderSizePixel = 0
Frame11.ZIndex = 52
t1.value60(t1.value93, "V", UDim2.fromOffset(70, 38), UDim2.fromOffset(26, 16), Enum.Font.GothamBold, 30, t1.value55.text).ZIndex = 53
local TextLabel2 = Instance.new("TextLabel")

TextLabel2.Parent = t1.value93
TextLabel2.Position = UDim2.fromOffset(26, 54)
TextLabel2.Size = UDim2.fromOffset(126, 24)
TextLabel2.BackgroundColor3 = Color3.fromRGB(9, 54, 72)
TextLabel2.BorderSizePixel = 0
TextLabel2.Font = Enum.Font.GothamSemibold
TextLabel2.Text = "SAFETY MANUAL"
TextLabel2.TextColor3 = t1.value55.accent2
TextLabel2.TextSize = 10
TextLabel2.ZIndex = 53
t1.value57(TextLabel2, 7)
t1.value58(TextLabel2, t1.value55.accent, 1, 0.45)
t1.value94 = t1.value60(t1.value93, "Выберите язык / Choose language", UDim2.new(1, -380, 0, 24), UDim2.fromOffset(166, 54), Enum.Font.GothamMedium, 12, t1.value55.muted)
t1.value94.ZIndex = 53
local Frame12 = Instance.new("Frame")

Frame12.Parent = t1.value93
Frame12.AnchorPoint = Vector2.new(1, 0)
Frame12.Position = UDim2.new(1, -26, 0, 20)
Frame12.Size = UDim2.fromOffset(218, 40)
Frame12.BackgroundColor3 = t1.value55.card
Frame12.BorderSizePixel = 0
Frame12.ZIndex = 53
t1.value57(Frame12, 9)
t1.value58(Frame12, t1.value55.borderSoft, 1, 0.25)
t1.value95 = v53(Frame12, "Русский", UDim2.fromOffset(101, 32), UDim2.fromOffset(4, 4), "normal")
t1.value95.ZIndex = 54
t1.value96 = v53(Frame12, "English", UDim2.fromOffset(101, 32), UDim2.fromOffset(113, 4), "normal")
t1.value96.ZIndex = 54
t1.value97 = Instance.new("Frame")
t1.value97.Parent = t1.value93
t1.value97.Position = UDim2.fromOffset(26, 126)
t1.value97.Size = UDim2.new(1, -52, 1, -202)
t1.value97.BackgroundTransparency = 1
t1.value97.Visible = false
t1.value97.ZIndex = 52
local Frame13 = Instance.new("Frame")

Frame13.Parent = t1.value97
Frame13.Size = UDim2.new(1, 0, 0, 66)
Frame13.BackgroundColor3 = t1.value55.warningBg
Frame13.BorderSizePixel = 0
Frame13.ZIndex = 53
t1.value57(Frame13, 10)
t1.value58(Frame13, t1.value55.warningBorder, 1, 0.05)

local v87 = t1.value60(Frame13, "!", UDim2.fromOffset(32, 66), UDim2.fromOffset(12, 0), Enum.Font.GothamBold, 20, t1.value55.warning)

v87.ZIndex = 54
v87.TextXAlignment = Enum.TextXAlignment.Center
t1.value98 = t1.value60(Frame13, "", UDim2.new(1, -60, 0, 21), UDim2.fromOffset(50, 9), Enum.Font.GothamSemibold, 13, t1.value55.warning)
t1.value98.ZIndex = 54
t1.value99 = t1.value60(Frame13, "", UDim2.new(1, -64, 0, 30), UDim2.fromOffset(50, 31), Enum.Font.GothamMedium, 11, Color3.fromRGB(205, 181, 141))
t1.value99.ZIndex = 54
t1.value99.TextWrapped = true
t1.value99.TextYAlignment = Enum.TextYAlignment.Top
t1.value100 = Instance.new("ScrollingFrame")
t1.value100.Parent = t1.value97
t1.value100.Position = UDim2.fromOffset(0, 78)
t1.value100.Size = UDim2.new(1, 0, 1, -78)
t1.value100.BackgroundTransparency = 1
t1.value100.BorderSizePixel = 0
t1.value100.ScrollBarThickness = 3
t1.value100.ScrollBarImageColor3 = t1.value55.accentDeep
t1.value100.CanvasSize = UDim2.new(0, 0, 0, 0)
t1.value100.AutomaticCanvasSize = Enum.AutomaticSize.Y
t1.value100.ZIndex = 53
local UIListLayout = Instance.new("UIListLayout")

UIListLayout.Parent = t1.value100
UIListLayout.Padding = UDim.new(0, 9)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder;
(function(p99, p100, p101, p102, p103)
    local UIPadding = Instance.new("UIPadding")

    UIPadding.PaddingLeft = UDim.new(0, p100 or 0)
    UIPadding.PaddingRight = UDim.new(0, p101 or 0)
    UIPadding.PaddingTop = UDim.new(0, p102 or 0)
    UIPadding.PaddingBottom = UDim.new(0, p103 or 0)
    UIPadding.Parent = p99

    return UIPadding
end)(t1.value100, 0, 7, 0, 4)
t1.value101 = {}
for i = 1, 7 do
    (function(p104)
        local Frame14 = Instance.new("Frame")

        Frame14.Parent = t1.value100
        Frame14.Name = "Tip" .. tostring(p104)
        Frame14.Size = UDim2.new(1, -7, 0, 72)
        Frame14.BackgroundColor3 = t1.value55.card
        Frame14.BorderSizePixel = 0
        Frame14.LayoutOrder = p104
        Frame14.ZIndex = 54
        t1.value57(Frame14, 10)

        local v447 = t1.value58(Frame14, t1.value55.borderSoft, 1, 0.32)
        local TextLabel3 = Instance.new("TextLabel")

        TextLabel3.Parent = Frame14
        TextLabel3.Position = UDim2.fromOffset(12, 19)
        TextLabel3.Size = UDim2.fromOffset(34, 34)
        TextLabel3.BackgroundColor3 = Color3.fromRGB(8, 50, 67)
        TextLabel3.BorderSizePixel = 0
        TextLabel3.Font = Enum.Font.GothamBold
        TextLabel3.Text = tostring(p104)
        TextLabel3.TextColor3 = t1.value55.accent2
        TextLabel3.TextSize = 11
        TextLabel3.ZIndex = 55
        t1.value57(TextLabel3, 8)
        t1.value58(TextLabel3, t1.value55.accent, 1, 0.55)

        local v449 = t1.value60(Frame14, "", UDim2.new(1, -72, 1, -18), UDim2.fromOffset(58, 9), Enum.Font.GothamMedium, 13, t1.value55.textSoft)

        v449.ZIndex = 55
        v449.TextWrapped = true
        v449.TextYAlignment = Enum.TextYAlignment.Center
        v449.LineHeight = 1.08
        t1.value101[p104] = v449
        Frame14.MouseEnter:Connect(function()
            t1.value56(Frame14, 0.12, {
				BackgroundColor3 = t1.value55.cardHover
			})
            t1.value56(v447, 0.12, {
				Color = t1.value55.border,
				Transparency = 0.1
			})
        end)
        Frame14.MouseLeave:Connect(function()
            t1.value56(Frame14, 0.12, {
				BackgroundColor3 = t1.value55.card
			})
            t1.value56(v447, 0.12, {
				Color = t1.value55.borderSoft,
				Transparency = 0.32
			})
        end)
    end)(i)
end
local Frame15 = Instance.new("Frame")

Frame15.Parent = t1.value93
Frame15.Position = UDim2.new(0, 0, 1, -62)
Frame15.Size = UDim2.new(1, 0, 0, 62)
Frame15.BackgroundColor3 = Color3.fromRGB(6, 10, 15)
Frame15.BorderSizePixel = 0
Frame15.ZIndex = 53
t1.value102 = t1.value60(Frame15, "", UDim2.new(1, -238, 1, 0), UDim2.fromOffset(26, 0), Enum.Font.GothamMedium, 10, t1.value55.dim)
t1.value102.ZIndex = 54
t1.value102.TextWrapped = true
t1.value102.TextYAlignment = Enum.TextYAlignment.Center
t1.value102.Size = UDim2.new(1, -238, 0, 42)
t1.value102.Position = UDim2.fromOffset(26, 2)

local v91 = t1.value60(Frame15, "Loader created by NetNull", UDim2.fromOffset(300, 14), UDim2.fromOffset(26, 44), Enum.Font.GothamMedium, 9, t1.value55.dim)

v91.ZIndex = 54
v91.TextTransparency = 0.12
local v92, _ = v53(Frame15, "Выберите язык", UDim2.fromOffset(184, 38), UDim2.new(1, -210, 0.5, -19), "accent")

t1.value103 = v92
t1.value103.ZIndex = 54
t1.value103.Active = false
t1.value104 = {
	ru = {
		intro = "Русский выбран",
		warnTitle = "ВАЖНО: ПРОЧИТАЙТЕ ПЕРЕД ЗАПУСКОМ",
		warnSub = "Это не гарантия безопасности. Контролируйте фарм вручную, соблюдайте умеренный темп и сразу выключайте модуль при странном поведении.",
		footer = "V не может гарантировать безопасность аккаунта. Не оставляйте автоматизацию без присмотра и соблюдайте правила игры.",
		wait = "Подождите %ds",
		go = "Продолжить",
		tips = {
			"НОВЫЙ АККАУНТ — ПЕРВЫЕ 7 ДНЕЙ: избегайте агрессивного и многочасового автофарма. Чередуйте контрабанду с лодками, грузовиками и обычными игровыми активностями, не оставляйте автоматизацию без присмотра.",
			"ЧЕРЕДУЙТЕ АКТИВНОСТИ: не держите один и тот же маршрут постоянно. Смешивайте контрабанду с лодками, грузовиками и обычными игровыми активностями.",
			"СМЕШИВАЙТЕ ИСТОЧНИКИ ДОХОДА: используйте не только контрабанду, но и легальные механики — принтеры, дом, капусту и другие доступные способы заработка.",
			"СКОРОСТЬ КОНТРАБАНДЫ: не ставьте выше 210. На большей скорости растёт шанс пропустить точку, застрять или сломать взаимодействие с NPC.",
			"ДЛЯ ТЕСТОВ ИСПОЛЬЗУЙТЕ ОТДЕЛЬНЫЙ АККАУНТ: не проверяйте новые функции сразу на основном аккаунте, если он для вас важен.",
			"ПОСЛЕ ДОЛГОЙ СЕССИИ: сделайте перерыв и проверьте деньги, инвентарь, положение персонажа и корректность завершения маршрута.",
			"ПРИ ЛЮБОМ СБОЕ: если модуль зациклился, завис или двигается странно — сразу выключите его. Не запускайте несколько автофармов одновременно."
		}
	},
	en = {
		intro = "English selected",
		warnTitle = "IMPORTANT: READ BEFORE LAUNCH",
		warnSub = "This is not a safety guarantee. Monitor farming manually, keep a moderate pace and disable a module immediately if it behaves strangely.",
		footer = "V cannot guarantee account safety. Do not leave automation unattended and follow the game's rules.",
		wait = "Wait %ds",
		go = "Continue",
		tips = {
			"NEW ACCOUNT — FIRST 7 DAYS: avoid aggressive or long unattended autofarming. Rotate contraband with boats, trucks and normal gameplay activities, and do not leave automation unattended.",
			"ROTATE ACTIVITIES: do not keep one route running continuously. Mix contraband with boats, trucks and normal gameplay activities.",
			"MIX INCOME SOURCES: do not rely only on contraband. Use legitimate mechanics too — printers, house income, cabbage and other available methods.",
			"CONTRABAND SPEED: do not set it above 210. Higher values increase the chance of missing points, getting stuck or breaking NPC interactions.",
			"USE A SEPARATE ACCOUNT FOR TESTING: do not test new features first on your main account if that account matters to you.",
			"AFTER A LONG SESSION: take a break and verify cash, inventory, character position and that the route completed correctly.",
			"ON ANY FAILURE: if a module loops, gets stuck or moves strangely, disable it immediately. Do not run multiple autofarms at the same time."
		}
	}
}
t1.value105 = type(writefile) == "function" and (type(readfile) == "function" and type(isfile) == "function")

local value14 = t1.value14
t1.value106 = nil
local Load = value14.Load
t1.value107 = nil
t1.value108 = Load()
t1.value109 = nil
t1.value110 = false
t1.value106 = nil
t1.value111 = 0
t1.value107 = true
t1.value112 = false
t1.value113 = 0
t1.value114 = 0
function t1.value115(p105, p106)
    t1.value69.Text = p105

    if p106 == "good" then
        t1.value68.BackgroundColor3 = t1.value55.success
        t1.value69.TextColor3 = t1.value55.textSoft

        return
    end

    if p106 == "bad" then
        t1.value68.BackgroundColor3 = t1.value55.danger
        t1.value69.TextColor3 = t1.value55.textSoft

        return
    end

    if p106 == "busy" then
        t1.value68.BackgroundColor3 = t1.value55.warning
        t1.value69.TextColor3 = t1.value55.textSoft

        return
    end

    t1.value68.BackgroundColor3 = t1.value55.accent
    t1.value69.TextColor3 = t1.value55.textSoft
end
function t1.value116(p107)
    local value81 = t1.value81
    local value82 = t1.value82
    local t17 = {
		t1.value71,
		t1.value72,
		t1.value79,
		t1.value87,
		t1.value86,
		value81,
		value82
	}
    t1.value74.Active = false
    for v456, v457 in ipairs(t17) do

        v457.Active = p107
        v457.AutoButtonColor = false
    end
    if p107 then
        t1.value71.TextTransparency = 1
        t1.value72.TextTransparency = 1
    end
end
t1.value117 = nil
function t1.value117()
    if t1.value108 and t1.value108.id then
        t1.value85.Text = tostring(t1.value108.id)

        return
    end

    t1.value85.Text = "Device ID unavailable"
end
t1.value118 = nil
function t1.value118(p108)
    local lower = string.lower
    local _tostring = tostring

    if p108 then
        p108 = p108.access_tier
    end

    local v469 = lower(_tostring(p108 or "free"))
    local v470 = v469 == "beta"

    t1.value67.Text = not v470 and "FREE" or "BETA"
    t1.value66.BackgroundColor3 = v470 and t1.value55.success or t1.value55.accent
    t1.value67.TextColor3 = v470 and t1.value55.success or t1.value55.accent2
    t1.value64.BackgroundColor3 = v470 and Color3.fromRGB(7, 35, 31) or Color3.fromRGB(11, 31, 42)
    t1.value65.Color = v470 and t1.value55.success or t1.value55.border
    t1.value77.Visible = not v470
    t1.value80.Visible = v470
    t1.value73.Text = not v470 and "Расширенный доступ" or "Доступ активирован"
    t1.value73.TextColor3 = v470 and t1.value55.success or t1.value55.accent2
    t1.value117()

    if t1.value108 and t1.value105 then
        pcall(t1.value14.Save, t1.value108, v469)
    end
end
function t1.value119()
    t1.value116(false)
    t1.value109 = nil
    t1.value115("Подключение к NetNull...", "busy")

    local value42 = t1.value42
    local UserId = t1.value6.UserId
    local value6Name = t1.value6.Name
    local v474, v475, v476 = value42("POST", "/api/v5/enroll/free", {
		roblox_user_id = UserId,
		roblox_username = value6Name,
		loader_version = t1.value8
	})

    if not v474 or not v474.ok then
        warn("[NetNull] enrollment:", v476 or v475)
        t1.value115("Не удалось подключиться. Попробуйте ещё раз.", "bad")

        return false
    end

    if v474.server_time then
        t1.value49(v474.server_time)
    end

    local id = v474.device.id
    local secret = v474.device.secret

    t1.value108 = {
		id = id,
		secret = secret
	}
    t1.value14.Source = "account"

    local v479 = t1.value14.Save(t1.value108, "free")

    t1.value118(v474.state)

    if not v479 then
        t1.value115("FREE доступен. Для BETA требуется сохранение файлов executor'ом.", "busy")
    end

    return true
end
function t1.value120()
    if t1.value108 then
        return true
    end

    local v480 = t1.value14.Load()

    if v480 then
        t1.value108 = v480
        t1.value117()

        return true
    end

    if not t1.value105 then
        return t1.value119()
    end

    local v481 = t1.value14.TryEnrollLock()

    if not v481 then
        t1.value115("Ждём сохранение устройства другим окном Loader...", "busy")

        local v482 = t1.value14.WaitForPeerDevice(3.5)

        if v482 then
            t1.value108 = v482
            t1.value117()

            return true
        end

        v481 = t1.value14.TryEnrollLock()
    end

    if not v481 then
        t1.value115("Закройте лишние окна Loader и повторите запуск. Устройство не создано повторно.", "bad")

        return false
    end

    local v483 = t1.value14.Load()

    if v483 then
        t1.value108 = v483
        t1.value117()
        t1.value14.ReleaseEnrollLock(v481)

        return true
    end

    local v484 = t1.value119()

    t1.value14.ReleaseEnrollLock(v481)

    return v484
end
t1.value121 = nil
function t1.value121()
    if not t1.value108 then
        return false, "device missing", 0
    end

    if not t1.value38 then
        local v503, v504 = t1.value50()

        if not v503 then
            return false, "clock sync failed: " .. tostring(v504), 0
        end
    end

    local value54 = t1.value54
    local value108 = t1.value108
    local value8_2 = t1.value8
    local UserId = t1.value6.UserId
    local value6Name = t1.value6.Name
    local value10 = t1.value10
    local RuntimePlaceId = t1.value16.RuntimePlaceId
    local GameId = t1.value16.GameId
    local v513, v514, v515 = value54(value108, nil, "POST", "/api/v5/session", {
		loader_version = value8_2,
		roblox_user_id = UserId,
		roblox_username = value6Name,
		place_id = value10,
		runtime_place_id = RuntimePlaceId,
		roblox_game_id = GameId
	})

    if not v513 or not v513.ok then
        if not v515 then
            v515 = "HTTP " .. tostring(v514)
        end

        return false, v515, v514
    end

    if v513.server_time then
        t1.value49(v513.server_time)
    end

    t1.value15.IdentityEnforced = v513.identity_binding_enforced == true
    t1.value15.HubRoutingEnforced = v513.hub_routing_enforced == true

    if not t1.value15.IdentityEnforced then
        t1.value109 = nil

        return false, "server identity binding unavailable", 426
    end

    if not t1.value15.HubRoutingEnforced or type(v513.hub) ~= "table" then
        t1.value109 = nil

        return false, "server hub routing unavailable", 426
    end

    if tonumber(v513.hub.place_id) ~= t1.value9 then
        t1.value109 = nil

        return false, "hub place mismatch", 409
    end

    t1.value76(v513.hub)
    t1.value109 = v513.session

    if t1.value14.Source == "legacy" and not t1.value14.MigrateLegacy(t1.value108) then
        t1.value109 = nil

        return false, "legacy device migration failed", 0
    end

    t1.value118(v513.state)
    t1.value116(true)
    t1.value115("V HUB: " .. tostring(t1.value16.DisplayName or t1.value16.Key) .. " готов к запуску", "good")

    return true, nil, v514
end
function t1.value122()
    if t1.value109 then
        return true
    end
    if not t1.value108 and not t1.value120() then
        return false
    end
    local t18, v491, v492 = t1.value121()
    if t18 then
        return true
    end
    if v491 == "server identity binding unavailable" then
        warn("[NetNull] server identity binding is unavailable")
        t1.value115("Сервер авторизации ещё не обновлён для Loader " .. t1.value8, "bad")

        return false
    end
    local lower = string.lower
    local v494 = v491
    local _tostring = tostring
    if not v491 then
        v494 = ""
    end
    local v496 = lower(_tostring(v494))
    warn("[NetNull] stored device rejected without deleting local binding:", v491, v492)
    t1.value109 = nil
    if t1.value14.Source == "legacy" and (v492 == 409 and string.find(v496, "account mismatch", 1, true)) then
        t1.value14.IgnoreLegacy = true
        t1.value14.Source = nil
        t1.value14.LastAccessTier = nil
        t1.value108 = nil
        t1.value115("Старая общая привязка принадлежит другому Roblox-аккаунту. Создаём отдельное устройство...", "busy")
        if not t1.value120() then
            return false
        end
        local t19, v498, v499 = t1.value121()
        if not t19 then
            warn("[NetNull] separate account session:", v498, v499)
            t1.value115(t1.value15.SessionMessage(v499, v498), "bad")

            return false
        end

        return true
    end
    if v492 == 401 and string.find(v496, "device migration reset required", 1, true) then
        t1.value14.IgnoreLegacy = true
        t1.value14.ClearAccount()
        t1.value108 = nil
        t1.value109 = nil
        t1.value115("Обновляем старую привязку для нового сервера...", "busy")

        if not t1.value120() then
            return false
        end

        local v500, v501, v502 = t1.value121()

        if not v500 then
            warn("[NetNull] migration re-enroll:", v501, v502)
            t1.value115(t1.value15.SessionMessage(v502, v501), "bad")

            return false
        end

        return true
    end
    t1.value115(t1.value15.SessionMessage(v492, v491), "bad")

    return false
end
function t1.value123(p109, p110, p111, p112)
    local v462 = t1.value39(p112)

    return t1.value53(p109, p110, "POST", p111, v462, {
		Accept = "application/octet-stream",
		["Content-Type"] = "application/json"
	})
end
function t1.value124()
    t1.value83.Visible = false
    t1.value84.Visible = false
    t1.value93.Visible = false
    t1.value88.Visible = false
end
function t1.value125()
    t1.value117()
    t1.value83.Visible = true
    t1.value84.Visible = true
    t1.value93.Visible = false
    t1.value88.Visible = false
    t1.value112 = false
    t1.value87.Text = "Сбросить устройство"
    t1.value87.BackgroundColor3 = t1.value55.card
end
function t1.value126(p113, p114)
    t1.value106 = p113

    local v487 = t1.value104[p113]

    t1.value94.Text = v487.intro
    t1.value98.Text = v487.warnTitle
    t1.value99.Text = v487.warnSub
    t1.value102.Text = v487.footer

    for i = 1, 7 do
        t1.value101[i].Text = v487.tips[i]
    end

    t1.value97.Visible = true
    t1.value95.BackgroundColor3 = p113 == "ru" and t1.value55.accentDeep or t1.value55.card
    t1.value96.BackgroundColor3 = p113 == "en" and t1.value55.accentDeep or t1.value55.card
    t1.value95.TextColor3 = p113 == "ru" and t1.value55.accent2 or t1.value55.textSoft
    t1.value96.TextColor3 = p113 == "en" and t1.value55.accent2 or t1.value55.textSoft
    t1.value111 = t1.value111 + 1

    local value111 = t1.value111

    t1.value103.Active = false

    if not p114 then
        t1.value103.Text = v487.go
        t1.value103.Active = true

        return
    end

    task.spawn(function()
        for i = 5, 1, -1 do
            if value111 ~= t1.value111 or not t1.value93.Visible then
                return
            end

            t1.value103.Text = string.format(v487.wait, i)
            task.wait(1)
        end

        if value111 ~= t1.value111 or not t1.value93.Visible then
            return
        end

        t1.value103.Text = v487.go
        t1.value103.Active = true
    end)
end
function t1.value127(p115)
    t1.value107 = p115 == true
    t1.value83.Visible = true
    t1.value93.Visible = true
    t1.value84.Visible = false
    t1.value88.Visible = false
    t1.value106 = nil
    t1.value97.Visible = false
    t1.value94.Text = "Выберите язык / Choose language"
    t1.value103.Text = "Выберите язык"
    t1.value103.Active = false
    t1.value95.BackgroundColor3 = t1.value55.card
    t1.value96.BackgroundColor3 = t1.value55.card
    t1.value95.TextColor3 = t1.value55.textSoft
    t1.value96.TextColor3 = t1.value55.textSoft
end
t1.value95.MouseButton1Click:Connect(function()
    t1.value126("ru", t1.value107)
end)
t1.value96.MouseButton1Click:Connect(function()
    t1.value126("en", t1.value107)
end)
t1.value103.MouseButton1Click:Connect(function()
    if not t1.value103.Active or not t1.value106 then
        return
    end

    t1.value111 = t1.value111 + 1
    t1.value124()
end)
t1.value81.MouseButton1Click:Connect(function()
    if t1.value110 then
        return
    end

    t1.value127(false)
end)
t1.value82.MouseButton1Click:Connect(function()
    if t1.value110 then
        return
    end

    t1.value125()
end)
v76.MouseButton1Click:Connect(t1.value124)
t1.value86.MouseButton1Click:Connect(function()
    if t1.value108 and type(setclipboard) == "function" then
        pcall(setclipboard, t1.value108.id)
        t1.value115("ID устройства скопирован", "good")

        return
    end

    t1.value115("Копирование недоступно в этом executor'е", "bad")
end)
t1.value87.MouseButton1Click:Connect(function()
    if t1.value110 then
        return
    end

    if not t1.value112 then
        t1.value112 = true
        t1.value113 = t1.value113 + 1

        local value113 = t1.value113

        t1.value87.Text = "Подтвердить сброс"
        t1.value87.BackgroundColor3 = Color3.fromRGB(74, 30, 36)
        task.spawn(function()
            task.wait(6)

            if value113 == t1.value113 and t1.value112 then
                t1.value87.Text = "Сбросить устройство"
                t1.value87.BackgroundColor3 = t1.value55.card
            end
        end)

        return
    end

    t1.value113 = t1.value113 + 1
    t1.value116(false)
    t1.value124()
    t1.value115("Сбрасываем привязку...", "busy")

    if t1.value108 and t1.value109 then
        pcall(function()
            t1.value54(t1.value108, t1.value109, "POST", "/api/v5/device/revoke", {})
        end)
    end

    t1.value14.IgnoreLegacy = true
    t1.value14.ClearAccount()
    t1.value108 = nil
    t1.value109 = nil
    t1.value15.IdentityEnforced = false
    t1.value15.HubRoutingEnforced = false

    if not t1.value119() or not t1.value121() then
        t1.value115("Не удалось сбросить устройство", "bad")
    end

    t1.value110 = false
end)
t1.value79.MouseButton1Click:Connect(function()
    if t1.value110 then
        return
    end

    local v517 = t1.value78.Text:gsub("^%s+", ""):gsub("%s+$", "")

    if v517 == "" then
        t1.value115("Введите BETA или recovery-код", "busy")

        return
    end

    if not t1.value105 then
        t1.value115("Для BETA executor должен уметь сохранять файлы", "bad")

        return
    end

    t1.value110 = true
    t1.value116(false)

    if not t1.value122() then
        t1.value110 = false
        t1.value116(true)

        return
    end

    t1.value115("Проверяем код...", "busy")

    local v518, v519, v520 = t1.value54(t1.value108, t1.value109, "POST", "/api/v5/access/claim", {
		credential = v517
	})
    local v521 = not v518

    if v521 then
        v521 = v519 == 401
    end

    if v521 then
        t1.value109 = nil

        if t1.value122() then
            v518, v519, v520 = t1.value54(t1.value108, t1.value109, "POST", "/api/v5/access/claim", {
				credential = v517
			})
        end
    end

    if not v518 then
        warn("[NetNull] credential:", v520 or v519)
        t1.value115(t1.value15.CredentialMessage(v519, v520), "bad")
    else
        t1.value78.Text = ""
        t1.value118(v518.state)
        t1.value109 = nil

        local v522, v523 = t1.value121()

        if v522 then
            t1.value115("BETA активирована и привязана к этому Roblox-аккаунту", "good")
        else
            warn("[NetNull] post-claim rebind:", v523)
            t1.value115("BETA активирована, но перепроверка привязки не прошла. Перезапустите loader.", "bad")
        end
    end

    t1.value116(true)
    t1.value110 = false
end)

function t1.value128(p116)
    if t1.value110 then
        return
    end

    t1.value110 = true
    t1.value116(false)

    if not t1.value122() then
        t1.value110 = false
        t1.value116(true)

        return
    end

    local v525 = string.upper(p116)

    t1.value115("Проверяем доступ к " .. v525 .. "...", "busy")

    local v526 = "/api/v5/releases/latest?channel=" .. p116
    local v527, v528, v529 = t1.value54(t1.value108, t1.value109, "GET", v526, nil)

    if not v527 and v528 == 401 then
        t1.value109 = nil

        if t1.value122() then
            v527, v528, v529 = t1.value54(t1.value108, t1.value109, "GET", v526, nil)
        end
    end

    if not v527 then
        warn("[NetNull] release denied:", v529 or v528)

        if v528 == 426 then
            t1.value115("Требуется обновление Loader", "bad")
        elseif v528 == 404 then
            t1.value115("Релиз временно недоступен", "bad")
        elseif v528 == 403 and p116 == "beta" then
            t1.value115("BETA не привязана к текущему устройству. Для переноса используйте recovery-код.", "bad")
        elseif v528 == 403 then
            t1.value115("Нет доступа к этому продукту", "bad")
        elseif v528 == 429 then
            t1.value115("Слишком много запросов. Подождите и повторите.", "bad")
        elseif v528 and v528 >= 500 then
            t1.value115("Временная ошибка сервера. Повторите позже.", "bad")
        else
            t1.value115("Не удалось проверить релиз", "bad")
        end

        t1.value110 = false
        t1.value116(true)

        return
    end

    if type(v527.hub) == "table" then
        if t1.value16.Key and v527.hub.key ~= t1.value16.Key then
            t1.value115("V HUB: сервер вернул другой маршрут. Запуск отменён.", "bad")
            t1.value110 = false
            t1.value116(true)

            return
        end

        t1.value76(v527.hub)
    end

    local release = v527.release

    t1.value115("Скачиваем " .. v525 .. " для " .. tostring(t1.value16.DisplayName or t1.value16.Key) .. "...", "busy")

    local v531 = v525 .. " download start"
    local v532 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v531)

    if type(print) == "function" then
        pcall(print, v532)
    end

    local elapsed = os.clock()
    local v534, v535, v536 = t1.value123(t1.value108, t1.value109, "/api/v5/releases/download", {
		ticket = release.ticket
	})
    local v537 = os.clock() - elapsed

    if not v534 then
        if v535 ~= 401 then
        end

        warn("[NetNull] download:", v536 or v535)

        local v538 = v525 .. " download failed code=" .. tostring(v535) .. " time=" .. string.format("%.3fs", v537)
        local v539 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v538)

        if type(print) == "function" then
            pcall(print, v539)
        end

        if v535 == 426 then
            t1.value115("Требуется обновление Loader", "bad")
        elseif v535 == 403 then
            t1.value115("Доступ к загрузке отклонён. Перезапустите Loader.", "bad")
        elseif v535 == 404 then
            t1.value115("Релиз временно недоступен", "bad")
        else
            t1.value115("Не удалось загрузить релиз", "bad")
        end

        t1.value110 = false
        t1.value116(true)

        return
    end

    local v540 = v525 .. " download complete bytes=" .. tostring(#v534) .. " time=" .. string.format("%.3fs", v537)
    local v541 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v540)

    if type(print) == "function" then
        pcall(print, v541)
    end

    t1.value115("Проверяем SHA-256 • " .. t1.value19(#v534), "busy")
    task.wait(0.03)

    local v542 = v525 .. " sha256 start bytes=" .. tostring(#v534)
    local v543 = "[V/" .. tostring("CRYPTO") .. "] " .. tostring(v542)

    if type(print) == "function" then
        pcall(print, v543)
    end

    local v544, v545, v546, v547 = t1.value36(v534)

    if not v544 then
        warn("[NetNull] payload SHA unavailable:", v545)

        local v548 = v525 .. " sha256 failed provider=" .. tostring(v547) .. " time=" .. string.format("%.3fs", tonumber(v546) or 0)
        local v549 = "[V/" .. tostring("CRYPTO") .. "] " .. tostring(v548)

        if type(print) == "function" then
            pcall(print, v549)
        end

        t1.value115("Не удалось проверить целостность файла. Запуск отменён.", "bad")
        t1.value110 = false
        t1.value116(true)

        return
    end

    local v550 = "provider=" .. tostring(v547) .. " sha256 complete time=" .. string.format("%.3fs", tonumber(v546) or 0)
    local v551 = "[V/" .. tostring("CRYPTO") .. "] " .. tostring(v550)

    if type(print) == "function" then
        pcall(print, v551)
    end

    if string.lower(v544) ~= string.lower((tostring(release.sha256))) then
        local v552 = v525 .. " SHA mismatch"
        local v553 = "[V/" .. tostring("CRYPTO") .. "] " .. tostring(v552)

        if type(print) == "function" then
            pcall(print, v553)
        end

        t1.value115("Проверка файла не пройдена. Запуск отменён.", "bad")
        t1.value110 = false
        t1.value116(true)

        return
    end

    t1.value115("SHA-256 подтверждён • подготавливаем " .. v525 .. "...", "busy")
    task.wait(0.03)

    local v554 = loadstring or load

    if type(v554) ~= "function" then
        t1.value115("Executor не поддерживает запуск Lua", "bad")
        t1.value110 = false
        t1.value116(true)

        return
    end

    local v555 = v525 .. " compile start"
    local v556 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v555)

    if type(print) == "function" then
        pcall(print, v556)
    end

    local elapsed2 = os.clock()
    local v558, v559 = v554(v534, "=V/" .. tostring(t1.value16.Key or "unknown") .. "/" .. p116 .. "/" .. tostring(release.version))
    local v560 = os.clock() - elapsed2

    if not v558 then
        warn("[NetNull] compile:", v559)

        local v561 = v525 .. " compile failed time=" .. string.format("%.3fs", v560)
        local v562 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v561)

        if type(print) == "function" then
            pcall(print, v562)
        end

        t1.value115("Ошибка подготовки релиза", "bad")
        t1.value110 = false
        t1.value116(true)

        return
    end

    local v563 = v525 .. " compile complete time=" .. string.format("%.3fs", v560)
    local v564 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v563)

    if type(print) == "function" then
        pcall(print, v564)
    end

    t1.value115(v525 .. " готов. Запускаем...", "good")
    task.wait(0.08)

    local v565 = v525 .. " payload start"
    local v566 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v565)

    if type(print) == "function" then
        pcall(print, v566)
    end

    local ok, result = pcall(v558)

    if not ok then
        warn("[NetNull] payload runtime error:", result)

        local v569 = v525 .. " payload runtime error"
        local v570 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v569)

        if type(print) == "function" then
            pcall(print, v570)
        end

        t1.value115("Ошибка внутри загруженного модуля", "bad")
        t1.value110 = false
        t1.value116(true)

        return
    end

    local v571 = v525 .. " payload started successfully"
    local v572 = "[V/" .. tostring("LOAD") .. "] " .. tostring(v571)

    if type(print) == "function" then
        pcall(print, v572)
    end

    t1.value61:Destroy()
end
local function v96()
    local _setclipboard
    if type(setclipboard) == "function" then
        _setclipboard = setclipboard
    elseif type(toclipboard) == "function" then
        _setclipboard = toclipboard
    elseif type(t1.value17) == "table" and type(t1.value17.setclipboard) == "function" then
        _setclipboard = t1.value17.setclipboard
    end
    if _setclipboard and pcall(_setclipboard, t1.value12) then
        t1.value89.Text = "Скопировано"
        t1.value90.Text = "Ссылка скопирована. Открой Telegram и подпишись на канал."
        task.spawn(function()
            task.wait(1.35)

            if t1.value88.Visible then
                t1.value89.Text = "Скопировать"
            end
        end)

        return
    end
    t1.value90.Text = "Автокопирование недоступно. Выдели ссылку вручную."
end
t1.value89.MouseButton1Click:Connect(v96)
TextBox.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        v96()
    end
end)

function t1.value129()
    if t1.value110 then
        return
    end

    t1.value114 = t1.value114 + 1

    local value114 = t1.value114

    t1.value116(false)
    t1.value83.Visible = true
    t1.value84.Visible = false
    t1.value93.Visible = false
    t1.value88.Visible = true
    t1.value89.Text = "Скопировать"
    t1.value90.Text = "Нажми на ссылку или кнопку, чтобы скопировать её."
    t1.value91.Size = UDim2.new(0, 0, 1, 0)
    t1.value92.Text = "FREE запустится через 10 сек."
    task.spawn(function()
        for i = 10, 1, -1 do
            local v626 = i

            if value114 ~= t1.value114 or not t1.value88.Visible then
                return
            end

            t1.value92.Text = "FREE запустится через " .. tostring(v626) .. " сек."
            t1.value91.Size = UDim2.new((10 - v626) / 10, 0, 1, 0)
            task.wait(1)
        end

        if value114 ~= t1.value114 or not t1.value88.Visible then
            return
        end

        t1.value91.Size = UDim2.new(1, 0, 1, 0)
        t1.value92.Text = "Запускаем FREE..."
        task.wait(0.18)

        if value114 ~= t1.value114 then
            return
        end

        t1.value88.Visible = false
        t1.value83.Visible = false

        local _ = t1.value114 + 1

        t1.value128("free")
    end)
end
t1.value71.MouseButton1Click:Connect(function()
    t1.value129()
end)
t1.value72.MouseButton1Click:Connect(function()
    t1.value128("beta")
end)
t1.value130 = false
t1.value131 = nil
t1.value132 = nil
t1.value62.InputBegan:Connect(function(input)
    if input.Position.Y - t1.value62.AbsolutePosition.Y > 88 then
        return
    end

    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        t1.value130 = true
        t1.value131 = input.Position
        t1.value132 = t1.value62.Position
    end
end)
t1.value2.InputChanged:Connect(function(input)
    local value130 = t1.value130

    if value130 then
        value130 = input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch
    end

    if value130 then
        local v579 = input.Position - t1.value131

        t1.value62.Position = UDim2.new(t1.value132.X.Scale, t1.value132.X.Offset + v579.X, t1.value132.Y.Scale, t1.value132.Y.Offset + v579.Y)
    end
end)
t1.value2.InputEnded:Connect(function(input)
    if not (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
    end
end)
t1.value63.Scale = t1.value63.Scale * 0.965
t1.value62.BackgroundTransparency = 1
task.spawn(function()
    t1.value56(t1.value62, 0.18, {
		BackgroundTransparency = 0
	}, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    t1.value56(t1.value63, 0.22, {
		Scale = t1.value63.Scale / 0.965
	}, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
end)
t1.value127(true)
task.spawn(function()
    t1.value116(false)
    t1.value115("V HUB: определяем текущий Roblox-плейс...", "busy")

    local v581, v582, v583 = t1.value48()

    if not v581 then
        warn("[V HUB] preflight:", v582 or v583)

        local v584 = v583 == 404

        if not v584 then
            local find = string.find
            local lower = string.lower
            local _tostring = tostring

            if not v582 then
                v582 = ""
            end

            v584 = find(lower(_tostring(v582)), "unsupported place", 1, true)
        end

        if v584 then
            t1.value70.Text = "V HUB • ОШИБКА МАРШРУТА"
            t1.value115("V HUB: backend отклонил канонический маршрут. Повторите запуск.", "bad")

            local v588 = "route diagnostic runtime_place=" .. tostring(t1.value16.RuntimePlaceId) .. " game_id=" .. tostring(t1.value16.GameId) .. " signature=" .. tostring(t1.value16.SignatureScore) .. " mode=" .. tostring(t1.value16.RouteMode)
            local v589 = "[V/" .. tostring("HUB") .. "] " .. tostring(v588)

            if type(print) == "function" then
                pcall(print, v589)

                return
            end
        else
            t1.value70.Text = "V HUB • МАРШРУТ ВРЕМЕННО НЕДОСТУПЕН"

            if v583 == 429 then
                t1.value115("V HUB: сервер занят. Повторяем маршрут автоматически; запустите Loader ещё раз, если ошибка останется.", "bad")

                return
            end

            if v583 and v583 >= 500 then
                t1.value115("V HUB: временная ошибка сервера. Плейс распознан, повторите позже.", "bad")

                return
            end

            t1.value115("V HUB: плейс распознан, но маршрут сейчас недоступен. Повторите запуск.", "bad")
        end

        return
    end

    local value76 = t1.value76
    local Key = t1.value16.Key
    local DisplayName = t1.value16.DisplayName
    local PlaceId = t1.value16.PlaceId
    local Products = t1.value16.Products

    value76({
		key = Key,
		display_name = DisplayName,
		place_id = PlaceId,
		products = Products
	})
    t1.value115("V HUB: " .. tostring(t1.value16.DisplayName) .. " • авторизация...", "busy")

    if not t1.value122() then
        t1.value116(true)
    end
end)
