--devbgascension

-- Bytecode (Base64):
-- BgMFAnRoDUZvcm1hdE9yZGluYWwCc3QCbmQCcmQAAggBAQAABgMAAAUBAhUhAQAAIQIAAYwDCgBgAwgAAgAAAIwDDgBgAgUAAwAAAFIEAABvBQIAcwMEBYIDAgBSBAAA+wYAAIcFBgErBQMA+wYAAIwHAACHBQYHcwMEBYIDAgADAgAAAAAAACRAAgAAAAAAAFlAAwEABAIBGAABAQAAAAAAAQAAAAIAAAAAAAAAAAUAAAAABgAAAQIAEqMAAAD/AAEAAwAAAIwEAABvBQAAagUABG8BAQBvAgIAbwMDAMUAAQQBAAAAwAEEABIAAAAYAQCRBQAAADUBAJEFAAAAggECAAYDAQMDAwQDBQYAAwIBAAEAARgAAQAAAAAAAAAAAAIAAAAKAAABAAAAAAGKPA0WVDn827j4Z4LHgPQAHuAMIfbyhvg2C6CoqtE491i2NvyCN1/O

local u1 = {
    "th",
    "st",
    "nd",
    "rd"
}
function FormatOrdinal(p2)
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v3 = p2 % 10
    local v4 = p2 % 100
    if v4 > 10 and v4 < 14 then
        return p2 .. "th"
    else
        return p2 .. (u1[v3] or u1[0])
    end
end
return FormatOrdinal