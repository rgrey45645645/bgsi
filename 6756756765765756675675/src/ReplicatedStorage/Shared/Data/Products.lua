--devbgascension

-- Bytecode (Base64):
-- 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

local v1 = game:GetService("ReplicatedStorage")
require(v1.Shared.Types)
local v2 = {
    ["Type"] = "Pet",
    ["Name"] = "Enraged Phoenix"
}
local v3 = {
    ["Type"] = "Pet",
    ["Name"] = "Electra Hydra"
}
local v4 = {
    ["exclusive-1"] = {
        ["Type"] = "Item",
        ["Item"] = v2,
        ["ProductId"] = 3194327452
    },
    ["exclusive-2"] = {
        ["Type"] = "Item",
        ["Item"] = v3,
        ["ProductId"] = 3194327451
    }
}
local v5 = {
    ["Type"] = "Bundle",
    ["Items"] = {
        {
            ["Chance"] = 100,
            ["Item"] = v2
        },
        {
            ["Chance"] = 100,
            ["Item"] = v3
        }
    },
    ["ProductId"] = 3194354945
}
v4["exclusive-bundle"] = v5
local v6 = {
    ["Type"] = "Item",
    ["Item"] = {
        ["Type"] = "Currency",
        ["Currency"] = "Gems",
        ["Amount"] = 40000
    },
    ["ProductId"] = 3220894802
}
v4["gems-1"] = v6
local v7 = {
    ["Type"] = "Item",
    ["Item"] = {
        ["Type"] = "Currency",
        ["Currency"] = "Gems",
        ["Amount"] = 350000
    },
    ["ProductId"] = 3220894803
}
v4["gems-2"] = v7
local v8 = {
    ["Type"] = "Bundle"
}
local v9 = {}
local v10 = {
    ["Chance"] = 100,
    ["Item"] = {
        ["Type"] = "Currency",
        ["Currency"] = "Gems",
        ["Amount"] = 1000000
    }
}
local v11 = {
    ["Chance"] = 10,
    ["Item"] = {
        ["Type"] = "Pet",
        ["Name"] = "Flying Gem"
    }
}
local v12 = {
    ["Chance"] = 100,
    ["Item"] = {
        ["Type"] = "Potion",
        ["Name"] = "Lucky",
        ["Level"] = 5,
        ["Amount"] = 3
    }
}
__set_list(v9, 1, {v10, v11, v12})
v8.Items = v9
v8.ProductId = 3220894805
v4["gems-3"] = v8
local v13 = {
    ["Type"] = "Item",
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Spin Ticket",
        ["Amount"] = 1
    },
    ["ProductId"] = 3232054479
}
v4["spin-1"] = v13
local v14 = {
    ["Type"] = "Item",
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Spin Ticket",
        ["Amount"] = 5
    },
    ["ProductId"] = 3232054478
}
v4["spin-2"] = v14
local v15 = {
    ["Type"] = "Item",
    ["Item"] = {
        ["Type"] = "Powerup",
        ["Name"] = "Spin Ticket",
        ["Amount"] = 30
    },
    ["ProductId"] = 3232054477
}
v4["spin-3"] = v15
return v4