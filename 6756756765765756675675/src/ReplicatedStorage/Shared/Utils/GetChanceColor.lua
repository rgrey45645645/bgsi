--devbgascension

-- Bytecode (Base64):
-- BgMJDUV4Y2x1c2l2ZSBQZXQGQ29sb3IzB2Zyb21SR0IGc3RyaW5nBGZpbmQGU2Vhc29uC0NvbXBldGl0aXZlA25ldw5HZXRDaGFuY2VDb2xvcgACBwIAAAAHBAAABQICg3UOASYA8AEIAAAAAICkAgMAAAgQgIwDcACMBP8AjAUjAJ8CBACCAgAApAIGAAAUQIBSAwEAbwQHAJ8CAwIOAgcApAIDAAAIEICMA/8AjARGAIwFSQCfAgQAggIAAPABCAAIAACApAIDAAAIEICMA/8AjATtAIwFJwCfAgQAggIAAKQCAwAACBCAjAOSAIwE/wCMBZ8AnwIEAIICAADYAgkAbwMKAH0DCAACAAAApAMDAAAIEICMBP8AjAUUAIwG1ACfAwQAggMAAG8DCwB9AwgAAgAAAKQDAwAACBCAjAT/AIwFRgCMBkkAnwMEAIIDAABvAwwAfQMIAAIAAACkAwMAAAgQgIwE/wCMBU8AjAa8AJ8DBACCAwAAbwMNAH0DCAACAAAApAMDAAAIEICMBOMAjAWQAIwG/wCfAwQAggMAAG8DDgB9AwgAAgAAAKQDAwAACBCAjARqAIwF+ACMBv8AnwMEAIIDAACMAxAnfQMIAAIAAACkAwMAAAgQgIwEqgCMBf8AjAadAJ8DBACCAwAAjAPoA30DCAACAAAApAMDAAAIEICMBP8AjAXmAIwGpwCfAwQAggMAAKQDEAAAPBCAjAQBAIwFAQCMBgEAnwMEAIIDAAARAwEDAgMDBAAIEIADBAMFBAAUQIADBgMHAgAAAAAAAFlAAgAAAADQElNBAgAAAACAhC5BAgAAAACAhB5BAgAAAAAAavhAAgAAAAAAauhAAwgEADwQgAADCQEYAAEAAQAAAAAAAAEAAAAAAAEAAAAAAAABAAEAAAAAAAACAAAAAAAAAwEAAAEAAAAAAAABAAABAAAAAAAAAQAAAQAAAAAAAAEAAAEAAAAAAAABAAABAAAAAAAAAQAAAQAAAAAAAAEAAAEAAAAAAAACAAAAAAAABAAAAAABAAABAgADowAAAMAAAACCAAIAAQYAAQABAAEYAAIgAQAAAAABgDa2rwFhIiSy8tw7aQM+XG1c55fk5ZnVSTdkYaaVgsXC8qVv2bSbVw==

return function(p1, p2) --[[Function name: GetChanceColor, line 3]]
    if p2 then
        if p2 == "Exclusive Pet" then
            return Color3.fromRGB(112, 255, 35)
        elseif string.find(p2, "Season") then
            return Color3.fromRGB(255, 70, 73)
        elseif p2 == "Competitive" then
            return Color3.fromRGB(255, 237, 39)
        else
            return Color3.fromRGB(146, 255, 159)
        end
    else
        local v3 = 100 / p1
        if v3 >= 5000000 then
            return Color3.fromRGB(255, 20, 212)
        elseif v3 >= 1000000 then
            return Color3.fromRGB(255, 70, 73)
        elseif v3 >= 500000 then
            return Color3.fromRGB(255, 79, 188)
        elseif v3 >= 100000 then
            return Color3.fromRGB(227, 144, 255)
        elseif v3 >= 50000 then
            return Color3.fromRGB(106, 248, 255)
        elseif v3 >= 10000 then
            return Color3.fromRGB(170, 255, 157)
        elseif v3 >= 1000 then
            return Color3.fromRGB(255, 230, 167)
        else
            return Color3.new(1, 1, 1)
        end
    end
end