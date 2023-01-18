--------------------------------------
---------- NP-NPCS BY SETER ----------
--------------------------------------

fx_version "cerulean"

games {"gta5"}

author "NoPicks/Seter"
description "NPCs Handler by NoPicks 3.5"

version "0.1.0"

client_script "@np-errorlog/client/cl_errorlog.lua"
client_script "@np-lib/client/cl_flags.lua"
client_script "@np-lib/client/cl_rpc.lua"
server_script "@np-lib/server/sv_rpc.lua"

client_scripts {
  "client/classes/*.lua",
  "client/*.lua"
}

shared_scripts {
  "@np-lib/shared/sh_util.lua",
  "shared/sh_*.lua"
}

server_scripts {
  "server/sv_*.lua"
}
