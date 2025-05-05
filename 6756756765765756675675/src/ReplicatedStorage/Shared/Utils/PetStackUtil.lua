--devbgascension

-- Bytecode (Base64):
-- BgMXBkxvY2tlZAJYUAhFbmNoYW50cwROYW1lBlJhcml0eQZTZWNyZXQLQ2FuTWVyZ2VQZXQEUGV0cwVTaGlueQZNeXRoaWMMRmluZE1lcmdlUGV0FUNvbXBhY3QgUGV0IEludmVudG9yeQhTZXR0aW5ncxJWaXN1YWxTdGFja01pblNpemUPR2V0TWluU3RhY2tTaXplBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwlDb25zdGFudHMERGF0YQAECAMBAAAAGqkDAABNBAKsAAAAACoEFQABAAAAqQMAAE0EAi4BAAAADQQQAAIAAICpAwAATQQCqgMAAABHBAsAAAAAgPsGAABNBwK6BAAAAIcFBgdNBAXyBQAAAPAEAgAGAACAqQMAAakDAQCCAwIABwMBAwICAAAAAAAAAAADAwMEAwUDBgAPBwEYAAAAAAAAAQAAAAABAAAAAQAAAAAAAAAAAAAUAAAAAAwDAQAAACVNAwHoAAAAAMYEAADGBQAAZAMcAPEHGwACAAAATQgHugEAAABNCQK6AQAAAJoIFQAJAAAATQgHtAIAAABNCQK0AgAAAJoIDwAJAAAATQgHpAMAAABNCQKkAwAAAJoICQAJAAAA+wgAAFIKAQBSCwcAvAgI7gQAAACfCAQCDggBAIIHAgBuA+P/AgAAAMYDAACCAwIABQMIAwQDCQMKAwcAHAsBGAAAAAAAAQACAAAAAAABAAAAAAABAAAAAAABAAAAAAAAAvgACwAdAAAAAAcDAgAAABX7BQAATQYCugAAAACHBAUGTQME8gEAAADwAwcAAgAAAE0FAcoEAAAATQQFzwMAAAAqBAYAAQAAAPsGAQBNBQaCBQAAAIcEBQOCBAIAjAQBAIIEAgAGAwQDBQMGAwwDDQMOACwPARgAAAAAAAABAAAAAAAAAAEAAAAAAgAtAAAAAAcAAAECAC6jAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNAwASBgAAAE0CA+8HAAAAnwECAqQCBQAAAEBATQQAEgYAAABNAwQHCAAAAJ8CAgKkAwUAAABAQE0GABIGAAAATQUGxgkAAABNBAXoCgAAAJ8DAgL/BAMAAAAAAMAFCwASAAMAMAUE7gwAAADABQ0AEgAEADAFBPgOAAAAwAUPABIAAwASAAIAMAUECBAAAACCBAIAEQMQBAAAAEADEQMSAxMEAABAQAMUAxUDFgMXAwgGAAMHBgEDCwYCAw8DAAECAQABGAACAAAAAAACAAAAAAAAAQAAAAAAAAEAAAAAAAAAAAMABQAAAA0AAAAQAAAAAAkBAAAAAAPZMHPwoXxMuuv0GWQTQtlwNOHHlckP/yQ92CnVBn6aps76Y6sNkqzn

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local u2 = require(v1.Shared.Constants)
local u3 = require(v1.Shared.Data.Pets)
local u12 = {
    ["CanMergePet"] = function(_, _, p4) --[[Function name: CanMergePet, line 15]]
        --[[
        Upvalues:
            [1] = u3
        --]]
        local v5
        if p4.Locked == true or (p4.XP ~= 0 or p4.Enchants ~= nil) then
            v5 = false
        else
            v5 = u3[p4.Name].Rarity ~= "Secret"
        end
        return v5
    end,
    ["FindMergePet"] = function(_, p6, p7) --[[Function name: FindMergePet, line 28]]
        --[[
        Upvalues:
            [1] = u12
        --]]
        for _, v8 in p6.Pets do
            if v8 ~= p7 and (v8.Name == p7.Name and (v8.Shiny == p7.Shiny and (v8.Mythic == p7.Mythic and u12:CanMergePet(p6, v8)))) then
                return v8
            end
        end
        return nil
    end,
    ["GetMinStackSize"] = function(_, p9, p10) --[[Function name: GetMinStackSize, line 44]]
        --[[
        Upvalues:
            [1] = u3
            [2] = u2
        --]]
        local v11 = u3[p10.Name].Rarity
        return v11 ~= "Secret" and p9.Settings["Compact Pet Inventory"] == true and 1 or u2.VisualStackMinSize[v11]
    end
}
return u12