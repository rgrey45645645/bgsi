--devbgascension

-- Bytecode (Base64):
-- BgMJBkNGcmFtZRJQb2ludFRvT2JqZWN0U3BhY2UEU2l6ZQFYBG1hdGgDYWJzAVkBWhNQb2ludEludGVyc2VjdHNQYXJ0AAIKAwAAAAgFAAAFAwgHgTdNAwGFAAAAAFIFAAC8AwPGAQAAAJ8DAwJNBQEvAwAAAD4EBQJNBwN5BAAAALsCBwKkBgcAABhQgJ8GAgJNBwR5BAAAANQGAgAHAAAAqQUAAakFAQBNCAN4CAAAALsCCAKkBwcAABhQgJ8HAgJNCAR4CAAAANQHAgAIAAAAqQYAAakGAQBNCQN7CQAAALsCCQKkCAcAABhQgJ8IAgJNCQR7CQAAANQIAgAJAAAAqQcAAakHAQAOAgMADgUCAFIIBwArCAUAUggFAA4IAwBSCAYADggBAFIIBwCCCAIACgMBAwICAAAAAAAAAEADAwMEAwUDBgQAGFCAAwcDCAAICQEYAAAAAAAAAQAAAQAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAAAAAAAAAAAAQAAAAAAAAAAAA0AAAAAAQAAAQIAA6MAAADAAAAAggACAAEGAAEAAQABGAAHDgEAAAAAAYPZfNBnB/4CsR0WRLP7l/H4CjpNBoKTJYRqS+Q+O1GNtflUsivdCwY=

return function(p1, p2, p3) --[[Function name: PointIntersectsPart, line 8]]
    local v4 = p2.CFrame:PointToObjectSpace(p1)
    local v5 = p2.Size / 2
    local v6 = v4.X
    local v7 = math.abs(v6) <= v5.X
    local v8 = v4.Y
    local v9 = math.abs(v8) <= v5.Y
    local v10 = v4.Z
    local v11 = math.abs(v10) <= v5.Z
    if not (p3 and (v7 and v11)) then
        if v7 then
            if not v9 then
                v11 = v9
            end
        else
            v11 = v7
        end
    end
    return v11
end