--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
local v2 = require(v1.Shared.Data.Builders.QuestBuilder)
local v3 = {}
local v4 = v2.new("invite-1"):Action("Invite"):Visual("Invite Friends", true):Task({
    ["Type"] = "Invite",
    ["Amount"] = 1
})
local v5 = v2.new("invite-2"):Action("Invite"):Visual("Invite Friends", true):Task({
    ["Type"] = "Invite",
    ["Amount"] = 2
})
local v6 = v2.new("invite-3"):Action("Invite"):Visual("Invite Friends", true):Task({
    ["Type"] = "Invite",
    ["Amount"] = 3
})
local v7 = v2.new("invite-4"):Action("Invite"):Visual("Invite Friends", true):Task({
    ["Type"] = "Invite",
    ["Amount"] = 4
})
local v8 = v2.new("group"):Action("Group"):Visual("", true):Task({
    ["Type"] = "Group"
}):Reward({
    ["Type"] = "Potion",
    ["Name"] = "Speed",
    ["Level"] = 5,
    ["Amount"] = 1
}):Reward({
    ["Type"] = "Potion",
    ["Name"] = "Coins",
    ["Level"] = 5,
    ["Amount"] = 1
})
__set_list(v3, 1, {v4:Reward({
    ["Type"] = "Currency",
    ["Currency"] = "Coins",
    ["Amount"] = 2000
}):Build(), v5:Reward({
    ["Type"] = "Powerup",
    ["Name"] = "Mystery Box",
    ["Amount"] = 3
}):Build(), v6:Reward({
    ["Type"] = "Powerup",
    ["Name"] = "Spin Ticket",
    ["Amount"] = 3
}):Build(), v7:Reward({
    ["Type"] = "Potion",
    ["Name"] = "Speed",
    ["Level"] = 5,
    ["Amount"] = 2
}):Build(), v8:Reward({
    ["Type"] = "Potion",
    ["Name"] = "Lucky",
    ["Level"] = 5,
    ["Amount"] = 1
}):Build()})
return v3