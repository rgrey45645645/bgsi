--devbgascension

-- Bytecode (Base64):
-- BgMEBFVuaXQDRG90CU1hZ25pdHVkZRRkaXN0YW5jZVBvaW50U2VnbWVudAACCwMAAAAMBQABBQMICAgIBxICHSYDAgAmBAEATQcEBwAAAAC8BQMrAQAAAJ8FAwKMBgAAfQUEAAYAAABNBgOqAgAAAIIGAgBNBgSqAgAAAH0GBQAFAAAAJgcBAk0GB6oCAAAAggYCAE0KBAcAAAAACQkKBUMIAAkmBwgCTQYHqgIAAACCBgIAAwMBAwIDAwADBAEYAAECAAAAAAEAAAEAAAEAAAABAAAAAwAAAAAAAAAEAAAAAAEAAAECAAOjAAAAwAAAAIIAAgABBgABAAEAARgAAg4BAAAAAAEzc7z5JMcTgAG31m16XLMyv5r0qLpZ+jhSUybfJICHVWv4VjdWKdkI

return function(p1, p2, p3) --[[Function name: distancePointSegment, line 3]]
    local v4 = p3 - p1
    local v5 = p2 - p1
    local v6 = v4:Dot(v5.Unit)
    if v6 <= 0 then
        return v4.Magnitude
    elseif v5.Magnitude <= v6 then
        return (p2 - p3).Magnitude
    else
        return (p1 + v5.Unit * v6 - p3).Magnitude
    end
end