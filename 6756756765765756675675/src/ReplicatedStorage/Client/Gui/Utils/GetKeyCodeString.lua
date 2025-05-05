--devbgascension

-- Bytecode (Base64):
-- BgMJE0dldFN0cmluZ0ZvcktleUNvZGUGc3RyaW5nBW1hdGNoAiVTBE5hbWUQZ2V0S2V5Q29kZVN0cmluZwRnYW1lEFVzZXJJbnB1dFNlcnZpY2UKR2V0U2VydmljZQACBQEBAAAAEPsBAABSAwAAvAEBEwAAAACfAQMCpAIDAAAIEIBSAwEAbwQEAJ8CAwJHAgIAAAAAAIIBAgBNAgC6BQAAAIICAgAGAwEDAgMDBAAIEIADBAMFAA4GARgAAAAAAAEAAAAAAAABAwAADwAAAAADAAABAgAKowAAAKQAAQAAAABAbwICALwAABYDAAAAnwADAsABBAASAAAAggECAAUDBwQAAABAAwgDCQYAAQABAAEYAAIAAAAAAAsACQEAAAAAAbZEt0hmEEE3hIDd3G79PnVJ0NNiu/e1CfM3iQEdoVcEUV1lS9Tr9gE=

local u1 = game:GetService("UserInputService")
return function(p2) --[[Function name: getKeyCodeString, line 14]]
    --[[
    Upvalues:
        [1] = u1
    --]]
    local v3 = u1:GetStringForKeyCode(p2)
    if string.match(v3, "%S") == nil then
        return p2.Name
    else
        return v3
    end
end