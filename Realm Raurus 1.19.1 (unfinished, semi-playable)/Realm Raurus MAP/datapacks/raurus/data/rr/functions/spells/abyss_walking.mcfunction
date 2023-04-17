scoreboard players add @a[scores={armour=13 , is_sneaking=1.., health=7.., abyss_walking=..0},x_rotation=90,tag=!safe] abyss_walking 1
scoreboard players set @a[scores={armour=13 , is_sneaking=..0}] abyss_walking 0
scoreboard players set @a[scores={armour=13 , is_hurt=1..},tag=!safe] abyss_walking 0

execute as @a[scores={armour=13, abyss_walking=1..}] at @s run playsound minecraft:ambient.warped_forest.mood master @a[distance=..8] ~ ~ ~ 0.5 0
execute as @a[scores={armour=13, abyss_walking=1..}] at @s run playsound minecraft:ambient.warped_forest.mood master @a[distance=..8] ~ ~ ~ 0.5 0.5
execute as @a[scores={armour=13, abyss_walking=1..}] at @s run playsound minecraft:ambient.warped_forest.mood master @a[distance=..8] ~ ~ ~ 0.5 1

effect give @a[scores={armour=13, abyss_walking=1..20}] slowness 1 1 true
effect give @a[scores={armour=13, abyss_walking=21..40}] slowness 1 2 true
effect give @a[scores={armour=13, abyss_walking=41..60}] slowness 1 3 true
effect give @a[scores={armour=13, abyss_walking=61..80}] slowness 1 4 true
effect give @a[scores={armour=13, abyss_walking=81..100}] slowness 1 5 true
effect give @a[scores={armour=13, abyss_walking=101..120}] slowness 1 6 true
effect give @a[scores={armour=13, abyss_walking=121..140}] slowness 1 7 true

effect give @a[scores={armour=13, abyss_walking=41..}] nausea 4 0 true

execute at @a[scores={armour=13, abyss_walking=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["purple_circle"]}
execute as @e[tag=purple_circle,type=armor_stand] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=purple_circle,type=armor_stand] at @s unless entity @a[scores={armour=13, abyss_walking=1..},distance=..3] run kill @s

execute at @e[tag=purple_circle,type=armor_stand] run function rr:particles/alchemy5

execute as @e[tag=purple_circle,type=armor_stand] at @s positioned as @a[scores={armour=13, abyss_walking=1..},sort=nearest,limit=1] run tp @s ~ ~ ~


scoreboard players add @a[scores={armour=13, abyss_walking=140..}] deal_dmg 6

execute at @a[scores={armour=13, abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0
execute at @a[scores={armour=13, abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0.5
execute at @a[scores={armour=13, abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 1
execute at @a[scores={armour=13, abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 1.5
execute at @a[scores={armour=13, abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 2

execute at @a[scores={armour=13, abyss_walking=140..}] run particle dust 0 0 0 5 ~ ~1 ~ 0.2 0.5 0.2 0 10 normal



tag @a[scores={armour=13, abyss_walking=140..},nbt={Dimension:"minecraft:overworld"}] add tp_abyss
tag @a[scores={armour=13, abyss_walking=140..},nbt={Dimension:"dim:abyss"}] add tp_overworld
scoreboard players set @a[scores={armour=13, abyss_walking=140..}] abyss_walking 0

execute as @a[tag=tp_abyss] at @s in dim:abyss run tp @s ~ -63 ~
execute as @a[tag=tp_overworld] at @s in minecraft:overworld run tp @s ~ 100 ~
execute as @a[tag=tp_overworld] at @s in minecraft:overworld run spreadplayers ~ ~ 0 1 false @s

execute as @a[tag=tp_overworld] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 0
execute as @a[tag=tp_overworld] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.5
execute as @a[tag=tp_overworld] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 1

execute as @a[tag=tp_abyss] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 0
execute as @a[tag=tp_abyss] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.5
execute as @a[tag=tp_abyss] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 1






execute at @e[type=!armor_stand,type=!item,nbt={Dimension:"minecraft:overworld"}] in dim:abyss run particle end_rod ~ -62 ~ 0 0 0 0 1 force
execute as @e[type=armor_stand,tag=tower] at @s in dim:abyss run particle end_rod ~ -62 ~ 0.3 0.3 0.3 0.03 1 force













scoreboard players add @a[scores={armour=13 , is_sneaking=1.., health=7.., abyss_walking=1..}] abyss_walking 1