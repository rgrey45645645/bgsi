--devbgascension

-- Bytecode (Base64):
-- BgMHCU1hZ25pdHVkZQRVbml0AVoBWARtYXRoBWF0YW4yFkdldEFuZ2xlQmV0d2VlblZlY3RvcnMAAggCAAAABwQAAAUCCAgVJgIAAU0DAqoAAAAADQMDAAEAAICMAwAAggMCAE0DAgcCAAAATQcDewQAAAA5BgcATQcDeQUAAACeBQYDBwAAAKQFCAAAHGCAnwUDAngEBQOCBAIACQMBAgAAAAAAAAAAAwICGC1EVPsh+T8DAwMEAwUDBgQAHGCAAAcHARgAAQAAAAEAAgABAAAAAAAAAAAAAAAIAAAAAAEAAAECAAOjAAAAwAAAAIIAAgABBgABAAEAARgABgoBAAAAAAGmMuAyZW/BmpT2iqbsSlFzuBgNxgJjc4wLMkNQAnwZaFi6QLiPlapk

return function(p1, p2) --[[Function name: GetAngleBetweenVectors, line 7]]
    local v3 = p1 - p2
    if v3.Magnitude == 0 then
        return 0
    end
    local v4 = v3.Unit
    local v5 = -v4.Z
    local v6 = v4.X
    return math.atan2(v5, v6) - 1.5707963267948966
end