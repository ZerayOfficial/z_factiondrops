function ShowNotification(message, type)
    if Shared.Core == 'esx' then
        ESX.ShowNotification(message, type)
    elseif Shared.Core == 'qb-core' then
        QBCore.Functions.Notify(message, type)
    elseif Shared.Core == 'qbx_core' then
        QBox:Notify(message, type)
    end
end

-- Thanks to https://github.com/DimeloEli for the code snippet.
ProgressBar = function(length, text, animTable, disableTable)
    if Config.Progress == 'circle' then
        lib.progressCircle({duration = length, label = text, position = 'bottom', useWhileDead = false, canCancel = false, disable = disableTable, anim = animTable})
    elseif Config.Progress == 'bar' then
        lib.progressBar({duration = length, label = text, position = 'bottom', useWhileDead = false, canCancel = false, disable = disableTable, anim = animTable})
    end
end