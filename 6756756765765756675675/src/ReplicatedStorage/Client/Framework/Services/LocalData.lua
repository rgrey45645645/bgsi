--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = v1.Remotes
local v3 = {}
local u4 = nil
local u5 = nil
local u6 = {}
function v3.IsReady(_) --[[Anonymous function at line 20]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    return u4 ~= nil
end
function v3.DidLoadFail(_) --[[Anonymous function at line 24]]
    --[[
    Upvalues:
        [1] = u5
    --]]
    return u5 == true
end
function v3.Get(_) --[[Anonymous function at line 31]]
    --[[
    Upvalues:
        [1] = u4
    --]]
    return u4
end
function v3.ConnectDataChanged(_, p7, u8) --[[Anonymous function at line 35]]
    --[[
    Upvalues:
        [1] = u6
        [2] = u4
    --]]
    local u9 = {}
    if type(p7) == "string" then
        table.insert(u9, p7)
    else
        u9 = p7
    end
    for _, v10 in u9 do
        if not u6[v10] then
            u6[v10] = {}
        end
        u6[v10][u8] = true
        if u4 ~= nil then
            task.spawn(u8, u4)
        end
    end
    return function() --[[Anonymous function at line 61]]
        --[[
        Upvalues:
            [1] = u9
            [2] = u6
            [3] = u8
        --]]
        for _, v11 in u9 do
            u6[v11][u8] = nil
        end
    end
end
local u12 = Instance.new("BindableEvent")
v3.DataReady = u12.Event
u2.PlayerDataFailed.OnClientEvent:Connect(function() --[[Anonymous function at line 73]]
    --[[
    Upvalues:
        [1] = u5
    --]]
    u5 = true
end)
u2.PlayerDataLoaded.OnClientEvent:Once(function(p13) --[[Anonymous function at line 79]]
    --[[
    Upvalues:
        [1] = u4
        [2] = u12
        [3] = u6
        [4] = u2
    --]]
    u4 = p13
    u12:Fire()
    for _, v14 in u6 do
        for v15 in v14 do
            task.spawn(v15, u4)
        end
    end
    u2.PlayerDataChanged.OnClientEvent:Connect(function(p16, p17) --[[Anonymous function at line 93]]
        --[[
        Upvalues:
            [1] = u4
            [2] = u6
        --]]
        local _ = u4[p16]
        u4[p16] = p17
        local v18 = u6[p16]
        if v18 then
            for v19 in v18 do
                task.spawn(v19, u4)
            end
        end
    end)
end)
return v3