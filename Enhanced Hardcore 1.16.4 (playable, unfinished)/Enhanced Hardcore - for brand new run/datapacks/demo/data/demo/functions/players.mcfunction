execute at @a[gamemode=spectator,tag=players] run particle dust 0.9 0.9 0.7 1 ~ ~1 ~ 0 0 0 0 1 force
execute at @a[gamemode=spectator,tag=players] run effect give @a[distance=..0.3] minecraft:resistance 1 0 true
tag @a[tag=!seraph,tag=!dark_seraph] add players
team join players @a[team=!god]