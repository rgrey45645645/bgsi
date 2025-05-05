--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Data.Chests)
require(v1.Shared.Types)
local u3 = require(v1.Shared.Data.Builders.LootPoolBuilder)
local u4 = require(v1.Shared.Utils.Stats.ItemUtil)
local u5 = u2["Infinity Chest"]
return function(p6) --[[Function name: GetInfinityChest, line 14]]
    --[[
    Upvalues:
        [1] = u5
        [2] = u3
        [3] = u2
        [4] = u4
    --]]
    local v7 = u5.Cooldown
    local v8 = u5.Rolls
    local v9 = 1
    local v10 = {}
    for _, v11 in workspace.Rendered.Chests:GetChildren() do
        if v11.Name ~= "Infinity Chest" then
            local v12 = v11:GetAttribute("Island")
            if not v12 or p6.AreasUnlocked[v12] then
                v9 = v9 + 1
                local v13 = v11.Name
                table.insert(v10, v13)
            end
        end
    end
    local v14 = table.clone(u5.Reward)
    local v15 = u3.new()
    for _, v16 in v10 do
        local v17 = u2[v16]
        if v17 then
            for _, v18 in v17.Pool do
                v15:Add(v18.Chance / v9, v18.Item)
            end
            for _, v19 in v17.Reward do
                table.insert(v14, v19)
            end
            v8 = v8 + v17.Rolls
            local v20 = v17.Cooldown
            v7 = math.max(v7, v20)
        end
    end
    local v21 = v15:Build()
    table.sort(v21, function(p22, p23) --[[Anonymous function at line 51]]
        return p22.Chance > p23.Chance
    end)
    return {
        ["DevProduct"] = u5.DevProduct,
        ["Rolls"] = v8,
        ["Cooldown"] = v7,
        ["Reward"] = u4:Combine(v14),
        ["Pool"] = v21
    }
end