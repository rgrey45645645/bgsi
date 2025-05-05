--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = require(v1.Shared.Utils.Stats.ItemUtil)
local u3 = require(v1.Shared.Constants)
local u4 = {}
u4.__index = u4
function u4.new(p5) --[[Anonymous function at line 37]]
    --[[
    Upvalues:
        [1] = u3
        [2] = u4
    --]]
    local v6 = {
        ["_rewards"] = {},
        ["_tasks"] = {},
        ["_id"] = p5 or "generic",
        ["_displayName"] = nil,
        ["_hud"] = nil,
        ["_icon"] = u3.UnknownImage
    }
    local v7 = u4
    return setmetatable(v6, v7)
end
function u4.Reward(p8, p9) --[[Anonymous function at line 49]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v10 = u2:Validate(p9)
    local v11 = ("%* is not a valid item"):format((u2:GetName(p9)))
    assert(v10, v11)
    local v12 = p8._rewards
    table.insert(v12, p9)
    return p8
end
function u4.Task(p13, p14) --[[Anonymous function at line 56]]
    local v15 = p13._tasks
    table.insert(v15, p14)
    return p13
end
function u4.Visual(p16, p17, p18) --[[Anonymous function at line 62]]
    p16._displayName = p17
    p16._hud = p18
    return p16
end
function u4.Action(p19, p20) --[[Anonymous function at line 69]]
    p19._action = p20
    return p19
end
function u4.Build(p21) --[[Anonymous function at line 75]]
    return {
        ["Id"] = p21._id,
        ["Icon"] = p21._icon,
        ["Rewards"] = p21._rewards,
        ["Tasks"] = p21._tasks,
        ["HUD"] = p21._hud,
        ["Action"] = p21._action,
        ["DisplayName"] = p21._displayName,
        ["Progress"] = table.create(#p21._tasks, 0)
    }
end
return u4