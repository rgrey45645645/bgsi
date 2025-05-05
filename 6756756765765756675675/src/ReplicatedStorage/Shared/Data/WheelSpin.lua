--devbgascension

-- Bytecode (Base64):
-- BgMYBkNoYW5jZQRnYW1lEVJlcGxpY2F0ZWRTdG9yYWdlCkdldFNlcnZpY2UHcmVxdWlyZQZTaGFyZWQFVHlwZXMESXRlbQRUeXBlCEN1cnJlbmN5BkFtb3VudAVDb2lucwROYW1lBUxldmVsBlBvdGlvbgdQb3dlcnVwCkdvbGRlbiBLZXkFU3BlZWQLTXlzdGVyeSBCb3gLU3BpbiBUaWNrZXQDUGV0BVVtYnJhBXRhYmxlBHNvcnQAAgUCAAAAAAlNAwCMAAAAAE0EAYwAAAAAtwQCAAMAAACpAgABqQIBAIICAgABAwEALgABGAAAAAAAAAAAAC8AAAAABgAAAQIAoQGjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNAwASBgAAAE0CA+8HAAAAnwECAv8CAAAIAAAA4gMKAOIEDgBvBQwAMAUEEQsAAABvBQ8AMAUECQwAAACMBcgAMAUEKw0AAAAwBAPKCAAAAIwELQAwBAOMCQAAAPYDAgDiAwoA4gQOAG8FDAAwBQQRCwAAAG8FDwAwBQQJDAAAAIwFwgEwBQQrDQAAADAEA8oIAAAAjAQUADAEA4wJAAAA9gMCAeIDCgDiBBIAbwUTADAFBBELAAAAbwUPADAFBLoQAAAAjAUDADAFBG0RAAAAjAUBADAFBCsNAAAAMAQDyggAAACMBA4AMAQDjAkAAAD2AwIC4gMKAOIEFABvBRUAMAUEEQsAAABvBRYAMAUEuhAAAACMBQEAMAUEKw0AAAAwBAPKCAAAAIwECgAwBAOMCQAAAPYDAgPiAwoA4gQSAG8FEwAwBQQRCwAAAG8FFwAwBQS6EAAAAIwFAwAwBQRtEQAAAIwFAQAwBQQrDQAAADAEA8oIAAAAjAQEADAEA4wJAAAA9gMCBOIDCgDiBBQAbwUVADAFBBELAAAAbwUYADAFBLoQAAAAjAUBADAFBCsNAAAAMAQDyggAAACMBAMAMAQDjAkAAAD2AwIF4gMKAOIEFABvBRUAMAUEEQsAAABvBRkAMAUEuhAAAACMBQUAMAUEKw0AAAAwBAPKCAAAAG8EGgAwBAOMCQAAAPYDAgbiAwoA4gQbAG8FHAAwBQQRCwAAAG8FHQAwBQS6EAAAADAEA8oIAAAAbwQeADAEA4wJAAAA9gMCB6QDIQAAgPCBUgQCAMAFIgCfAwMBggICACMDAgQAAABAAwMDBAMFBAAAQEADBgMHAwgDAQUCCAkDCQMKAwsFAwsMDQMMAw0DDgUECxARDQMPBQMLEA0DEAMRAxIDEwMUAjMzMzMzMwdABQILEAMVAxYCmpmZmZmZuT8DFwMYBACA8IEGAAEAAQABGAACAAAAAAACAAAAAAAABQABAQAAAAAAAAAAAAAAAQAA/gQBAAAAAAAAAAAAAAABAAD+BAEAAAAAAAAAAAAAAAAAAAEAAP4EAQAAAAAAAAAAAAAAAQAA/gQBAAAAAAAAAAAAAAAAAAABAAD+BAEAAAAAAAAAAAAAAAEAAP4EAQAAAAAAAAAAAAAAAQAA/gQBAAAAAAAAAAABAAD+BwAAAAAFAQAAAAAB+HfJkNFAY8XKs6ME2vVOWAmXZ25cA3eG2nipBcLdP140jBxZ7q9sWA==

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local v2 = {}
local v3 = {
    ["Item"] = {
        ["Type"] = "Currency",
        ["Currency"] = "Coins",
        ["Amount"] = 200
    },
    ["Chance"] = 45
}
v2[1] = v3
local v4 = {
    ["Item"] = {
        ["Type"] = "Currency",
        ["Currency"] = "Coins",
        ["Amount"] = 450
    },
    ["Chance"] = 20
}
v2[2] = v4
local v5 = {
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Coins",
        ["Level"] = 3,
        ["Amount"] = 1
    },
    ["Chance"] = 14
}
v2[3] = v5
local v6 = {
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Golden Key",
        ["Amount"] = 1
    },
    ["Chance"] = 10
}
v2[4] = v6
local v7 = {
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Speed",
        ["Level"] = 3,
        ["Amount"] = 1
    },
    ["Chance"] = 4
}
v2[5] = v7
local v8 = {
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Mystery Box",
        ["Amount"] = 1
    },
    ["Chance"] = 3
}
v2[6] = v8
local v9 = {
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Spin Ticket",
        ["Amount"] = 5
    },
    ["Chance"] = 2.9
}
v2[7] = v9
local v10 = {
    ["Item"] = {
        ["Type"] = "Pet",
        ["Name"] = "Umbra"
    },
    ["Chance"] = 0.1
}
v2[8] = v10
table.sort(v2, function(p11, p12) --[[Anonymous function at line 46]]
    return p11.Chance > p12.Chance
end)
return v2