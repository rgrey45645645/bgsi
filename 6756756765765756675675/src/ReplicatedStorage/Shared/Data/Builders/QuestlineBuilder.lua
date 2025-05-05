--devbgascension

-- Bytecode (Base64):
-- BgMXB19xdWVzdHMDX2lkDHNldG1ldGF0YWJsZQNuZXcETmV4dAUlKi0lKgZmb3JtYXQCSWQFUXVlc3QFdGFibGUGaW5zZXJ0A0FkZCVxdWVzdGxpbmVzIG11c3QgaGF2ZSBhdCBsZWFzdCAxIHF1ZXN0BmFzc2VydAZRdWVzdHMFQnVpbGQEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB3JlcXVpcmUGU2hhcmVkBVR5cGVzB19faW5kZXgABAQBAQAAAA7iAgIA/wMAAAAAAAAwAwL6AAAAADAAAtMBAAAA+wMAAJ49AgMDAAAApAEEAAAAMECfAQMCggECAAUDAQMCBQIAAQMDBAAAMEAAJAQBGAABAAAAAQABAAD9AAAAJQAAAAAKAgAAAAAhTQMA+gAAAABNBQD6AAAAABwEBQCHAgMEDgICADABAvMBAAAAbwQCAE0GANMDAAAATQkA+gAAAAAcCAkAlQcIBLwEBI0FAAAAnwQEAlIDBAAwAwGUBgAAAE0EAPoAAAAA4gUIADABBQ4HAAAAnjQEAwUAAACkAwsAACiQgJ8DAwGCAAIADAMBAwUDBgMCAgAAAAAAAPA/AwcDCAMJBQEHAwoDCwQAKJCAACwMARgAAAAAAAABAQACAAAAAAAAAAAAAAAAAQAAAQAAAP8AAAMtAAAAAAUBAAAAABdNBAD6AAAAABwDBAANAwIAAQAAgKkCAAGpAgEAgQECBAIAAABvAwIApAEEAAAAMECfAQMB4gEHAE0CANMIAAAAMAIBlAUAAABNAgD6AAAAADACAZ4GAAAAggECAAkDAQIAAAAAAAAAAAMNAw4EAAAwQAMIAw8FAgUGAwIAOhABGAAAAAAAAAAAAAAAAAABAQAAAAEAAAAAOwAAAAAEAAABAgAdowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQMAEgYAAABNAgPvBwAAAJ8BAgL/AgAAAAAAADACAm4IAAAAwAMJABIAAgAwAwLvCgAAAMADCwAwAwJfDAAAAMADDQAwAwJPDgAAAIICAgAPAxEEAAAAQAMSAxMDFAQAAEBAAxUDFgMXBgADBAYBAwwGAgMQAwABAgEAARgAAgAAAAAAAgAAAAAAABsAAQADAAAACAAADgAACQEAAAAAAyZ3vh9I4vk9FLPUi2CnbFm9J/Ts8U/nOB4b+Dx2lpBmV6I/rHFpdLU=

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = {}
u2.__index = u2
function u2.new(p3) --[[Anonymous function at line 36]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    local v4 = u2
    return setmetatable({
        ["_quests"] = {},
        ["_id"] = p3
    }, v4)
end
function u2.Add(p5, p6) --[[Anonymous function at line 44]]
    local v7 = p5._quests[#p5._quests]
    if v7 then
        v7.Next = p6
    end
    p6.Id = ("%*-%*"):format(p5._id, #p5._quests + 1)
    local v8 = p5._quests
    table.insert(v8, {
        ["Quest"] = p6
    })
    return p5
end
function u2.Build(p9) --[[Anonymous function at line 58]]
    local v10 = #p9._quests ~= 0
    assert(v10, "questlines must have at least 1 quest")
    return {
        ["Id"] = p9._id,
        ["Quests"] = p9._quests
    }
end
return u2