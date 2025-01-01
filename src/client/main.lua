Tiers = Config.Tiers

for k, v in pairs(Tiers) do
    for _, item in pairs(Tiers[k].rewards) do
        RegisterNetEvent('z_factiondrops:client:open'.. k, function()        
            ShowNotification('Opening ' .. k .. '.')
            ProgressBar(Tiers[k].waitTime, 'Opening Faction Drop...', { move = false, mouse = false, combat = true, sprint = true, car = true})
            ShowNotification('You have opened your ' .. k .. '. And received ' .. item.amount .. 'x ' .. item.item .. '.')
        end)
    end
end