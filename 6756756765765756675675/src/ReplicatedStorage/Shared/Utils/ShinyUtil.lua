--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = require(v1.Shared.Data.Pets)
local u3 = require(v1.Shared.Constants)
local u27 = {
    ["GetRequiredCount"] = function(_, p4) --[[Function name: GetRequiredCount, line 20]]
        --[[
        Upvalues:
            [1] = u3
            [2] = u2
        --]]
        return u3.ShinyCountRequired[u2[p4.Name].Rarity]
    end,
    ["CanUse"] = function(_, p5) --[[Function name: CanUse, line 25]]
        local v6
        if p5.Shiny == true then
            v6 = false
        else
            v6 = p5.Locked ~= true
        end
        return v6
    end,
    ["GetOwnedCount"] = function(_, p7, p8) --[[Function name: GetOwnedCount, line 30]]
        --[[
        Upvalues:
            [1] = u27
        --]]
        local v9 = 0
        for _, v10 in p7.Pets do
            if v10.Name == p8.Name and (v10.Mythic == p8.Mythic and u27:CanUse(v10)) then
                v9 = v9 + (v10.Amount or 1)
            end
        end
        return v9
    end,
    ["GetPets"] = function(_, p11, u12) --[[Function name: GetPets, line 41]]
        --[[
        Upvalues:
            [1] = u27
        --]]
        local v13 = {}
        for _, v14 in p11.Pets do
            if v14.Name == u12.Name and (v14.Mythic == u12.Mythic and u27:CanUse(v14)) then
                table.insert(v13, v14)
            end
        end
        table.sort(v13, function(p15, p16) --[[Anonymous function at line 49]]
            --[[
            Upvalues:
                [1] = u12
            --]]
            local v17 = p15 == u12
            if v17 == (p16 == u12) then
                local v18 = p15.XP
                local v19 = p16.XP
                if v18 == v19 then
                    local v20 = p15.Enchants ~= nil
                    if v20 == (p16.Enchants ~= nil) then
                        return p15.Id < p16.Id
                    else
                        return not v20
                    end
                else
                    return v18 < v19
                end
            else
                return v17
            end
        end)
        local v21 = u27:GetRequiredCount(u12)
        local v22 = {}
        for _, v23 in v13 do
            if v21 <= 0 then
                break
            end
            local v24 = v23.Amount or 1
            local v25 = math.min(v21, v24)
            local v26 = {
                ["Id"] = v23.Id,
                ["Item"] = {
                    ["Type"] = "Pet",
                    ["Name"] = v23.Name,
                    ["Amount"] = v25,
                    ["Mythic"] = v23.Mythic,
                    ["XP"] = v23.XP,
                    ["Enchants"] = v23.Enchants
                }
            }
            table.insert(v22, v26)
            v21 = v21 - v25
        end
        return v22
    end
}
return u27