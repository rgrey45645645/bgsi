--devbgascension

-- Bytecode (Base64):
-- BgMDBlBhcmVudARnYW1lEkZpbmRBYnNvbHV0ZVBhcmVudAACBQIAAAAHBAAABQIHBxBSAgAADgIMAE0DAiQAAAAADgMHAPEDBQABAAAApAQCAAAAEECaAwIABAAAAIICAgBSAgMASADz/8YDAACCAwIAAwMBAwIEAAAQQAADAwEYAAEBAAEAAAAAAAABAvsHAAcAAAAAAQAAAQIAA6MAAADAAAAAggACAAEGAAEAAQABGAACDwEAAAAAAad/Y2lR6gj6lbsJ/UY4Iu7uMuzrLMFdbZ+YRayPR8trUaBhxd/XRlQ=

return function(p1, p2) --[[Function name: FindAbsoluteParent, line 3]]
    while p1 do
        local v3 = p1.Parent
        if v3 and (v3 == p2 or v3 == game) then
            return p1
        end
        p1 = v3
    end
    return nil
end