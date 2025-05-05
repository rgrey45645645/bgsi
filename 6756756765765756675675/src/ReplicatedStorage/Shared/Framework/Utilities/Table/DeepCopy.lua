--devbgascension

-- Bytecode (Base64):
-- BgMEBXRhYmxlBWNsb25lBnR5cGVvZghEZWVwQ29weQACCQEBAAAGAwAABQEEFqQBAgAABACAUgIAAJ8BAgJSAgAAxgMAAMYEAABkAgsAuywGA1IIBgCkBwQAAAAwQJ8HAgLwBwUAAAAAgPsHAABSCAYAnwcCAmoHAQVuAvT/AgAAAIIBAgAFAwEDAgQABACAAwMEAAAwQAADBAEYAAAAAAEAAAABAAAAAAAAAQAAAP4ABQQAAAAAAQAAAQIABKMAAADAAAAAEgAAAIIAAgABBgABAAEAARgAAgALAQAAAAABjlEFLVsfv1y8lW+5oqhiSIugiEdwUKIMawphZ7L9N5fbUxOb79TYig==

local function u5(p1) --[[Anonymous function at line 3]]
    --[[
    Upvalues:
        [1] = u5
    --]]
    local v2 = table.clone(p1)
    for v3, v4 in p1 do
        if typeof(v4) == "table" then
            v2[v3] = u5(v4)
        end
    end
    return v2
end
return u5