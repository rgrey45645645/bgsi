--devbgascension

-- Bytecode (Base64):
-- BgMMAm9zBWNsb2NrBG1hdGgDbWF4BHRhc2sFc3Bhd24JSGVhcnRiZWF0B0Nvbm5lY3QFZXZlcnkEZ2FtZQpSdW5TZXJ2aWNlCkdldFNlcnZpY2UAAwYAAwAAABWkAAIAAAQAgJ8AAQL7AQAAfQEPAAAAAAD7BAAA+wUBAEMDBAWeEgAEAwAAAFICAACkAQUAABAwgJ8BAwLeAQAApAEIAAAcYID7AgIAnwECAYIAAQAJAwEDAgQABACAAwMDBAQAEDCAAwUDBgQAHGCAAAoAARgAAAABAAADAAAAAAAAAAAAAQAAAAILAAAAAAYCAQAABwQAAAUCAgUUpAICAAAEAIBSAwEAnwICAaQDBQAAEDCAnwMBAkMCAwD7BAAATQME/QYAAADZBQAAEgEC/xIAAAASAAEAvAMDxwcAAACfAwMAwQIAAIIDAAAIAwUDBgQABACAAwEDAgQAEDCAAwcDCAEABQkBGAAAAAACAAAAAgAAAAAAAAAAAAAABgAAAAADAAABAgAKowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAsABBAASAAAAggECAAUDCgQAAABAAwsDDAYBAQEBAAEYAAIAAAAAAAIAEgEAAAAAAkpumMNz9z3EeKryV6qECpuJo7DChfvRskfqW0ooxcG4thwWy1kUJ34=

local u1 = game:GetService("RunService")
return function(u2, u3) --[[Function name: every, line 5]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    task.spawn(u3)
    local u4 = os.clock() + u2
    return u1.Heartbeat:Connect(function() --[[Anonymous function at line 10]]
        --[[
        Upvalues:
            [1] = u4
            [2] = u2
            [3] = u3
        --]]
        local v5 = os.clock()
        if u4 <= v5 then
            local v6 = u4 + u2
            u4 = math.max(v5, v6)
            task.spawn(u3)
        end
    end)
end