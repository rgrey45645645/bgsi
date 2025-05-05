--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
local u2 = game:GetService("CollectionService")
game:GetService("RunService")
local u3 = require(v1.Shared.Framework.Classes.Zone)
require(v1.Shared.Types)
local u4 = {}
local v5 = {
    ["Chance"] = 100
}
local v6 = {
    ["Visual"] = "Coin",
    ["Item"] = {
        ["Type"] = "Currency",
        ["Currency"] = "Coins",
        ["Amount"] = 1
    }
}
v5.Item = v6
__set_list(u4, 1, {v5})
local u7 = {}
local function v14() --[[Anonymous function at line 27]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u3
        [3] = u7
        [4] = u4
    --]]
    local v8 = {}
    for _, u9 in u2:GetTagged("PickupZone") do
        local v10 = nil
        if u9:IsA("Folder") then
            task.defer(function() --[[Anonymous function at line 33]]
                --[[
                Upvalues:
                    [1] = u9
                --]]
                for _, v11 in u9:GetChildren() do
                    if v11:IsA("BasePart") then
                        v11.Transparency = 1
                        v11.CanCollide = false
                    end
                end
            end)
            v10 = u3.fromPointsFolder(u9)
        elseif u9:IsA("BasePart") then
            task.defer(function() --[[Anonymous function at line 44]]
                --[[
                Upvalues:
                    [1] = u9
                --]]
                u9.Transparency = 1
                u9.CanCollide = false
            end)
            v10 = u3.fromPart(u9)
        else
            error((("zone root must be a folder or a basepart (%*)"):format((u9:GetFullName()))))
        end
        local v12 = u9:GetAttribute("Area") or ""
        local v13 = u7[v12]
        if not v13 then
            warn((("no pickups for area \"%*\""):format(v12)))
            v13 = u4
        end
        v8[u9] = {
            ["Zone"] = v10,
            ["Area"] = v12,
            ["Pickups"] = v13,
            ["Count"] = u9:GetAttribute("Count")
        }
    end
    return v8
end
for v15, v16 in require(v1.Shared.Data.Worlds) do
    for _, v17 in v16.Islands do
        u7[v17.Name] = v17.Pickups
    end
    u7[v15] = v16.Pickups
end
return v14