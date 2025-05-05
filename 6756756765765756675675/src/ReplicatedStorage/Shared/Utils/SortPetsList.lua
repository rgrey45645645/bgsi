--devbgascension

-- Bytecode (Base64):
-- BgMWBE5hbWUGUmFyaXR5BlNlY3JldAZMb2NrZWQLUmFyaXR5T3JkZXICWFAIR2V0UG93ZXIFdGFibGUEc29ydAxTb3J0UGV0c0xpc3QEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB3JlcXVpcmUGU2hhcmVkBVR5cGVzBVV0aWxzBVN0YXRzB1BldFV0aWwJQ29uc3RhbnRzBERhdGEEUGV0cwADDQIFAAAAgQH7AwAAhwIDAPsEAACHAwQB+wUBAE0GAroAAAAAhwQFBvsGAQBNBwO6AAAAAIcFBgdNBwTyAQAAAPAHAgACAAAAqQYAAakGAQBNCAXyAQAAAPAIAgACAAAAqQcAAakHAQDxBggABwAAAE0HBPIBAAAA8AcCAAIAAACpBgABqQYBAIIGAgBNBgKsAwAAAE0HA6wDAAAA8QYIAAcAAABNBwKsAwAAACoHAgABAAAAqQYAAakGAQCCBgIA+wgCAE0HCJgEAAAATQgE8gEAAACHBgcI+wkCAE0ICZgEAAAATQkF8gEAAACHBwgJ+wkDAIcICQD7CgMAhwkKAfsKBADwChAAAQAAgPEGBgAHAAAAtwcCAAYAAACpCgABqQoBAIIKAgDxCBUACQAAALcJAgAIAAAAqQoAAakKAQCCCgIAZQAOAPEIBgAJAAAAtwkCAAgAAACpCgABqQoBAIIKAgDxBgYABwAAALcHAgAGAAAAqQoAAakKAQCCCgIATQoCugAAAABNCwO6AAAAAPEKCgALAAAATQsCugAAAABNDAO6AAAAALcLAgAMAAAAqQoAAakKAQCCCgIATQoCLgUAAABNCwMuBQAAAPEKCgALAAAATQsCLgUAAABNDAMuBQAAALcMAgALAAAAqQoAAakKAQCCCgIAtwACAAEAAACpCgABqQoBAIIKAgAGAwEDAgMDAwQDBQMGABYAARgAAAEAAgAAAAEAAAADAAAAAAAAAAAAAAAAAAEAAAAAAAAEAAAAAAABAAAAAAAAAwAAAAAAAQAAAAAAAgABAAMAAAEAAQAAAAABAAEAAAAAAAMAAQAAAAABAAEAAAAABQAAAAAAAQAAAAAAAAAABAAAAAAAAQAAAAAAAAAABAAAAAAXAAAAAA4EAwAACQYAAAUEBAQDgxr/BAAAAAAAAFIFAADGBgAAxgcAAGQFBwD7CgAAhwwBCVINAwC8Cgq4AAAAAJ8KBAJqCgQJbgX4/wIAAACkBQMAAAgQgFIGAADZBwAAEgABABICAQASAgIAEgAEABIAAgCfBQMBggABAAQDBwMIAwkEAAgQgAEACwoBGAAAAQAAAAEAAAAAAAD/AAQAAAAAAAAAAAAzEQAAAAAIAAABAgAuowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQMAEgYAAABNAgPvBwAAAJ8BAgKkAgUAAABAQE0GABIGAAAATQUGoQgAAABNBAUhCQAAAE0DBGkKAAAAnwICAqQDBQAAAEBATQUAEgYAAABNBAUHCwAAAJ8DAgKkBAUAAABAQE0HABIGAAAATQYHxgwAAABNBQboDQAAAJ8EAgLABQ4AEgACABIABAASAAMAggUCAA8DCwQAAABAAwwDDQMOBAAAQEADDwMQAxEDEgMTAxQDFQMWBgEBAQEAARgAAgAAAAAAAgAAAAAAAAEAAAAAAAAAAAAAAQAAAAAAAAEAAAAAAAAAAAMAAABBAQAAAAACtq7um6aWUgeEaoQPQJVVgg9s3AD9v3iFQVJ/PGpTdUqRY0Pc6fAlBg==

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = require(v1.Shared.Utils.Stats.PetUtil)
local u3 = require(v1.Shared.Constants)
local u4 = require(v1.Shared.Data.Pets)
return function(p5, u6, u7, p8) --[[Function name: SortPetsList, line 11]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u4
        [3] = u3
    --]]
    local u9 = {}
    for _, v10 in p5 do
        u9[v10] = u2:GetPower(u6[v10], p8)
    end
    table.sort(p5, function(p11, p12) --[[Anonymous function at line 22]]
        --[[
        Upvalues:
            [1] = u6
            [2] = u4
            [3] = u3
            [4] = u9
            [5] = u7
        --]]
        local v13 = u6[p11]
        local v14 = u6[p12]
        local v15 = u4[v13.Name]
        local v16 = u4[v14.Name]
        if v15.Rarity == "Secret" == (v16.Rarity == "Secret") then
            if v13.Locked == v14.Locked then
                local v17 = u3.RarityOrder[v15.Rarity]
                local v18 = u3.RarityOrder[v16.Rarity]
                local v19 = u9[p11]
                local v20 = u9[p12]
                if u7 == "Rarity" then
                    if v17 ~= v18 then
                        return v18 < v17
                    end
                    if v19 ~= v20 then
                        return v20 < v19
                    end
                else
                    if v19 ~= v20 then
                        return v20 < v19
                    end
                    if v17 ~= v18 then
                        return v18 < v17
                    end
                end
                if v13.Name == v14.Name then
                    if v13.XP == v14.XP then
                        return p11 < p12
                    else
                        return v13.XP > v14.XP
                    end
                else
                    return v13.Name < v14.Name
                end
            else
                return v13.Locked == true
            end
        else
            return v15.Rarity == "Secret"
        end
    end)
end