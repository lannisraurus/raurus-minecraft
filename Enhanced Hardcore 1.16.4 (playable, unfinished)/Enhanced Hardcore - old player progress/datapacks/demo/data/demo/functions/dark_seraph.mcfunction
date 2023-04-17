execute at @a[gamemode=!spectator,gamemode=!creative,tag=dark_seraph] run particle dust 0 0 0 1 ^0.5 ^1.5 ^-0.2 0.1 0.1 0.1 0 1 force
execute at @a[gamemode=!creative,gamemode=!spectator,tag=dark_seraph] run particle dust 0 0 0 1 ^-0.5 ^1.5 ^-0.2 0.1 0.1 0.1 0 1 force
execute at @a[gamemode=!creative,gamemode=!spectator,tag=dark_seraph] run particle dust 0 0 0 1 ^0.8 ^1.8 ^-0.2 0.1 0.1 0.1 0 1 force
execute at @a[gamemode=!creative,gamemode=!spectator,tag=dark_seraph] run particle dust 0 0 0 1 ^-0.8 ^1.8 ^-0.2 0.1 0.1 0.1 0 1 force

tag @a[tag=dark_seraph] remove players
tag @a[tag=dark_seraph] remove seraph

execute at @a[gamemode=spectator,tag=dark_seraph] run particle dust 0 0 0 0.2 ~ ~1 ~ 0 0 0 0 1 force

tag @a[tag=lannis] remove seraph
tag @a[tag=lannis] remove players
tag @a[tag=lannis] add dark_seraph
tag @a[tag=lannis] remove lannis




















