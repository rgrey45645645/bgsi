--devbgascension

-- Bytecode (Base64):
-- BgMPBnN0cmluZwNzdWIFdGFibGUGaW5zZXJ0ABBHZXRQZXRSZW5kZXJMaXN0BGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwREYXRhBFBldHMJQ29uc3RhbnRzAAIWAwAAAAgFAAAFAwQEArYB/wMAAAAAAAD/BAAAAAAAAIwFAQBSBgAAxgcAAMYIAABkBpUAUgsFAIcMAwsODBAAqQwBAIwPAQBSDQIAjA4BAKgNBwCHEQMLhxARD0cQAwAAAACAqQwAAGUAAQCLDfn/DgwDAJULCwAODAEASADu/1IFCwCMDgEAjA8kADQtCgQODwAAUg0KAKQMAwAACBCAnwwEAocNAQwrDSAAqQ0AABwOAwB9CxAADgAAAIcOAwuMEQEAUg8CAIwQAQCoDwcAhxIOEUcSBAAAAACAqQ0BAGoKDhFlAAEAiw/5/ysNAgCVCwsASADu/ysNYwD/EAAAAQAAAFIRCgDFEBECAQAAAJ40AwQQAAAAUg8DAKQOBgAAFECAnw4DAWUAVwCpDQAAHA4DAH0LNwAOAAAAhw4DC3gQCwCHDwQQDg8CAJULCwBlAC8AjBEBAHgPAgCMEAEAqA8pAJUTCwCHEgMThxMOEUcTJAAAAACAlRQRAIcTDhRHEyAAAAAAgEcSCAAAAAAAhxMSEUcTGwAAAACAlRQRAIcTEhRHExcAAAAAgKkNAQBqCg4RlRMRAG8UBwBqFA4TKxIEAJUTCwD/FAAAAAAAAGoUAxOVFAsAhxMDFG8UBwBqFBMRlRQLAIcTAxSVFBEAbxUHAGoVExSpEwEAahMEC2UAAQCLD9f/Kw0CAJULCwBIAMf/Kw0cAP8QAAACAAAAUhEKAG8SBwDFEBEDAQAAAJ40AwQQAAAAUg8DAKQOBgAAFECAnw4DAf8QAAACAAAAbxEHAG8SBwDFEBEDAQAAAJ40AwQQAAAAUg8DAKQOBgAAFECAnw4DARwPAwB4Dg8AqQ8BAGoPBA5uBmr/AgAAAP8GAAAAAAAAUgcDAMYIAADGCQAAZAcNAIwOAQBSDAIAjA0BAKgMCQCHEgsOkBESB540BgQRAAAAUhAGAKQPBgAAFECAnw8DAYsM9/9uB/L/AgAAAIIGAgAIAgAAAAAAAPA/AwEDAgQACBCAAwMDBAQAFECAAwUACgYBGAAAAQACAgAAAAECAAMBAAAAAQAAAAEB/QYDAQABAgAAAAAAAAACAAEBAAABAQAAAAEAAAEBAfwHA/QOAQAAAAAAAAAAAAAAAwEAAAEBAAABAQIAAAABAAEAAAAAAAAAAAAAAAAAAAABAQEAAAEBAAAAAgAAAAEAAAAAAQAB9A8D6BoBAAAAAAAAAAAAAAABAAAAAAAAAAAAAAABAAAAuABNAAEAAAABAAAAAQAAAAAAAAD//wAGCwAAAAAGAAABAgAgowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAqQBBQAAAEBATQMAEgYAAABNAgPvBwAAAJ8BAgKkAgUAAABAQE0FABIGAAAATQQFxggAAABNAwToCQAAAJ8CAgKkAwUAAABAQE0FABIGAAAATQQFBwoAAACfAwICwAQLAIIEAgAMAwcEAAAAQAMIAwkDCgQAAEBAAwsDDAMNAw4DDwYAAQABAAEYAAIAAAAAAAIAAAAAAAABAAAAAAAAAAABAAAAAAAAA14BAAAAAAGZaRLAXOkCbquteFQSLNa1Cing8Sr+FjIPGWwfMmvDHV2ZrRsj4wAM

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
require(v1.Shared.Data.Pets)
require(v1.Shared.Constants)
return function(p2, p3, p4) --[[Function name: GetPetRenderList, line 10]]
    local v5 = 1
    local v6 = {}
    local v7 = {}
    for _, v8 in p2 do
        local v9
        if true then
            if v6[v5] then
                local v10 = true
                for v11 = 1, p4 do
                    if v6[v5][v11] == nil then
                        v10 = false
                        break
                    end
                end
                if v10 then
                    v9 = v5 + 1
                    if v10 then
                        v5 = v9
                        continue
                    end
                else
                    v9 = v5
                end
            else
                v9 = v5
            end
        end
        if p3[string.sub(v8, 1, 36)] then
            v5 = v9
            local v12 = false
            while v9 <= #v6 do
                local v13 = v6[v9]
                if v7[v9 - 1] then
                    v9 = v9 + 1
                else
                    for v14 = 1, p4 - 1 do
                        local v15 = v6[v9 + 1]
                        if v13[v14] == nil and (v13[v14 + 1] == nil and (v15 == nil or v15[v14] == nil and v15[v14 + 1] == nil)) then
                            v12 = true
                            v13[v14] = v8
                            v13[v14 + 1] = ""
                            if not v15 then
                                v6[v9 + 1] = {}
                            end
                            v6[v9 + 1][v14] = ""
                            v6[v9 + 1][v14 + 1] = ""
                            v7[v9] = true
                            break
                        end
                    end
                    if v12 then
                        break
                    end
                    v9 = v9 + 1
                end
            end
            if not v12 then
                table.insert(v6, { v8, "" })
                table.insert(v6, { "", "" })
                v7[#v6 - 1] = true
            end
        else
            v5 = v9
            local v16 = false
            while v9 <= #v6 do
                local v17 = v6[v9]
                for v18 = 1, p4 do
                    if v17[v18] == nil then
                        v17[v18] = v8
                        v16 = true
                        break
                    end
                end
                if v16 then
                    break
                end
                v9 = v9 + 1
            end
            if not v16 then
                table.insert(v6, { v8 })
            end
        end
    end
    local v19 = {}
    for _, v20 in v6 do
        for v21 = 1, p4 do
            local v22 = v20[v21] or ""
            table.insert(v19, v22)
        end
    end
    return v19
end