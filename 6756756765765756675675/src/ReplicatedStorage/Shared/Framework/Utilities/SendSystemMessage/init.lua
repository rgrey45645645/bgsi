--devbgascension

-- Bytecode (Base64):
-- BgMgCElzU2VydmVyMlNlbmRTeXN0ZW1NZXNzYWdlIGNhbiBvbmx5IGJlIGNhbGxlZCBvbiB0aGUgc2VydmVyBmFzc2VydApGaXJlQ2xpZW50DkZpcmVBbGxDbGllbnRzEVNlbmRTeXN0ZW1NZXNzYWdlC0dsb2JhbEhhdGNoA0dldBtIaWRlIEdsb2JhbCBTZWNyZXQgTWVzc2FnZXMIU2V0dGluZ3MURGlzcGxheVN5c3RlbU1lc3NhZ2UMVGV4dENoYW5uZWxzDFdhaXRGb3JDaGlsZApSQlhHZW5lcmFsDU9uQ2xpZW50RXZlbnQHQ29ubmVjdARnYW1lD1RleHRDaGF0U2VydmljZQpHZXRTZXJ2aWNlClJ1blNlcnZpY2UHUGxheWVycwZzY3JpcHQLUmVtb3RlRXZlbnQISXNDbGllbnQHcmVxdWlyZRFSZXBsaWNhdGVkU3RvcmFnZQZDbGllbnQJRnJhbWV3b3JrCFNlcnZpY2VzCUxvY2FsRGF0YQR0YXNrBXNwYXduAAQNAwIAAAgFAAAFAwOEgyD7BAAAvAQECwAAAACfBAICgQEEBAEAAABvBQEApAMDAAAAIECfAwMBDgEOAFIDAQDGBAAAxgUAAGQDBwD7CAEAUgoHAFILAABSDAIAvAgICAQAAACfCAUBbgP4/wIAAACCAAEA+wMBAFIFAABSBgIAvAMD9QUAAACfAwQBggABAAYDAQMCAwMEAAAgQAMEAwUACQYBGAAAAAAAAAAAAAACAQAAAAEAAAAAAAD/AAAEAAAAAAACCgAAAAAFAgIAAAcEAAAFAgODFPABDQAAAACA+wIAALwCAn8BAAAAnwICAg4CBgBNBALKAwAAAE0DBCUCAAAAKgMCAAEAAICCAAEA+wIBAFIEAAC8AgIhBAAAAJ8CAwGCAAEABQMHAwgDCQMKAwsAGwABGAAAAQAAAAEAAAAAAAABBAAAAAABHAAAAAAEAAMAAAAT+wAAAG8CAAC8AADTAQAAAJ8AAwJvAgIAvAAA0wEAAACfAAMC+wIBAE0BAowDAAAA2QMAABICAgASAAAAvAEBxwQAAACfAQMBggABAAUDDAMNAw4DDwMQAQEYAAEYAAAAAAAAAAAAAgAAAAAAAAAAChkAAAAADQAAAQIAN6MAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQEAAAAAQG8DBAC8AQEWAwAAAJ8BAwKkAgEAAAAAQG8EBQC8AgIWAwAAAJ8CAwKkBAcAAABgQE0DBCEIAAAAwAQJABIAAQASAAMAvAUBBAoAAACfBQICDgUYAKQFDAAAALBApAoBAAAAAEBvDA0AvAoKFgMAAACfCgMCTQkKTQ4AAABNCAkcDwAAAE0HCEMQAAAATQYHaBEAAACfBQICpAYUAABMIIHABxUAEgAAABIAAwASAAUAnwYCAYIEAgAWAxEEAAAAQAMSAxMDFAMVAxYEAABgQAMXBgADGAMZBAAAsEADGgMbAxwDHQMeAx8DIAQATCCBBgICAAIBAAEYAAIAAAAAAAEAAAAAAAEAAAAAAAIAAAACAAAMAAAAAQAAAAAAAAAAAAAAAAAAAAACAAAAAAAAEAEAAAAAA2DacA7eC4/qUh4amswQjqxa6JOgB8iMj6hwjuOGHstFPV7vBZi7p1g=

local u1 = game:GetService("TextChatService")
local u2 = game:GetService("RunService")
game:GetService("Players")
local u3 = script.RemoteEvent
local function v9(p4, p5, p6) --[[Anonymous function at line 9]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u3
    --]]
    local v7 = u2:IsServer()
    assert(v7, "SendSystemMessage can only be called on the server")
    if p5 then
        for _, v8 in p5 do
            u3:FireClient(v8, p4, p6)
        end
    else
        u3:FireAllClients(p4, p6)
    end
end
if u2:IsClient() then
    local u10 = require(game:GetService("ReplicatedStorage").Client.Framework.Services.LocalData)
    task.spawn(function() --[[Anonymous function at line 24]]
        --[[
        Upvalues:
            [1] = u1
            [2] = u3
            [3] = u10
        --]]
        local u11 = u1:WaitForChild("TextChannels"):WaitForChild("RBXGeneral")
        u3.OnClientEvent:Connect(function(p12, p13) --[[Anonymous function at line 27]]
            --[[
            Upvalues:
                [1] = u10
                [2] = u11
            --]]
            if p13 == "GlobalHatch" then
                local v14 = u10:Get()
                if not v14 or v14.Settings["Hide Global Secret Messages"] == true then
                    return
                end
            end
            u11:DisplaySystemMessage(p12)
        end)
    end)
end
return v9