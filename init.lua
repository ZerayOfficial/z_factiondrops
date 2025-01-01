Shared = {}

if GetResourceState('es_extended') == 'started' then
    Shared.Core = 'esx'
elseif GetResourceState('qb-core') == 'started' then
    Shared.Core = 'qb-core'
elseif GetResourceState('qbx_core') == 'started' then
    Shared.Core = 'qbx_core'
end

if Shared.Core == 'esx' then
    ESX = exports['es_extended']:getSharedObject()
elseif Shared.Core == 'qb-core' then
    QBCore = exports['qb-core']:GetCoreObject()
elseif Shared.Core == 'qbx_core' then
    QBox = exports.qbx_core
end

print('^4[INFO] ^0Framework: ' .. Shared.Core .. ' has ^2successfully ^0loaded.')