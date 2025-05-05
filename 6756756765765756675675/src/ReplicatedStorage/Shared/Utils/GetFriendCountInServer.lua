--devbgascension

-- Bytecode (Base64):
-- BgMZBlVzZXJJZA9HZXRGcmllbmRzQXN5bmMOR2V0Q3VycmVudFBhZ2UCSWQFdGFibGUGaW5zZXJ0CklzRmluaXNoZWQWQWR2YW5jZVRvTmV4dFBhZ2VBc3luYwVwY2FsbA9nZXRGcmllbmRzQXN5bmMGUGFyZW50DW9uUGxheWVyQWRkZWQQb25QbGF5ZXJSZW1vdmluZxFHZXRQbGF5ZXJCeVVzZXJJZBZHZXRGcmllbmRDb3VudEluU2VydmVyBGdhbWUHUGxheWVycwpHZXRTZXJ2aWNlClJ1blNlcnZpY2ULUGxheWVyQWRkZWQHQ29ubmVjdA5QbGF5ZXJSZW1vdmluZwpHZXRQbGF5ZXJzBHRhc2sFc3Bhd24ABgoAAgAAAB//AAAAAAAAAPsBAAD7BAEATQME5gAAAAC8AQHDAQAAAJ8BAwK8AgG1AgAAAJ8CAgRkAggATQkGlAMAAACeNAAECQAAAFIIAACkBwYAABRAgJ8HAwFuAvf/AgAAAE0CAaEHAAAAKwIEALwCATcIAAAAnwICAUgA6/+CAAIACQMBAwIDAwMEAwUDBgQAFECAAwcDCAAJAAEYAAABAAAAAAAAAgAAAAEAAAAAAAAA/wADAAADAAD5CQoAAAAABAEBAAAGAwAABQEHC6QBAQAAAABA2QIAABICAAASAAAAnwECAysBAwD/AwAAAAAAAIIDAgCCAgIAAgMJBAAAAEABAAgKARgAAAAAAAAPAQAAAwkAAAAABAECAAAGAwAABQEHEqQCAQAAAABA2QMAABICAAASAAAAnwICAysCAwD/AQAAAAAAAGUAAQBSAQMATQIAJAIAAAArAgEAggABAPsCAQBqAQIAggABAAMDCQQAAABAAwsBAB8MARgAAAAAAAAPAQAAAwUAAAECAAEJAAAAAAMBAQAABgMAAAUBBwT7AQAAxgIAAGoCAQCCAAEAAAAoDQEYAAAAASkAAAAACwECAAAGAwAABQEHFfsCAACHAQIAKwECAIwCAACCAgIAjAIAAFIDAQDGBAAAxgUAAGQDCAD7CAEAUgoHALwICGEAAAAAnwgDAkcIAgAAAAAAlQICAW4D9/8CAAAAggICAAIDDgIAAAAAAADwPwAzDwEYAAABAQADAQAAAAEAAAAAAAAB/gAGNAAAAAAOAAABAAAxowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBAQAAAABAbwMEALwBARYDAAAAnwEDAv8CAAAAAAAAwAMFABIAAADABAYAEgAAABIAAgDABQcAEgACAE0GACgIAAAAUggEALwGBscJAAAAnwYDAU0GANQKAAAAUggFALwGBscJAAAAnwYDAbwGAKsLAAAAnwYCBGQGBQCkCw4AADTAgFIMBABSDQoAnwsDAW4G+v8CAAAAwAYPABIAAgASAAAAggYCABADEAQAAABAAxEDEgMTBgEGAgYDAxQDFQMWAxcDGAMZBAA0wIAGBAQBAgMEAQABGAACAAAAAAABAAAAAAACAAIAFwAACQAEAAAAAAABAAAAAAACAAAAAQAAAAD/AAQAABABAAAAAAVj0o7+T4J72VEW5GpgtdyIiotWx8C97MUb7frkw9bkY2xDHWAJ+oPA

local u1 = game:GetService("Players")
game:GetService("RunService")
local u2 = {}
local function v11(u3) --[[Anonymous function at line 31]]
    --[[
    Upvalues:
        [1] = u1
        [2] = u2
    --]]
    local v8, v9 = pcall(function() --[[Anonymous function at line 9]]
        --[[
        Upvalues:
            [1] = u1
            [2] = u3
        --]]
        local v4 = u1:GetFriendsAsync(u3.UserId)
        local v5 = {}
        while true do
            for _, v6 in v4:GetCurrentPage() do
                local v7 = v6.Id
                table.insert(v5, v7)
            end
            if v4.IsFinished then
                return v5
            end
            v4:AdvanceToNextPageAsync()
        end
    end)
    local v10 = not v8 and {} or v9
    if u3.Parent then
        u2[u3] = v10
    end
end
u1.PlayerAdded:Connect(v11)
u1.PlayerRemoving:Connect(function(p12) --[[Function name: onPlayerRemoving, line 40]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    u2[p12] = nil
end)
for _, v13 in u1:GetPlayers() do
    task.spawn(v11, v13)
end
return function(p14) --[[Function name: GetFriendCountInServer, line 51]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u1
    --]]
    local v15 = u2[p14]
    if not v15 then
        return 0
    end
    local v16 = 0
    for _, v17 in v15 do
        if u1:GetPlayerByUserId(v17) ~= nil then
            v16 = v16 + 1
        end
    end
    return v16
end