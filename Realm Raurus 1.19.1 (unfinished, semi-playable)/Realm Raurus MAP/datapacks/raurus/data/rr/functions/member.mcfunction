gamemode adventure @a[tag=!member]
tag @a[tag=!member] add go_to_spawn
tag @a[tag=!member] add update_player
execute as @a[tag=go_to_spawn] in dim:interstice run tp @s 0 101 0
execute as @a[tag=go_to_spawn] in dim:interstice run spawnpoint @s 0 101 0

title @a[tag=!member] subtitle {"text":"- Realm Raurus -","color":"#00FF24"}
title @a[tag=!member] title {"text":"Welcome!","color":"#008A0C"}

execute as @a[tag=!member] run function rr:reset
execute as @a[tag=!member] at @s run playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 0.5 1.00
tag @a[tag=!member] add member