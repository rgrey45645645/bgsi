--devbgascension

-- Bytecode (Base64):
-- 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

local u1 = game:GetService("RunService").Heartbeat
local u2 = {}
u2.__index = u2
function u2.new(p3) --[[Anonymous function at line 36]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u1
    --]]
    local v4 = p3 or Vector3.new()
    local v5 = {
        ["Friction"] = 1,
        ["Stiffness"] = 4,
        ["Target"] = v4,
        ["Value"] = v4,
        ["Velocity"] = v4 * 0
    }
    local v6 = u2
    local u7 = setmetatable(v5, v6)
    u7._connection = u1:Connect(function(p8) --[[Anonymous function at line 47]]
        --[[
        Upvalues:
            [1] = u7
        --]]
        u7:_update(p8)
    end)
    return u7
end
function u2._update(p9, p10) --[[Anonymous function at line 54]]
    local v11 = p9.Friction
    local v12 = p9.Stiffness * 2 * 3.141592653589793
    local v13 = p9.Target
    local v14 = p9.Value
    local v15 = p9.Velocity
    local v16 = v14 - v13
    local v17 = -v11 * v12 * p10
    local v18 = math.exp(v17)
    local v19, v20
    if v11 == 1 then
        v19 = (v16 * (1 + v12 * p10) + v15 * p10) * v18 + v13
        v20 = (v15 * (1 - v12 * p10) - v16 * (v12 * v12 * p10)) * v18
    elseif v11 < 1 then
        local v21 = 1 - v11 * v11
        local v22 = math.sqrt(v21)
        local v23 = v12 * v22 * p10
        local v24 = math.cos(v23)
        local v25 = v12 * v22 * p10
        local v26 = math.sin(v25)
        local v27
        if v22 > 0.0001 then
            v27 = v26 / v22
        else
            local v28 = p10 * v12
            v27 = v28 + (v28 * v28 * (v22 * v22) * (v22 * v22) / 20 - v22 * v22) * (v28 * v28 * v28) / 6
        end
        local v29
        if v12 * v22 > 0.0001 then
            v29 = v26 / (v12 * v22)
        else
            local v30 = v12 * v22
            v29 = p10 + (p10 * p10 * (v30 * v30) * (v30 * v30) / 20 - v30 * v30) * (p10 * p10 * p10) / 6
        end
        v19 = (v16 * (v24 + v11 * v27) + v15 * v29) * v18 + v13
        v20 = (v15 * (v24 - v27 * v11) - v16 * (v27 * v12)) * v18
    else
        local v31 = v11 * v11 - 1
        local v32 = math.sqrt(v31)
        local v33 = -v12 * (v11 - v32)
        local v34 = -v12 * (v11 + v32)
        local v35 = (v15 - v16 * v33) / (2 * v12 * v32)
        local v36 = v16 - v35
        local v37 = v33 * p10
        local v38 = v36 * math.exp(v37)
        local v39 = v34 * p10
        local v40 = v35 * math.exp(v39)
        v19 = v38 + v40 + v13
        v20 = v38 * v33 + v40 * v34
    end
    p9.Value = v19
    p9.Velocity = v20
end
function u2.Clone(p41) --[[Anonymous function at line 116]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v42 = u2.new(p41.Value)
    v42.Friction = p41.Friction
    v42.Stiffness = p41.Stiffness
    v42.Target = p41.Target
    v42.Value = p41.Value
    v42.Velocity = p41.Velocity
    return v42
end
function u2.Destroy(p43) --[[Anonymous function at line 126]]
    p43._connection:Disconnect()
end
return u2