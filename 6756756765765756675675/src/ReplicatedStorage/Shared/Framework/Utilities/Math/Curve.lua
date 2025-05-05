--devbgascension

-- Bytecode (Base64):
-- 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

game:GetService("ReplicatedStorage")
local u1 = game:GetService("TweenService")
local u2 = {}
u2.__index = u2
function u2.new() --[[Anonymous function at line 37]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v3 = u2
    return setmetatable({
        ["MaxValue"] = 0,
        ["_segments"] = {}
    }, v3)
end
function u2.Add(p4, p5) --[[Anonymous function at line 44]]
    local v6 = p4._segments[#p4._segments]
    local v7 = v6 and (v6.Length.Max or 0) or 0
    local v8 = v6 and v6.Value.Max or 0
    local v9 = p4._segments
    local v10 = {
        ["Length"] = NumberRange.new(v7, v7 + p5.Length),
        ["Value"] = NumberRange.new(v8, p5.Value),
        ["Style"] = p5.Style or Enum.EasingStyle.Linear,
        ["Direction"] = p5.Direction or Enum.EasingDirection.Out
    }
    table.insert(v9, v10)
    local v11 = p4.MaxValue
    local v12 = p5.Value
    p4.MaxValue = math.max(v11, v12)
    return p4
end
function u2.Get(p13, p14, p15) --[[Anonymous function at line 59]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    if #p13._segments == 0 then
        return 0
    end
    local v16 = p15 or 1
    local v17 = nil
    local v18 = nil
    for _, v19 in p13._segments do
        if p14 <= v19.Length.Max * v16 then
            v18 = v19
            break
        end
        v17 = v19
    end
    if not v18 then
        return p13._segments[#p13._segments].Value.Max
    end
    if p14 == v18.Length.Max then
        return v18.Value.Max
    end
    if p14 < p13._segments[1].Length.Min then
        return 0
    end
    if v17 and p14 < v18.Length.Min then
        return v17.Value.Max
    end
    local v20 = v18.Length.Min * v16
    local v21 = v18.Length.Max * v16
    local v22 = (p14 - v20) / (v21 - v20)
    local v23 = u1:GetValue(math.clamp(v22, 0, 1), v18.Style, v18.Direction)
    return v18.Value.Min + (v18.Value.Max - v18.Value.Min) * v23
end
return u2