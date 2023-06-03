particle soul ~ ~1 ~ 0.4 0.4 0.4 0.1 20 force
particle flash ~ ~1 ~ 0 0 0 0.1 1 force
title @s title {"text":"- Revival -","color":"green"}
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.00
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.20
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.50
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 0.9
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 0.8

scoreboard players add @a exp 50

execute as @s[tag=arcane_sorcerer] run function raurus:classes/get_arcane_sorcerer
execute as @s[tag=druid] run function raurus:classes/get_druid
execute as @s[tag=blacksmith] run function raurus:classes/get_blacksmith
execute as @s[tag=blood_demon] run function raurus:classes/get_blood_demon
execute as @s[tag=ophan_cleric] run function raurus:classes/get_ophan_cleric
execute as @s[tag=seraph_cleric] run function raurus:classes/get_seraph_cleric
execute as @s[tag=interstice_warrior] run function raurus:classes/get_interstice_warrior
gamemode survival @s[gamemode=!creative]
tag @s add update_player
tag @s remove ghost