--devbgascension

-- Bytecode (Base64):
-- BgMgBHR5cGUGbnVtYmVyDWludmFsaWQgc3RvY2sGYXNzZXJ0A01pbgNNYXgGX3N0b2NrCF9wcm9kdWN0BV9jb3N0DHNldG1ldGF0YWJsZQNuZXcTcHJvZHVjdCBhbHJlYWR5IHNldApTZXRQcm9kdWN0EGNvc3QgYWxyZWFkeSBzZXQEVHlwZQhDdXJyZW5jeQZBbW91bnQHU2V0Q29zdAVTdG9jawdQcm9kdWN0BENvc3QNc3RvY2sgbm90IHNldA9wcm9kdWN0IG5vdCBzZXQMY29zdCBub3Qgc2V0BUJ1aWxkBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwdfX2luZGV4AAUFAQEAAABAuygAA1ICAACkAQEAAAAAQJ8BAgLwAREAAgAAgKkCAAAhAwADDQMGAAQAAICMAwAAtwMCAAAAAACpAgABqQIBAIEBAgQFAAAAbwMFAKQBBwAAAGBAnwEDAWUAGQCpAgAATQQA2AgAAAAhAwQDDQMOAAQAAICpAgAATQMA2AgAAACMBAAAYAQIAAMAAABNBAC0CQAAACEDBAMNAwIABAAAAKkCAAGpAgEAgQECBAUAAABvAwUApAEHAAAAYECfAQMB4gINADAAAiQKAAAAxgMAADADAqQLAAAAxgMAADADArkMAAAA+wMAAJ49AgMDAAAApAEPAAAA4ECfAQMCggECABADAQQAAABAAwICAAAAAAAA8D8CAAAAAAAAAAADAwMEBAAAYEADBQMGAwcDCAMJBQMKCwwDCgQAAOBAABsLARgAAAAAAAAAAQAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAQABAAABAAABAAD8AAAAHAAAAAAFAgAAAAAMTQQApAAAAABWAwQAgQEDBAEAAABvBAEApAIDAAAAIECfAgMBMAEApAAAAACCAAIABAMIAwwDBAQAACBAACgNARgAAAAAAAAAAAABAAEpAAAAAAYDAAAAABRNBQC5AAAAAFYEBQCBAQQEAQAAAG8FAQCkAwMAAAAgQJ8DAwHiAwcAbwQFADAEAxEEAAAAMAEDCQUAAAAwAgMrBgAAADADALkAAAAAggACAAgDCQMOAwQEAAAgQAMPAxADEQUDBAUGAC8SARgAAAAAAAAAAAABAQAAAQABAP0ABTAAAAAABQEAAAAAIOIBAwBNAwAkBAAAAIEBAwQFAAAAbwQFAKQCBwAAAGBAnwIDAjACAXIAAAAATQMApAgAAACBAQMECQAAAG8ECQCkAgcAAABgQJ8CAwIwAgFXAQAAAE0DALkKAAAAgQEDBAsAAABvBAsApAIHAAAAYECfAgMCMAIBIwIAAACCAQIADAMTAxQDFQUDAAECAwcDFgMEBAAAYEADCAMXAwkDGAA6GQEYAAEAAAAAAAAAAAABAAAAAAAAAAAAAQAAAAAAAAAAAAA7AAAAAAQAAAECACCjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNAwASBgAAAE0CA+8HAAAAnwECAv8CAAAAAAAAMAICbggAAADAAwkAEgACADADAu8KAAAAwAMLADADAqsMAAAAwAMNADADAssOAAAAwAMPADADAk8QAAAAggICABEDGgQAAABAAxsDHAMdBAAAQEADHgMfAyAGAAMLBgEDDQYCAxIGAwMZBAABAgMBAAEYAAIAAAAAAAEAAAAAAAATAAEAAwAAAA0AAAcAAAsAAAkBAAAAAATsouxaz2QfNN5mhs4r9rEejCVM4SXJS04gOCY7ZjqCHT3TcxmgImR4

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = {}
u2.__index = u2
function u2.new(p3) --[[Anonymous function at line 27]]
    --[[
    Upvalues:
        [1] = u2
    --]]
    if type(p3) == "number" then
        local v4
        if p3 % 1 == 0 then
            v4 = p3 > 0
        else
            v4 = false
        end
        assert(v4, "invalid stock")
    else
        local v5
        if p3.Min % 1 == 0 and p3.Min > 0 then
            v5 = p3.Max % 1 == 0
        else
            v5 = false
        end
        assert(v5, "invalid stock")
    end
    local v6 = u2
    return setmetatable({
        ["_stock"] = p3,
        ["_product"] = nil,
        ["_cost"] = nil
    }, v6)
end
function u2.SetProduct(p7, p8) --[[Anonymous function at line 40]]
    local v9 = not p7._product
    assert(v9, "product already set")
    p7._product = p8
    return p7
end
function u2.SetCost(p10, p11, p12) --[[Anonymous function at line 47]]
    local v13 = not p10._cost
    assert(v13, "cost already set")
    p10._cost = {
        ["Type"] = "Currency",
        ["Currency"] = p11,
        ["Amount"] = p12
    }
    return p10
end
function u2.Build(p14) --[[Anonymous function at line 58]]
    local v15 = {}
    local v16 = p14._stock
    v15.Stock = assert(v16, "stock not set")
    local v17 = p14._product
    v15.Product = assert(v17, "product not set")
    local v18 = p14._cost
    v15.Cost = assert(v18, "cost not set")
    return v15
end
return u2