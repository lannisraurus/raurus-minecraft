

effect give @a[tag=ophan_cleric,nbt={Dimension:"raurus:abyss"}] speed 1 1 true











scoreboard players add @a[tag=ophan_cleric,tag=!ghost,scores={is_sneaking=1.., abyss_walking=..0, mana=70..},x_rotation=90,nbt={Dimension:"minecraft:overworld"}] abyss_walking 1
scoreboard players add @a[tag=ophan_cleric,tag=!ghost,scores={is_sneaking=1.., abyss_walking=..0, mana=70..},x_rotation=90,nbt={Dimension:"raurus:abyss"}] abyss_walking 1
scoreboard players set @a[scores={is_sneaking=..0}] abyss_walking 0

execute as @a[scores={abyss_walking=1..}] at @s run playsound minecraft:ambient.warped_forest.mood master @a[distance=..8] ~ ~ ~ 0.5 0
execute as @a[scores={abyss_walking=1..}] at @s run playsound minecraft:ambient.warped_forest.mood master @a[distance=..8] ~ ~ ~ 0.5 0.5
execute as @a[scores={abyss_walking=1..}] at @s run playsound minecraft:ambient.warped_forest.mood master @a[distance=..8] ~ ~ ~ 0.5 1

effect give @a[scores={abyss_walking=1..20}] slowness 1 1 true
effect give @a[scores={abyss_walking=21..40}] slowness 1 2 true
effect give @a[scores={abyss_walking=41..60}] slowness 1 3 true
effect give @a[scores={abyss_walking=61..80}] slowness 1 4 true
effect give @a[scores={abyss_walking=81..100}] slowness 1 5 true
effect give @a[scores={abyss_walking=101..120}] slowness 1 6 true
effect give @a[scores={abyss_walking=121..140}] slowness 1 7 true


effect give @a[scores={abyss_walking=41..}] nausea 4 0 true





execute at @a[scores={abyss_walking=1}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["purple_circle"]}
execute as @e[tag=purple_circle,type=armor_stand] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=purple_circle,type=armor_stand] at @s unless entity @a[scores={abyss_walking=1..},distance=..3] run kill @s

execute at @e[tag=purple_circle,type=armor_stand] run function raurus:particles/alchemy5

execute as @e[tag=purple_circle,type=armor_stand] at @s positioned as @a[scores={abyss_walking=1..},sort=nearest,limit=1] run tp @s ~ ~ ~



execute at @a[scores={abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0
execute at @a[scores={abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0.5
execute at @a[scores={abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 1
execute at @a[scores={abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 1.5
execute at @a[scores={abyss_walking=140..}] run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 2

execute at @a[scores={abyss_walking=140..}] run particle dust 0 0 0 5 ~ ~1 ~ 0.2 0.5 0.2 0 10 normal
















scoreboard players remove @a[scores={abyss_walking=140..}] mana 70

tag @a[scores={abyss_walking=140..},nbt={Dimension:"minecraft:overworld"}] add tp_abyss
tag @a[scores={abyss_walking=140..},nbt={Dimension:"raurus:abyss"}] add tp_overworld
scoreboard players set @a[scores={abyss_walking=140..}] abyss_walking 0

execute as @a[tag=tp_abyss] at @s in raurus:abyss run tp @s ~ 1 ~
execute as @a[tag=tp_overworld] at @s in minecraft:overworld run tp @s ~ 100 ~
execute as @a[tag=tp_overworld] at @s in minecraft:overworld run spreadplayers ~ ~ 0 1 false @s

execute as @a[tag=tp_overworld] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 0
execute as @a[tag=tp_overworld] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.5
execute as @a[tag=tp_overworld] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 1

execute as @a[tag=tp_abyss] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 0
execute as @a[tag=tp_abyss] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 0.5
execute as @a[tag=tp_abyss] at @s run playsound minecraft:entity.wither.spawn master @a[distance=..8] ~ ~ ~ 0.3 1



scoreboard players add @a[scores={is_sneaking=1.., abyss_walking=1..}] abyss_walking 1