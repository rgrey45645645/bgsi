--devbgascension

-- Bytecode (Base64):
-- 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

local u1 = game:GetService("Players")
local v2 = game:GetService("ReplicatedStorage")
local u3 = require(v2.Shared.Framework.Utilities.CharacterUtil)
local u4 = Random.new()
local function u8() --[[Anonymous function at line 10]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v5 = {}
    for _, v6 in u1:GetPlayers() do
        if v6.Character then
            local v7 = v6.Character
            table.insert(v5, v7)
        end
    end
    return v5
end
return function(p9, p10) --[[Function name: GetPositionNearPlayer, line 21]]
    --[[
    Upvalues:
        [1] = u3
        [2] = u8
        [3] = u4
    --]]
    local v11 = u3:GetRootPart(p9)
    local v12 = not v11 and Vector3.new(0, 0, 0) or v11.Position
    local v13 = RaycastParams.new()
    v13.RespectCanCollide = true
    v13.FilterType = Enum.RaycastFilterType.Exclude
    v13.FilterDescendantsInstances = u8()
    if not p10 then
        local v14 = u4:NextNumber() * 3.141592653589793 * 2
        local v15 = math.cos(v14) * 5
        local v16 = math.sin(v14) * 5
        local v17 = v12 + Vector3.new(v15, 0, v16)
        local v18 = workspace:Raycast(v17, Vector3.new(0, -10, 0), v13)
        if v18 then
            v17 = v18.Position or v17
        end
        return {
            ["Position"] = v17,
            ["Unit"] = (v17 - v12).Unit * Vector3.new(1, 0, 1)
        }
    end
    local v19 = {}
    local v20 = {}
    for v21 = 0, 15 do
        local v22 = 0.39269908169872414 * v21
        local v23 = math.cos(v22) * 5
        local v24 = math.sin(v22) * 5
        local v25 = v12 + Vector3.new(v23, 0, v24)
        local v26 = workspace:Raycast(v25, Vector3.new(0, -10, 0), v13)
        if v26 then
            v19[v21 + 1] = v26.Position.Y - v12.Y
            v20[v21 + 1] = v26.Position
        else
            v19[v21 + 1] = (1 / 0)
            v20[v21 + 1] = v25
        end
    end
    local v27 = (1 / 0)
    local v28 = 1
    for v29 = 1, 16 do
        local v30 = 0
        for v31 = -7, 7 do
            local v32 = v19[(v29 + v31 - 1) % 16 + 1] - v19[v29]
            v30 = v30 + math.abs(v32)
        end
        if v30 < v27 then
            v28 = v29
            v27 = v30
        end
    end
    local v33 = v20[v28]
    return {
        ["Position"] = v33,
        ["Unit"] = (v33 - v12).Unit * Vector3.new(1, 0, 1)
    }
end