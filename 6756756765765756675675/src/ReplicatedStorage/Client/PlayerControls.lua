--devbgascension

-- Bytecode (Base64):
-- BgMVDVBsYXllclNjcmlwdHMMUGxheWVyTW9kdWxlDFdhaXRGb3JDaGlsZAdyZXF1aXJlC0dldENvbnRyb2xzBkVuYWJsZQdEaXNhYmxlDXVwZGF0ZUVuYWJsZWQMRW5hYmxlTWFzdGVyDURpc2FibGVNYXN0ZXINR2V0TW92ZVZlY3RvcgdWZWN0b3IzA25ldwRnYW1lB1BsYXllcnMKR2V0U2VydmljZQtMb2NhbFBsYXllcgR0YXNrBWRlZmVyDkNoYXJhY3RlckFkZGVkB0Nvbm5lY3QACAMAAwAAAA/7AQAATQABuAAAAABvAgEAvAAA0wIAAACfAAMCpAEEAAAAMEBSAgAAnwECAt4BAQD7AQIAnwEBAYIAAQAFAwEDAgMDAwQEAAAwQAAVAAEYAAAAAAAAAAEAAAAAAQABFgAAAAAEAAMAAAAT+wAAAA4AAQD7AAEA+wECAA4BDQD7AQIAvAEBfQAAAACfAQICKgAFAAEAAIC8AgHEAQAAAJ8CAgGCAAEAvAIBXwIAAACfAgIBggABAAMDBQMGAwcAHwgBGAAAAAIAAQAAAAEAAQAAAAIAAAsgAAAAAAIBAgAAAAWpAQEA3gEAAPsBAQCfAQEBggABAAAANwYBGAAAAQABOAAAAAACAQIAAAAFqQEAAN4BAAD7AQEAnwEBAYIAAQAAADwHARgAAAEAAT0AAAAAAgECAAAABakBAQDeAQAA+wEBAJ8BAQGCAAEAAABBCQEYAAABAAFCAAAAAAIBAgAAAAWpAQAA3gEAAPsBAQCfAQEBggABAAAARgoBGAAAAQABRwAAAAAEAQEAAAAP+wEAAA4BCAD7AQAAvAEBfQAAAACfAQICvAIB/QEAAACfAgIAggIAAEw2AAKkAQQAAAwggJ8BAQKCAQIABQMFAwsDDAMNBAAMIIAASwsBGAAAAQAAAAEAAAACAAAAAEwAAAAACgAAAQIAOqMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwJNAQAxBAAAAP8CBAAAAAAAxgMAAMYEAACkBQcAABhQgNkGAAASAAEAEgED/xIBBP+fBQIBqQUBAKkGAQDZBAEAEgEF/xIBBv8SAQP/TQcBlwgAAABSCQQAvAcHxwkAAACfBwMB2QcCABIBBv8SAQT/MAcCxAoAAADZBwMAEgEG/xIBBP8wBwJfCwAAANkHBAASAQX/EgEE/zAHAhIMAAAA2QcFABIBBf8SAQT/MAcCfw0AAADZBwYAEgED/zAHAv0OAAAAwQMAAIICAgAPAw4EAAAAQAMPAxADEQMSAxMEABhQgAMUAxUDBgMHAwkDCgMLBwABAgMEBQYBAAEYAAMAAAAAAAEAAwACCQIAAAAAAAAHAQIAAAAVAAAAAAADAAAAAAUAAAAABQAAAAAFAAAAAAUAAAAIAAEAAAAAB9o7Nw3IYRzy6P9dmVxCvaJEZZ+S77chGL5BfOnzwBw774FZYEuhS6Q=

local u1 = game:GetService("Players").LocalPlayer
local v2 = {}
local u3 = nil
local u4 = nil
task.defer(function() --[[Anonymous function at line 21]]
    --[[
    Upvalues:
        [1] = u1
        [2] = u3
        [3] = u4
    --]]
    local v5 = u1.PlayerScripts:WaitForChild("PlayerModule")
    u3 = require(v5)
    u4()
end)
local u6 = true
local u7 = true
u4 = function() --[[Function name: updateEnabled, line 31]]
    --[[
    Upvalues:
        [1] = u6
        [2] = u7
        [3] = u3
    --]]
    local v8 = u6
    if v8 then
        v8 = u7
    end
    if u3 then
        local v9 = u3:GetControls()
        if v8 == true then
            v9:Enable()
            return
        end
        v9:Disable()
    end
end
u1.CharacterAdded:Connect(u4)
function v2.Enable(_) --[[Anonymous function at line 55]]
    --[[
    Upvalues:
        [1] = u7
        [2] = u4
    --]]
    u7 = true
    u4()
end
function v2.Disable(_) --[[Anonymous function at line 60]]
    --[[
    Upvalues:
        [1] = u7
        [2] = u4
    --]]
    u7 = false
    u4()
end
function v2.EnableMaster(_) --[[Anonymous function at line 65]]
    --[[
    Upvalues:
        [1] = u6
        [2] = u4
    --]]
    u6 = true
    u4()
end
function v2.DisableMaster(_) --[[Anonymous function at line 70]]
    --[[
    Upvalues:
        [1] = u6
        [2] = u4
    --]]
    u6 = false
    u4()
end
function v2.GetMoveVector(_) --[[Anonymous function at line 75]]
    --[[
    Upvalues:
        [1] = u3
    --]]
    if u3 then
        return u3:GetControls():GetMoveVector()
    else
        return Vector3.new()
    end
end
return v2