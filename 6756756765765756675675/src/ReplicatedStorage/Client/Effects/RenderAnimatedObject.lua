--devbgascension

-- Bytecode (Base64):
-- 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

local u1 = game:GetService("HttpService")
local v2 = game:GetService("ReplicatedStorage")
local v3 = game:GetService("Players")
local v4 = game:GetService("RunService")
local v5 = require(v2.Shared.Utils.Chunker)
local u6 = require(v2.Shared.Framework.Utilities.CharacterUtil)
local v7 = require(v2.Shared.Framework.Utilities.every)
local u8 = require(v2.Client.LowDetail)
local u9 = v3.LocalPlayer
local u10 = {}
local u11 = v5.new(128, 2)
u11.Mode = "3D"
local function v14(p12, p13) --[[Anonymous function at line 33]]
    --[[
    Upvalues:
        [1] = u1
        [2] = u11
    --]]
    u11:Add(p12, {
        ["Guid"] = u1:GenerateGUID(false),
        ["Constructor"] = p13
    })
end
local function v16(p15) --[[Anonymous function at line 42]]
    --[[
    Upvalues:
        [1] = u10
    --]]
    if not u10[p15.Guid] then
        u10[p15.Guid] = p15.Constructor()
    end
end
local function v19(p17) --[[Anonymous function at line 49]]
    --[[
    Upvalues:
        [1] = u10
    --]]
    local v18 = u10[p17.Guid]
    if v18 then
        v18.cleanup()
        u10[p17.Guid] = nil
    end
end
v4.Heartbeat:Connect(function(p20) --[[Anonymous function at line 65]]
    --[[
    Upvalues:
        [1] = u8
        [2] = u10
    --]]
    if not u8.Enabled then
        for _, v21 in u10 do
            v21.update(p20)
        end
    end
end)
u9.CharacterAdded:Connect(function() --[[Anonymous function at line 74]]
    --[[
    Upvalues:
        [1] = u6
        [2] = u9
        [3] = u11
    --]]
    local v22 = u6:GetRootPart(u9)
    if v22 then
        u11:Update(v22.Position)
    end
end)
v7(0.5, function() --[[Function name: update, line 57]]
    --[[
    Upvalues:
        [1] = u6
        [2] = u9
        [3] = u11
    --]]
    local v23 = u6:GetRootPart(u9)
    if v23 then
        u11:Update(v23.Position)
    end
end)
local v24 = u6:GetRootPart(u9)
if v24 then
    u11:Update(v24.Position)
end
u11.Loaded:Connect(v16)
u11.Unloaded:Connect(v19)
return v14