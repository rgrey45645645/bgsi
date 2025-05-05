--devbgascension

-- Bytecode (Base64):
-- BgMDBG1hdGgFY2xhbXAPR2V0VmFsdWVPbkN1cnZlAAIJBAAAAAkGAAAFBAICAgIMJgcCAbIIAAMJBgcIQwUBBjQuBQUBAgAAUgYBAFIHAgCkBAIAAAQAgJ8EBAKCBAIAAwMBAwIEAAQAgAASAwEYAAAAAAAAAAAAAAAAGAAAAAABAAABAgADowAAAMAAAACCAAIAAQYAAQABAAEYABELAQAAAAABxrRqoZSSmST0cAA15znXyJbZxiXZsT5kRMGgctoSm+xEgfXTQS2YqA==

return function(p1, p2, p3, p4) --[[Function name: GetValueOnCurve, line 18]]
    local v5 = p2 + (p3 - p2) * p1 ^ p4
    return math.clamp(v5, p2, p3)
end