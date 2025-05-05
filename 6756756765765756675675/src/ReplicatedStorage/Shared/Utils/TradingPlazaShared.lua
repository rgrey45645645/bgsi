--devbgascension

-- Bytecode (Base64):
-- BgMWDUhhdGNoaW5nIFpvbmUNQXJlYXNVbmxvY2tlZAlIYXNBY2Nlc3MEUGV0cwROYW1lBlJhcml0eQZTZWNyZXQKRGlzY292ZXJlZAxIYXNQcm9BY2Nlc3MEZ2FtZRFSZXBsaWNhdGVkU3RvcmFnZQpHZXRTZXJ2aWNlB3JlcXVpcmUGU2hhcmVkBVR5cGVzBERhdGEFdGFibGUGaW5zZXJ0CFNoaW55ICUqBmZvcm1hdAlNeXRoaWMgJSoPU2hpbnkgTXl0aGljICUqAAMFAgAAAAAJTQQBMgEAAABNAwTBAAAAACoDAgABAAAAqQIAAakCAQCCAgIAAgMBAwIACgMBGAAAAAAAAAAAAAsAAAAACwIDAAAAKvsCAABSBAEAvAIC8AAAAACfAgMCKwICAKkCAACCAgIATQIB6AEAAADGAwAAxgQAAGQCCgD7CQEATQoGugIAAACHCAkKTQcI8gMAAADwBwMABAAAgKkHAQCCBwIAbgL1/wIAAAD7AgIAxgMAAMYEAABkAgkATQgBbQUAAACHBwgGDgcFAIwIAABgCAMABwAAAKkIAQCCCAIAbgL2/wIAAACpAgAAggICAAYDAwMEAwUDBgMHAwgAFgkBGAAAAAAAAAEAAwAAAAABAAAAAAAAAAEA/gAGAAAAAQAAAQAAAAEA/QAHABcAAAAAEAAAAQAAVqMAAACkAAEAAAAAQG8CAgC8AAAWAwAAAJ8AAwKkAQUAAABAQE0DABIGAAAATQID7wcAAACfAQICpAIFAAAAQEBNBQASBgAAAE0EBcYIAAAATQME6AkAAACfAgIC/wMCAAAAAADABAoAMAQD8AsAAAD/BAAAAAAAAFIFAgDGBgAAxgcAAGQFKwCeNAQFCAAAAFILBABSDAgApAoOAAA0wICfCgMBbw0PAFIPCAC8DQ2NEAAAAJ8NAwJSDA0AnjQEBAwAAABSCwQApAoOAAA0wICfCgMBbw0RAFIPCAC8DQ2NEAAAAJ8NAwJSDA0AnjQEBAwAAABSCwQApAoOAAA0wICfCgMBbw0SAFIPCAC8DQ2NEAAAAJ8NAwJSDA0AnjQEBAwAAABSCwQApAoOAAA0wICfCgMBbgXU/wEAAADABRMAEgADABIAAgASAAQAMAUDQhQAAACCAwIAFQMKBAAAAEADCwMMAw0EAABAQAMOAw8DEAMEBgADAwMRAxIEADTAgAMTAxQDFQMWBgEDCQIAAQEAARgAAgAAAAAAAgAAAAAAAAEAAAAAAAAAAAIAAgAABAABAAAAAQAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAPwABwAAAAAAFQEAAAAAApNC3ZvhLQt4oYa3D6pxTlf7AvK1/4Fi0ziufqSAkUQrqCwZLa0jC14=

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = require(v1.Shared.Data.Pets)
local u3 = {}
local u5 = {
    ["HasAccess"] = function(_, p4) --[[Function name: HasAccess, line 10]]
        return p4.AreasUnlocked["Hatching Zone"] == true
    end
}
for v6 in u2 do
    table.insert(u3, v6)
    local v7 = ("Shiny %*"):format(v6)
    table.insert(u3, v7)
    local v8 = ("Mythic %*"):format(v6)
    table.insert(u3, v8)
    local v9 = ("Shiny Mythic %*"):format(v6)
    table.insert(u3, v9)
end
function u5.HasProAccess(_, p10) --[[Anonymous function at line 22]]
    --[[
    Upvalues:
        [1] = u5
        [2] = u2
        [3] = u3
    --]]
    if not u5:HasAccess(p10) then
        return false
    end
    for _, v11 in p10.Pets do
        if u2[v11.Name].Rarity == "Secret" then
            return true
        end
    end
    for _, v12 in u3 do
        local v13 = p10.Discovered[v12]
        if v13 and v13 > 0 then
            return true
        end
    end
    return false
end
return u5