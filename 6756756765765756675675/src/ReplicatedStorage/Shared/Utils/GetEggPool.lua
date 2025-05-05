--devbgascension

-- Bytecode (Base64):
-- BgMZBEl0ZW0EVHlwZQNQZXQJR2V0UmFyaXR5BEVwaWMJTGVnZW5kYXJ5BlNlY3JldAVXb3JsZAROb25lBFBvb2wEbWF0aANtaW4KR2V0RWdnUG9vbARnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZTaGFyZWQERGF0YQRFZ2dzBVV0aWxzFUFwcGx5TXVsdGlwbGllclRvUG9vbAVTdGF0cwhJdGVtVXRpbAVUeXBlcwAFBAEBAAAAE00CAMoAAAAATQECEQEAAADwAQMAAgAAAKkBAACCAQIA+wEAAE0DAMoAAAAAvAEBJQMAAACfAQMC8AECAAQAAACpAgABqQIBAIICAgAFAwEDAgMDAwQDBQAWAAEYAAAAAAAAAQACAAAAAAABAAAAABcAAAAABAEBAAAADvsBAABNAwDKAAAAALwBASUBAAAAnwEDAqkCAQDwAQUAAgAAAPABAgADAAAAqQIAAakCAQCCAgIABAMBAwQDBgMHAB0AARgAAAAAAAABAAAAAAAAAB4AAAAABAEBAAAAFk0CAMoAAAAATQECEQEAAADwAQMAAgAAAKkBAACCAQIA+wEAAE0DAMoAAAAAvAEBJQMAAACfAQMCqQIBAPABBQAEAAAA8AECAAUAAACpAgABqQIBAIICAgAGAwEDAgMDAwQDBgMHACQAARgAAAAAAAABAAIAAAAAAAEAAAAAAAAAJQAAAAAJAwMAAAgFAAAFAwODAh37BAAAhwMEAE0EA48AAAAA8QQCAAEAAABvAQEA+wQBAE0FA0ICAAAAjAcEAJ4TBwQCAAAAUggCAKQGBQAAEDCAnwYDAsAHBgASAgIAwAgHABICAgCfBAUC+wUBAFIGBABSBwIAwAgIABICAgCfBQQAggUAAAkDCAMJAwoDCwMMBAAQMIAGAAYBBgIDAAECCw0BGAAAAQAAAAEDAAAAAAAAAAAAAQAHAPgOAAABAP8AEAAAAAAIAAABAgAwowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQQAEgYAAABNAwTGBwAAAE0CA08IAAAAnwECAqQCBQAAAEBATQUAEgYAAABNBAWhCQAAAE0DBM8KAAAAnwICAqQDBQAAAEBATQcAEgYAAABNBgehCQAAAE0FBiELAAAATQQF0AwAAACfAwICpAQFAAAAQEBNBgASBgAAAE0FBu8NAAAAnwQCAsAFDgASAAEAEgACABIAAwCCBQIADwMOBAAAAEADDwMQAxEEAABAQAMSAxMDFAMVAxYDFwMYAxkGAwEDAQABGAACAAAAAAACAAAAAAAAAAABAAAAAAAAAAABAAAAAAAAAAAAAAEAAAAAAAADAAAAJAEAAAAABO8X5l/l+ARv3dOMywQ32qvg6HgIXB4RwJ43Dp0ipodaofBa+HlQISY=

local v1 = game:GetService("ReplicatedStorage")
local u2 = require(v1.Shared.Data.Eggs)
local u3 = require(v1.Shared.Utils.ApplyMultiplierToPool)
local u4 = require(v1.Shared.Utils.Stats.ItemUtil)
require(v1.Shared.Types)
return function(p5, p6, p7) --[[Function name: GetEggPool, line 11]]
    --[[
    Upvalues:
        [1] = u2
        [2] = u3
        [3] = u4
    --]]
    local v8 = u2[p5]
    local _ = v8.World == p6
    return u3(u3(v8.Pool, math.min(4, p7), function(p9) --[[Anonymous function at line 22]]
        --[[
        Upvalues:
            [1] = u4
        --]]
        if p9.Item.Type == "Pet" then
            return u4:GetRarity(p9.Item) == "Epic"
        else
            return false
        end
    end, function(p10) --[[Anonymous function at line 29]]
        --[[
        Upvalues:
            [1] = u4
        --]]
        local v11 = u4:GetRarity(p10.Item)
        return v11 == "Legendary" and true or v11 == "Secret"
    end), p7, function(p12) --[[Anonymous function at line 36]]
        --[[
        Upvalues:
            [1] = u4
        --]]
        if p12.Item.Type ~= "Pet" then
            return false
        end
        local v13 = u4:GetRarity(p12.Item)
        return v13 == "Legendary" and true or v13 == "Secret"
    end)
end