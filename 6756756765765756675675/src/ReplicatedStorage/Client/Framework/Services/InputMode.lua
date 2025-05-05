--devbgascension

-- Bytecode (Base64):
-- BgMZCEtleWJvYXJkEEdldExhc3RJbnB1dFR5cGUERW51bQ1Vc2VySW5wdXRUeXBlBVRvdWNoBE5hbWUGc3RyaW5nA3N1YgdHYW1lcGFkBE1vZGUHQ2hhbmdlZARGaXJlBnVwZGF0ZQRnYW1lEFVzZXJJbnB1dFNlcnZpY2UKR2V0U2VydmljZRFSZXBsaWNhdGVkU3RvcmFnZQdyZXF1aXJlBlNoYXJlZAlGcmFtZXdvcmsHQ2xhc3NlcwZTaWduYWwDbmV3FExhc3RJbnB1dFR5cGVDaGFuZ2VkB0Nvbm5lY3QAAgcBAgAAAChvAQAA+wIAALwCAm8BAAAAnwICAqQDBQAEDCDAmgIDAAMAAABvAQQAZQALAE0EAroGAAAAjAUBAIwGBwBMLQACpAMJAAAgcICfAwQC8AMCAAoAAIBvAQoA+wQBAE0DBA0LAAAAmgMDAAEAAAAqAAsAAQAAgPsDAQAwAQMNCwAAAPsEAQBNAwSFDAAAAFIFAQC8AwPdDQAAAJ8DAwGCAAEADgMBAwIDAwMEAwUEBAwgwAMGAwcDCAQAIHCAAwkDCgMLAwwADg0BGAABAAAAAQAAAAEAAQAAAAAAAAAAAAECAAAAAAAAAQAAAQAAAAAAAAIPAAAAAAgAAAECAC6jAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEBAAAAAEBvAwQAvAEBFgMAAACfAQMCpAIGAAAAUEBNBgESBwAAAE0FBhwIAAAATQQFGAkAAABNAwQfCgAAAJ8CAgLiAw0AbwQOADAEAw0LAAAATQQC7w8AAACfBAECMAQDhQwAAADABBAAEgAAABIAAwBNBQCLEQAAAFIHBAC8BQXHEgAAAJ8FAwFSBQQAqQYBAJ8FAgGCAwIAEwMOBAAAAEADDwMQAxEDEgQAAFBAAxMDFAMVAxYDCgMLBQILDAMBAxcGAAMYAxkBAAEAARgAAgAAAAAAAQAAAAAAAgAAAAAAAAAAAAADAQAAAQAAAAADAAAPAAAAAAABAAACAQAAAAABQ229bvO6/hlxqdf6Jzoo08oXYgQWzyt+nGyWIzFCduFJwZxd+HSWuA==

local u1 = game:GetService("UserInputService")
local v2 = game:GetService("ReplicatedStorage")
local u3 = {
    ["Mode"] = "Keyboard",
    ["Changed"] = require(v2.Shared.Framework.Classes.Signal).new()
}
local function v9(p4) --[[Anonymous function at line 14]]
    --[[
    Upvalues:
        [1] = u1
        [2] = u3
    --]]
    local v5 = "Keyboard"
    local v6 = u1:GetLastInputType()
    local v7
    if v6 == Enum.UserInputType.Touch then
        v7 = "Touch"
    else
        local v8 = v6.Name
        v7 = string.sub(v8, 1, 7) == "Gamepad" and "Gamepad" or v5
    end
    if u3.Mode ~= v7 or p4 == true then
        u3.Mode = v7
        u3.Changed:Fire(v7)
    end
end
u1.LastInputTypeChanged:Connect(v9)
v9(true)
return u3