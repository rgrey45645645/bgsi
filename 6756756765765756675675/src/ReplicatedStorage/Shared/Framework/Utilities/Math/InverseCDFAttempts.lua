--devbgascension

-- Bytecode (Base64):
-- BgMHCk5leHROdW1iZXIEbWF0aANsb2cEY2VpbBJJbnZlcnNlQ0RGQXR0ZW1wdHMGUmFuZG9tA25ldwACCgIBAAAHBAAABQICAhypAgAAjAMAAPsEAAC8BASFAAAAAJ8EAgL1CAEEuxEIAqQHBAAADCCAnwcCAvUJAQG7EQkCpAgEAAAMIICfCAIC7AYHCLsHBgKkBQYAABQggJ8FAgJ9BQQAAAAAAKkCAQBSAwUAggIDAFIDAACCAgMABwMBAgAAAAAAAPA/AwIDAwQADCCAAwQEABQggAAFBQEYAAECAAAAAwAAAAAAAAAAAAAAAAAAAQABAQACAwkAAAAAAgAAAQIAB6MAAACkAAIAAAQAgJ8AAQLAAQMAEgAAAIIBAgAEAwYDBwQABACABgABAAEAARgAAgAAAgAWAQAAAAABgKetIgpxh8WyY8e2Dt6+hxGZ0lFXoyniqKYfFPtJBsrSBUnFii4K5A==

local u1 = Random.new()
return function(p2, p3) --[[Function name: InverseCDFAttempts, line 5]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v4 = false
    local v5 = 1 - u1:NextNumber()
    local v6 = math.log(v5)
    local v7 = 1 - p3
    local v8 = v6 / math.log(v7)
    local v9 = math.ceil(v8)
    if v9 <= p2 then
        return true, v9
    else
        return v4, p2
    end
end