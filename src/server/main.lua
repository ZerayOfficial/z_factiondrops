Tiers = Config.Tiers

if Shared.Core == 'esx' then
    for k, v in pairs(Tiers) do
        ESX.RegisterUsableItem(k, function(source)
            local xPlayer = ESX.GetPlayerFromId(source)

            TriggerClientEvent('z_factiondrops:client:open'.. k, source)

            xPlayer.removeInventoryItem(k, 1)

            Wait(Tiers[k].waitTime)

            for k, v in pairs(Tiers[k].rewards) do
                xPlayer.addInventoryItem(v.item, v.amount)
            end

            if Config.Logging.Enabled then
                DiscordLog(source, 'Player has opened ' .. k .. ' faction drop.')
            end
        end)
    end
end

if Shared.Core == 'qb-core' then
    for k, v in pairs(Tiers) do
        QBCore.Functions.CreateUseableItem(k, function(source)
            local Player = QBCore.Functions.GetPlayer(source)

            TriggerClientEvent('z_factiondrops:client:open'.. k, source)

            Player.Functions.RemoveItem(k, 1)

            Wait(Tiers[k].waitTime)

            for k, v in pairs(Tiers[k].rewards) do
                Player.Functions.AddItem(v.item, v.amount)
            end

            if Config.Logging.Enabled then
                DiscordLog(source, 'Player has opened ' .. k .. ' faction drop.')
            end
        end)
    end
end

if Shared.Core == 'qbx_core' then
    for k, v in pairs(Tiers) do
        QBox:CreateUseableItem(k, function(source)
            local Player = QBox:GetPlayer(source)
            local Inventory = exports.ox_inventory

            TriggerClientEvent('z_factiondrops:client:open'.. k, source)

            Inventory:RemoveItem(k, 1)

            Wait(Tiers[k].waitTime)

            for k, v in pairs(Tiers[k].rewards) do
                Inventory:AddItem(v.item, v.amount)
            end

            if Config.Logging.Enabled then
                DiscordLog(source, 'Player has opened ' .. k .. ' faction drop.')
            end
        end)
    end
end