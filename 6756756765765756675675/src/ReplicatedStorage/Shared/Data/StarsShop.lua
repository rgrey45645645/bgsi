--devbgascension

-- Bytecode (Base64):
-- BgMWBGdhbWURUmVwbGljYXRlZFN0b3JhZ2UKR2V0U2VydmljZQdyZXF1aXJlBlNoYXJlZAVUeXBlcwRDb3N0BEl0ZW0EVHlwZQROYW1lBkFtb3VudAdQb3dlcnVwC015c3RlcnkgQm94ClJlcm9sbCBPcmIKR29sZGVuIEtleQlSb3lhbCBLZXkFTGV2ZWwGUG90aW9uBUx1Y2t5BVNwZWVkBUNvaW5zBk15dGhpYwABFQAAAQIAtwKjAAAApAABAAAAAEBvAgIAvAAAFgMAAACfAAMCpAEFAAAAQEBNAwASBgAAAE0CA+8HAAAAnwECAv8CAAAQAAAA4gMKAIwEFAAwBAMjCAAAAOIEDgBvBQ8AMAUEEQsAAABvBRAAMAUEugwAAACMBQEAMAUEKw0AAAAwBAPKCQAAAOIECgCMBQoAMAUEIwgAAADiBQ4AbwYPADAGBRELAAAAbwYRADAGBboMAAAAjAYFADAGBSsNAAAAMAUEygkAAADiBQoAjAYKADAGBSMIAAAA4gYOAG8HDwAwBwYRCwAAAG8HEgAwBwa6DAAAAIwHAQAwBwYrDQAAADAGBcoJAAAA4gYKAIwHKAAwBwYjCAAAAOIHDgBvCA8AMAgHEQsAAABvCBMAMAgHugwAAACMCAEAMAgHKw0AAAAwBwbKCQAAAOIHCgCMCAoAMAgHIwgAAADiCBUAbwkWADAJCBELAAAAbwkXADAJCLoMAAAAjAkEADAJCG0UAAAAjAkBADAJCCsNAAAAMAgHygkAAADiCAoAjAkKADAJCCMIAAAA4gkVAG8KFgAwCgkRCwAAAG8KGAAwCgm6DAAAAIwKBAAwCgltFAAAAIwKAQAwCgkrDQAAADAJCMoJAAAA4gkKAIwKCgAwCgkjCAAAAOIKFQBvCxYAMAsKEQsAAABvCxkAMAsKugwAAACMCwQAMAsKbRQAAACMCwEAMAsKKw0AAAAwCgnKCQAAAOIKCgCMCwoAMAsKIwgAAADiCxUAbwwWADAMCxELAAAAbwwaADAMC7oMAAAAjAwEADAMC20UAAAAjAwBADAMCysNAAAAMAsKygkAAADiCwoAjAweADAMCyMIAAAA4gwVAG8NFgAwDQwRCwAAAG8NFwAwDQy6DAAAAIwNBQAwDQxtFAAAAIwNAQAwDQwrDQAAADAMC8oJAAAA4gwKAIwNHgAwDQwjCAAAAOINFQBvDhYAMA4NEQsAAABvDhgAMA4NugwAAACMDgUAMA4NbRQAAACMDgEAMA4NKw0AAAAwDQzKCQAAAOINCgCMDh4AMA4NIwgAAADiDhUAbw8WADAPDhELAAAAbw8ZADAPDroMAAAAjA8FADAPDm0UAAAAjA8BADAPDisNAAAAMA4NygkAAADiDgoAjA8eADAPDiMIAAAA4g8VAG8QFgAwEA8RCwAAAG8QGgAwEA+6DAAAAIwQBQAwEA9tFAAAAIwQAQAwEA8rDQAAADAPDsoJAAAA4g8KAIwQZAAwEA8jCAAAAOIQFQBvERYAMBEQEQsAAABvERcAMBEQugwAAACMEQYAMBEQbRQAAACMEQEAMBEQKw0AAAAwEA/KCQAAAOIQCgCMEWQAMBEQIwgAAADiERUAbxIWADASERELAAAAbxIYADASEboMAAAAjBIGADASEW0UAAAAjBIBADASESsNAAAAMBEQygkAAADiEQoAjBJkADASESMIAAAA4hIVAG8TFgAwExIRCwAAAG8TGQAwExK6DAAAAIwTBgAwExJtFAAAAIwTAQAwExIrDQAAADASEcoJAAAA4hIKAIwTZAAwExIjCAAAAOITFQBvFBYAMBQTEQsAAABvFBoAMBQTugwAAACMFAYAMBQTbRQAAACMFAEAMBQTKw0AAAAwExLKCQAAAMUCAxEBAAAAggICABsDAQQAAABAAwIDAwMEBAAAQEADBQMGAwcDCAUCCAkDCQMKAwsFAwsMDQMMAw0DDgMPAxADEQUECwwUDQMSAxMDFAMVAxYAAQABGAACAAAAAAACAAAAAAAACAABAQAAAQAAAAAAAAAAAAAAAgEAAAEAAAAAAAAAAAAAAAIBAAABAAAAAAAAAAAAAAACAQAAAQAAAAAAAAAAAAAABAEAAAEAAAAAAAAAAAAAAAAAAAIBAAABAAAAAAAAAAAAAAAAAAACAQAAAQAAAAAAAAAAAAAAAAAAAgEAAAEAAAAAAAAAAAAAAAAAAAMBAAABAAAAAAAAAAAAAAAAAAACAQAAAQAAAAAAAAAAAAAAAAAAAgEAAAEAAAAAAAAAAAAAAAAAAAIBAAABAAAAAAAAAAAAAAAAAAADAQAAAQAAAAAAAAAAAAAAAAAAAgEAAAEAAAAAAAAAAAAAAAAAAAIBAAABAAAAAAAAAAAAAAAAAAACAQAAAQAAAAAAAAAAAAAAAAAAAAAEAQAAAAAAaRmmp9YjH/Fb3cwztFDgNhDyL846DSAPoxuSN5OmI6U/NCE+TdDCuA==

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local v2 = {}
local v3 = {
    ["Cost"] = 20,
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Mystery Box",
        ["Amount"] = 1
    }
}
local v4 = {
    ["Cost"] = 10,
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Reroll Orb",
        ["Amount"] = 5
    }
}
local v5 = {
    ["Cost"] = 10,
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Golden Key",
        ["Amount"] = 1
    }
}
local v6 = {
    ["Cost"] = 40,
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Royal Key",
        ["Amount"] = 1
    }
}
local v7 = {
    ["Cost"] = 10,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Lucky",
        ["Level"] = 4,
        ["Amount"] = 1
    }
}
local v8 = {
    ["Cost"] = 10,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Speed",
        ["Level"] = 4,
        ["Amount"] = 1
    }
}
local v9 = {
    ["Cost"] = 10,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Coins",
        ["Level"] = 4,
        ["Amount"] = 1
    }
}
local v10 = {
    ["Cost"] = 10,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Mythic",
        ["Level"] = 4,
        ["Amount"] = 1
    }
}
local v11 = {
    ["Cost"] = 30,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Lucky",
        ["Level"] = 5,
        ["Amount"] = 1
    }
}
local v12 = {
    ["Cost"] = 30,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Speed",
        ["Level"] = 5,
        ["Amount"] = 1
    }
}
local v13 = {
    ["Cost"] = 30,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Coins",
        ["Level"] = 5,
        ["Amount"] = 1
    }
}
local v14 = {
    ["Cost"] = 30,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Mythic",
        ["Level"] = 5,
        ["Amount"] = 1
    }
}
local v15 = {
    ["Cost"] = 100,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Lucky",
        ["Level"] = 6,
        ["Amount"] = 1
    }
}
local v16 = {
    ["Cost"] = 100,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Speed",
        ["Level"] = 6,
        ["Amount"] = 1
    }
}
local v17 = {
    ["Cost"] = 100,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Coins",
        ["Level"] = 6,
        ["Amount"] = 1
    }
}
local v18 = {
    ["Cost"] = 100,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Mythic",
        ["Level"] = 6,
        ["Amount"] = 1
    }
}
__set_list(v2, 1, {v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18})
return v2