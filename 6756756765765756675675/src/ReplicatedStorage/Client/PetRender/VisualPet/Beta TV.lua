--devbgascension

-- Bytecode (Base64):
-- BgMjC05leHRJbnRlZ2VyGHJieGFzc2V0aWQ6Ly8xNjY2NDM1Njk3MwdUZXh0dXJlBHRhc2sEd2FpdBhyYnhhc3NldGlkOi8vMTY2NjQzNTUxNzEIc2VxdWVuY2UCb3MFY2xvY2sFc3Bhd24KRGlzY29ubmVjdAdjbGVhbnVwCk5leHROdW1iZXIFTW9kZWwKRGVjb3JhdGlvbgJUVgVEZWNhbAlIZWFydGJlYXQHQ29ubmVjdAlDdXN0b21SaWcEZ2FtZQpSdW5TZXJ2aWNlCkdldFNlcnZpY2UGUmFuZG9tA25ldxhyYnhhc3NldGlkOi8vMTY2NjQ1MjE4NTMraHR0cDovL3d3dy5yb2Jsb3guY29tL2Fzc2V0Lz9pZD0xNTk0NjU5Mjk1MypodHRwOi8vd3d3LnJvYmxveC5jb20vYXNzZXQvP2lkPTY5MjU4MTcxMDgYcmJ4YXNzZXRpZDovLzE2NjY0NTg2ODMyHHJieGFzc2V0aWQ6Ly8xMzYyNjE2OTYzOTg0ODgvaHR0cDovL3d3dy5yb2Jsb3guY29tL2Fzc2V0Lz9pZD0xMjY3ODk0ODc2NTg1MDMbcmJ4YXNzZXRpZDovLzc3MzEzNDc3MzkzODg0K2h0dHA6Ly93d3cucm9ibG94LmNvbS9hc3NldC8/aWQ9MTIyNDc0ODgwMDEbcmJ4YXNzZXRpZDovLzcwNTY1Nzg4NDI0OTMzHHJieGFzc2V0aWQ6Ly8xMDA4Mzc4NTQzMjQ0OTIABQcABAAAACvGAAAA+wEAAPsCAQCMBAEA+wYAABwFBgC8AgKMAAAAAJ8CBAKHAAEC+wECAJoAAgABAAAASADz/94AAgD7AQMAbwIBADACAU8CAAAApAEFAAAQMIBvAgYAnwECAfsBAwAwAAFPAgAAAKQBBQAAEDCAjAIMAJ8BAgH7AQMAbwIBADACAU8CAAAApAEFAAAQMIBvAgYAnwECAfsBAwBvAgcAMAIBTwIAAACCAAEACAMBAwIDAwMEAwUEABAwgAIAAAAAAADQPwMGACEHARgAAgAAAAAAAAAAAQAAAAECAAAAAQAAAAEAAAEAAAABAAAAAQAAAAEAAAABIgAAAAAEAQIAAAANpAECAAAEAICfAQEC+wIAAGACBwABAAAAlQIBA94CAACkAgYAABRAgPsDAQCfAgIBggABAAcDCAMJBAAEAIACAAAAAAAAPkADBAMKBAAUQIAAMQABGAAAAAEAAAEAAQAAAAIyAAAAAAIAAQAAAAX7AAAAvAAAGgAAAACfAAIBggABAAEDCwA5DAEYAAAAAAE6AAAAAAgBAwAACgMAAQUBBA8FDQImpAMDAAAIEICfAwEClQIDAPsDAACMBQEAjAYEALwDA4UEAAAAnwMEAkMBAgNNBQA7BQAAAE0EBRkGAAAATQMEbQcAAABNAgOgCAAAAMYDAADZBAAAEgIBABICAAASAQP/EgACAPsGAgBNBQb9CQAAANkHAQASAQH/EgAEALwFBccKAAAAnwUDAtkGAgASAAUAwQEAAIIGAgALAgAAAAAAAPA/AwgDCQQACBCAAw0DDgMPAxADEQMSAxMDAAECHBQBGAAAAAAAAAAAAAAAAQAAAAAAAAABAgAAAAAQAAAAAAAAAAAIAAQAHQAAAAANAAABAgAdowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBgAAFECAnwEBAv8CAAAKAAAAbwMHAG8ECABvBQkAbwYKAG8HCwBvCAwAbwkNAG8KDgBvCw8AbwwQAMUCAwsBAAAAwAMRABIAAQASAAIAEgAAAIIDAgASAxUEAAAAQAMWAxcDGAMZBAAUQIADGgMbAxwDHQMeAx8DIAMhAyIDIwYDAQMBAAEYAAIAAAAAAAIAAAIAAQEBAQEBAQEBAQAACwAAACUBAAAAAATo2tXT8tUeTtoev0cyx0BLD9oXep5ncTIHX0+I3/K32DHs3q63Ge0s

local u1 = game:GetService("RunService")
local u2 = Random.new()
local u3 = {
    "rbxassetid://16664521853",
    "http://www.roblox.com/asset/?id=15946592953",
    "http://www.roblox.com/asset/?id=6925817108",
    "rbxassetid://16664586832",
    "rbxassetid://136261696398488",
    "http://www.roblox.com/asset/?id=126789487658503",
    "rbxassetid://77313477393884",
    "http://www.roblox.com/asset/?id=12247488001",
    "rbxassetid://70565788424933",
    "rbxassetid://100837854324492"
}
return function(p4) --[[Function name: CustomRig, line 28]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u3
        [3] = u1
    --]]
    local u5 = os.clock() + 1 + u2:NextNumber(1, 4)
    local u6 = p4.Model.Decoration.TV.Decal
    local u7 = nil
    local function u9() --[[Anonymous function at line 33]]
        --[[
        Upvalues:
            [1] = u3
            [2] = u2
            [3] = u7
            [4] = u6
        --]]
        repeat
            local v8 = u3[u2:NextInteger(1, #u3)]
        until v8 ~= u7
        u7 = v8
        u6.Texture = "rbxassetid://16664356973"
        task.wait(0.25)
        u6.Texture = v8
        task.wait(12)
        u6.Texture = "rbxassetid://16664356973"
        task.wait(0.25)
        u6.Texture = "rbxassetid://16664355171"
    end
    local u11 = u1.Heartbeat:Connect(function(_) --[[Anonymous function at line 49]]
        --[[
        Upvalues:
            [1] = u5
            [2] = u9
        --]]
        local v10 = os.clock()
        if u5 < v10 then
            u5 = v10 + 30
            task.spawn(u9)
        end
    end)
    return function() --[[Function name: cleanup, line 57]]
        --[[
        Upvalues:
            [1] = u11
        --]]
        u11:Disconnect()
    end
end