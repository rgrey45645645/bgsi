--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ProximityPromptService")
local v2 = game:GetService("ReplicatedStorage")
local u3 = require(v2.Client.Framework.Services.LocalData)
require(v2.Shared.Types)
local u8 = {
    ["Enabled"] = true,
    ["Visible"] = 0,
    ["_cache"] = {},
    ["new"] = function() --[[Function name: new, line 21]]
        --[[
        Upvalues:
            [1] = u3
            [2] = u8
        --]]
        local u4 = Instance.new("ProximityPrompt")
        u4.HoldDuration = 0
        u4.MaxActivationDistance = 7
        u4.RequiresLineOfSight = false
        u4.Style = Enum.ProximityPromptStyle.Custom
        u4.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
        local v5 = u3:Get()
        if v5 then
            u4.KeyboardKeyCode = Enum.KeyCode[v5.Settings.Action]
        end
        u4.Destroying:Connect(function() --[[Anonymous function at line 34]]
            --[[
            Upvalues:
                [1] = u8
                [2] = u4
            --]]
            u8._cache[u4] = nil
        end)
        u8._cache[u4] = true
        return u4
    end,
    ["Enable"] = function(_) --[[Function name: Enable, line 43]]
        --[[
        Upvalues:
            [1] = u8
        --]]
        for v6 in u8._cache do
            v6.Enabled = true
        end
    end,
    ["Disable"] = function(_) --[[Function name: Disable, line 49]]
        --[[
        Upvalues:
            [1] = u8
        --]]
        for v7 in u8._cache do
            v7.Enabled = false
        end
    end
}
u3:ConnectDataChanged("Settings", function(p9) --[[Anonymous function at line 56]]
    --[[
    Upvalues:
        [1] = u8
    --]]
    for v10 in u8._cache do
        v10.KeyboardKeyCode = Enum.KeyCode[p9.Settings.Action]
    end
end)
v1.PromptShown:Connect(function() --[[Anonymous function at line 63]]
    --[[
    Upvalues:
        [1] = u8
    --]]
    local v11 = u8
    v11.Visible = v11.Visible + 1
end)
v1.PromptHidden:Connect(function() --[[Anonymous function at line 67]]
    --[[
    Upvalues:
        [1] = u8
    --]]
    local v12 = u8
    local v13 = u8.Visible - 1
    v12.Visible = math.max(v13, 0)
end)
return u8