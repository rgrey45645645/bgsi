--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
local v2 = game:GetService("CollectionService")
local v3 = require(v1.Shared.Data.Eggs)
require(v1.Shared.Types)
local v4 = {}
local v5 = {
    ["LayoutOrder"] = 0,
    ["Active"] = false,
    ["DisplayName"] = "\240\159\144\176 Easter 2025 \240\159\144\176",
    ["Color"] = Color3.fromRGB(255, 119, 248),
    ["Eggs"] = {}
}
local v6 = {
    ["Normal"] = {
        {
            ["Type"] = "Pet",
            ["Name"] = "Chocolate Bunny"
        },
        {
            ["Type"] = "Potion",
            ["Name"] = "Infinity Elixir",
            ["Amount"] = 1
        }
    },
    ["Shiny"] = {
        {
            ["Type"] = "Pet",
            ["Name"] = "Chocolate Bunny",
            ["Mythic"] = true
        },
        {
            ["Type"] = "Potion",
            ["Name"] = "Infinity Elixir",
            ["Amount"] = 5
        }
    }
}
v5.Rewards = v6
v4["easter-2025"] = v5
local v7 = {
    ["LayoutOrder"] = 1,
    ["Active"] = true,
    ["DisplayName"] = "\240\159\142\137 100M Visits \240\159\142\137",
    ["Color"] = Color3.fromRGB(255, 236, 88),
    ["Eggs"] = {}
}
local v8 = {
    ["Normal"] = {
        {
            ["Type"] = "Potion",
            ["Name"] = "Infinity Elixir",
            ["Amount"] = 1
        }
    },
    ["Shiny"] = {
        {
            ["Type"] = "Potion",
            ["Name"] = "Infinity Elixir",
            ["Amount"] = 5
        }
    }
}
v7.Rewards = v8
v4["event-100m"] = v7
for v9, v10 in v3 do
    if v10.Event then
        local v11 = v4[v10.Event]
        if v11 then
            local v12 = v11.Eggs
            table.insert(v12, v9)
        end
    end
end
for _, v13 in v2:GetTagged("Egg") do
    for _, v14 in v4 do
        if #v14.Eggs ~= 0 and table.find(v14.Eggs, v13.Name) then
            v14.Active = true
        end
    end
end
return v4