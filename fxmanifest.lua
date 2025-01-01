fx_version 'cerulean'
game 'gta5'
author 'Zeray'
lua54 'yes'

shared_scripts {
  '@ox_lib/init.lua',
  'src/shared/**',
  'init.lua',
}

server_scripts {
  'src/server/**',
}

client_scripts {
  'src/client/**',
}