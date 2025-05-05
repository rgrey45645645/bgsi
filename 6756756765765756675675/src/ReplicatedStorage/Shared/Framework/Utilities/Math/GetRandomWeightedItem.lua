--devbgascension

-- Bytecode (Base64):
-- BgMGBkNoYW5jZQpOZXh0TnVtYmVyBEl0ZW0VR2V0UmFuZG9tV2VpZ2h0ZWRJdGVtBlJhbmRvbQNuZXcAAgoCAQAABwQAAAUCBIcijAIAAFIDAADGBAAAxgUAAGQDAwBNCAeMAAAAAEMCAghuA/z/AgAAAFIDAQArAwEA+wMAAIwFAABSBgIAvAMDhQEAAACfAwQCUgQAAMYFAADGBgAAZAQIAE0JCIwAAAAAJgICCWACBAADAAAATQkIygIAAACCCQIAbgT3/wIAAADGBAAAggQCAAMDAQMCAwMAFQQBGAABAAAAAQAA/wAEAAAAAAAAAAEAAAABAAABAAEAAP0ABwAWAAAAAAIAAAECAAejAAAApAACAAAEAICfAAECwAEDABIAAACCAQIABAMFAwYEAAQAgAYAAQABAAEYAAIAABIAEgEAAAAAAeUGBu921opE18Jse241e8a097pKg6scuod34ilJp24mDvxtGPVIPuY=

local u1 = Random.new()
return function(p2, p3) --[[Function name: GetRandomWeightedItem, line 21]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v4 = 0
    for _, v5 in p2 do
        v4 = v4 + v5.Chance
    end
    local v6 = (p3 or u1):NextNumber(0, v4)
    for _, v7 in p2 do
        v4 = v4 - v7.Chance
        if v4 < v6 then
            return v7.Item
        end
    end
    return nil
end