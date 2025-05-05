--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.T)
local function u10(p3, p4) --[[Anonymous function at line 41]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v5 = u2.NumberSequence
    assert(v5, p3)
    local v6 = u2.callback
    assert(v6, p4)
    local v7 = p3.Keypoints
    for v8, v9 in v7 do
        v7[v8] = p4(v9, v8)
    end
    return NumberSequence.new(v7)
end
return {
    ["getNumberSequenceValue"] = function(p11, p12) --[[Function name: getNumberSequenceValue, line 5]]
        --[[
        Upvalues:
            [1] = u2
        --]]
        local v13 = u2.NumberSequence
        assert(v13, p11)
        local v14 = u2.numberConstrained(0, 1)
        assert(v14, p12)
        local v15 = p11.Keypoints
        for v16 = 1, #v15 - 1 do
            local v17 = v15[v16]
            local v18 = v15[v16 + 1]
            if v17.Time <= p12 and p12 < v18.Time then
                local v19 = (p12 - v17.Time) / (v18.Time - v17.Time)
                return v17.Value + (v18.Value - v17.Value) * v19, v17.Envelope + (v18.Envelope - v17.Envelope) * v19
            end
        end
        return 0, 0
    end,
    ["getColorSequenceValue"] = function(p20, p21) --[[Function name: getColorSequenceValue, line 24]]
        --[[
        Upvalues:
            [1] = u2
        --]]
        local v22 = u2.ColorSequence
        assert(v22, p20)
        local v23 = u2.numberConstrained(0, 1)
        assert(v23, p21)
        local v24 = p20.Keypoints
        for v25 = 1, #v24 - 1 do
            local v26 = v24[v25]
            local v27 = v24[v25 + 1]
            if v26.Time <= p21 and p21 < v27.Time then
                local v28 = (p21 - v26.Time) / (v27.Time - v26.Time)
                return v26.Value:Lerp(v27.Value, v28)
            end
        end
        return Color3.new()
    end,
    ["transformNumberSequence"] = u10,
    ["multiplyTransparencySequence"] = function(p29, u30) --[[Function name: multiplyTransparencySequence, line 56]]
        --[[
        Upvalues:
            [1] = u10
        --]]
        return u10(p29, function(p31) --[[Anonymous function at line 60]]
            --[[
            Upvalues:
                [1] = u30
            --]]
            return NumberSequenceKeypoint.new(p31.Time, 1 - (1 - p31.Value) * (1 - u30), p31.Envelope)
        end)
    end
}