Config = {}

Config.Progress = 'circle' -- Options: circle or bar.

Config.Logging = {
    Enabled = true, -- True: Enable's the discord log. False: Disable's it.
    Webhook = '', -- Discord webhook.
}

Config.Tiers = {
    ['tier1'] = {
        waitTime = 0, -- How long it take's to put the item on.
        rewards = { -- List of items you want to give on using the item.
            { item = '', amount = 1 },
        }
    },
    ['tier2'] = {
        waitTime = 0, -- How long it take's to put the item on.
        rewards = { -- List of items you want to give on using the item.
            { item = '', amount = 1 },
        }
    },
    ['tier3'] = {
        waitTime = 0, -- How long it take's to put the item on.
        rewards = { -- List of items you want to give on using the item.
            { item = '', amount = 1 },
        }
    },
}