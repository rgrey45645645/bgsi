--devbgascension

-- Bytecode (Base64):
-- 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

local u1 = game:GetService("RunService")
local v2 = game:GetService("ReplicatedStorage")
local u3 = require(v2.Shared.Framework.T)
local u4 = {}
u4.__index = u4
local u5 = u3.strictInterface({
    ["MaxTime"] = u3.numberMin(0),
    ["MaxSize"] = u3.numberMin(0)
})
function u4.new(p6, p7) --[[Anonymous function at line 53]]
    --[[
    Upvalues:
        [1] = u3
        [2] = u5
        [3] = u4
        [4] = u1
    --]]
    local v8 = u3.callback
    assert(v8(p6))
    local v9 = u5
    assert(v9(p7))
    local v10 = u4
    local u11 = setmetatable({}, v10)
    u11._callback = p6
    u11._config = p7
    u11._items = {}
    u11._lastWhen = nil
    u11._connection = u1.Heartbeat:Connect(function() --[[Anonymous function at line 63]]
        --[[
        Upvalues:
            [1] = u11
        --]]
        u11:_step()
    end)
    return u11
end
function u4._step(p12) --[[Anonymous function at line 71]]
    local v13 = os.clock()
    local v14 = p12._items
    while v14[1] do
        local v15 = v14[1]
        if v13 < v15.when then
            break
        end
        table.remove(v14, 1)
        task.spawn(p12._callback, v15.value)
    end
end
function u4.Add(p16, p17, p18) --[[Anonymous function at line 87]]
    --[[
    Upvalues:
        [1] = u3
    --]]
    local v19 = u3.numberMin(0)
    assert(v19(p17))
    local v20 = os.clock()
    local v21 = p16._items
    local v22
    if p16._lastWhen then
        local v23 = p16._lastWhen + p17
        v22 = math.max(v23, v20)
    else
        v22 = v20
    end
    if v22 - v20 > p16._config.MaxTime then
        return false
    end
    if #v21 >= p16._config.MaxSize then
        return false
    end
    table.insert(v21, {
        ["when"] = v22,
        ["value"] = p18
    })
    p16._lastWhen = v22
    p16:_step()
    return true
end
function u4.Clear(p24) --[[Anonymous function at line 115]]
    table.clear(p24._items)
    p24._lastWhen = nil
end
function u4.Destroy(p25) --[[Anonymous function at line 121]]
    p25._connection:Disconnect()
    p25:Clear()
end
return u4