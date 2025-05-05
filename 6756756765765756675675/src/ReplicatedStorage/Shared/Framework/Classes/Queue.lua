--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Framework.Utilities.every)
local u3 = {}
u3.__index = u3
function u3.new() --[[Anonymous function at line 34]]
    --[[
    Upvalues:
        [1] = u3
        [2] = u2
    --]]
    local v4 = u3
    local u5 = setmetatable({
        ["_queue"] = {},
        ["_id"] = 0,
        ["HasActive"] = false
    }, v4)
    u5._connection = u2(0.15, function() --[[Anonymous function at line 41]]
        --[[
        Upvalues:
            [1] = u5
        --]]
        u5:Pop()
    end)
    return u5
end
function u3.Push(p6, p7, p8) --[[Anonymous function at line 49]]
    local v9 = p6._queue
    table.insert(v9, {
        ["Duration"] = p7,
        ["Callback"] = p8
    })
    p6:Pop()
end
function u3.Pop(u10) --[[Anonymous function at line 58]]
    if u10.HasActive or #u10._queue == 0 then
        return
    else
        local u11 = table.remove(u10._queue, 1)
        if u11 then
            local u12 = u10._id + 1
            u10._id = u12
            u10.HasActive = true
            task.defer(function() --[[Anonymous function at line 69]]
                --[[
                Upvalues:
                    [1] = u11
                --]]
                local v13 = u11.Callback()
                task.wait(u11.Duration)
                if v13 then
                    v13()
                end
            end)
            task.delay(u11.Duration, function() --[[Anonymous function at line 76]]
                --[[
                Upvalues:
                    [1] = u10
                    [2] = u12
                --]]
                if u10._id == u12 then
                    u10.HasActive = false
                end
            end)
        end
    end
end
function u3.Next(p14) --[[Anonymous function at line 83]]
    p14._id = p14._id + 1
    p14.HasActive = false
    p14:Pop()
end
function u3.Clear(p15) --[[Anonymous function at line 90]]
    table.clear(p15._queue)
end
function u3.Destroy(p16) --[[Anonymous function at line 95]]
    p16:Clear()
    p16._connection:Disconnect()
end
return u3