--devbgascension

-- Bytecode (Base64):
-- BgMSBXRhYmxlBmNyZWF0ZQZpcGFpcnMGQ2hhbmNlBWNsb25lBG1hdGgDbWF4FUFwcGx5TXVsdGlwbGllclRvUG9vbARnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZTaGFyZWQFVHlwZXMJRnJhbWV3b3JrCVV0aWxpdGllcwRNYXRoFUdldFJhbmRvbVdlaWdodGVkSXRlbQACEgQAAAAJBgAABQQPAgWFV6QEAgAABACAHAUAAJ8EAgKMBQAApAYEAAAAMEBSBwAAnwYCBFEGGQBSCwIAUgwKAJ8LAgIqCxAAAQAAgE0MCowFAAAACQsMAaQMBwAAGACAUg0KAJ8MAgJNDgyMBQAAACYNCw5DBQUNMAsMjAUAAABqDAQJZQAFAKQLBwAAGACAUgwKAJ8LAgJqCwQJbgbm/wIAAICMBgAAYAYvAAUAAAD/BgAAAAAAAKQHBAAAADBAUggAAJ8HAgRRBwwAUgwCAFINCwCfDAICKwwIAA4DBwBSDAMAUg0LAJ8MAgIrDAMAHA0GAJUMDQhqCgYMbgfz/wIAAIAcBwYAjAgAAGAIFgAHAAAAHAgGAOwHBQikCAQAAAAwQFIJBgCfCAIEUQgMAIcNBAyMDwAATRENjAUAAAAmEBEHnhIPAxAAAACkDgsAACiQgJ8OAwIwDg2MBQAAAG4I8/8CAACAggQCAAwDAQMCBAAEAIADAwQAADBAAwQDBQQAGACAAgAAAAAAAPA/AwYDBwQAKJCAAAsIARgAAAAAAQIAAAAAAQAAAAABAAABAAAAAQAAAAEAAQACAAAAAPgADAAAAQABAAAAAAEAAAAAAAAAAAEAAP4ABgAAAAEAAQAAAAABAQAAAAAAAAAAAAD+AAcRAAAAAAgAAAECAB2jAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNAwASBgAAAE0CA+8HAAAAnwECAqQCBQAAAEBATQcAEgYAAABNBgccCAAAAE0FBrUJAAAATQQFjAoAAABNAwTxCwAAAJ8CAgLAAwwAggMCAA0DCQQAAABAAwoDCwMMBAAAQEADDQMOAw8DEAMRAxIGAAEAAQABGAACAAAAAAACAAAAAAAAAQAAAAAAAAAAAAAAAAUsAQAAAAAB33BvvkwbJefttAUqH/o7xR6T6TcLdy0PD/PNuFOFXBcCwGdS98MSbQ==

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
require(v1.Shared.Framework.Utilities.Math.GetRandomWeightedItem)
return function(p2, p3, p4, p5) --[[Function name: ApplyMultiplierToPool, line 11]]
    local v6 = table.create(#p2)
    local v7 = 0
    for v8, v9 in ipairs(p2) do
        if p4(v9) == true then
            local v10 = v9.Chance * p3
            local v11 = table.clone(v9)
            v7 = v7 + (v10 - v11.Chance)
            v11.Chance = v10
            v6[v8] = v11
        else
            v6[v8] = table.clone(v9)
        end
    end
    if v7 > 0 then
        local v12 = {}
        for v13, v14 in ipairs(p2) do
            if not p4(v14) and (p5 and not p5(v14)) then
                v12[#v12 + 1] = v13
            end
        end
        if #v12 > 0 then
            local v15 = v7 / #v12
            for _, v16 in ipairs(v12) do
                local v17 = v6[v16]
                local v18 = v17.Chance - v15
                v17.Chance = math.max(0, v18)
            end
        end
    end
    return v6
end