function DiscordLog(playerId, reason)
    local ingameid = tonumber(playerId)
    local name = GetPlayerName(playerId)
    local time = (os.date ('%B %d, %Y at %I:%M %p'))
    local steamid = ''
    local license = ''
    local discord = 'Not Linked'
    local xbl = ''
    local liveid = ''
    local ip = ''

    for k,v in pairs(GetPlayerIdentifiers(playerId)) do
        if string.sub(v, 1, string.len('steam:')) == 'steam:' then
            steamid = v
        elseif string.sub(v, 1, string.len('license:')) == 'license:' then
            license = v
        elseif string.sub(v, 1, string.len('xbl:')) == 'xbl:' then
            xbl  = v
        elseif string.sub(v, 1, string.len('ip:')) == 'ip:' then
            ip = string.sub(v, 4)
        elseif string.sub(v, 1, string.len('discord:')) == 'discord:' then
            discordid = string.sub(v, 9)
            discord = '<@'..discordid..'>'
        elseif string.sub(v, 1, string.len('live:')) == 'live:' then
            liveid = v
        end
    end

    local discordInfo = {
        ['color'] = '2061822',
        ['type'] = 'rich',
        ['title'] = 'Player Opened Drop',
        ['description'] = '**Name: **' .. name ..'\n **Reason: **' .. reason .. '\n **Date & Time: **' .. time .. '\n **In-Game ID: **' .. ingameid .. '\n **IP Address: **||' .. ip .. '||\n **Steam Hex: **' .. steamid .. '\n **License: **' .. license .. '\n **Discord: **' .. discord,
        ['footer'] = {
            ['text'] = 'Zeray Development'
        }
    }

    PerformHttpRequest(Config.Logging.Webhook, function(err, text, headers) end, 'POST', json.encode({ username = 'Zeray Development', avatar_url = 'https://cdn.discordapp.com/attachments/765473912075059200/1214247146212040755/Zeray.gif?ex=677177c7&is=67702647&hm=9a74f32d0d70da39a6298589d6195c78e9167267b5dc2ebae31ebfd952d5d7c9&', embeds = { discordInfo } }), { ['Content-Type'] = 'application/json' })
end