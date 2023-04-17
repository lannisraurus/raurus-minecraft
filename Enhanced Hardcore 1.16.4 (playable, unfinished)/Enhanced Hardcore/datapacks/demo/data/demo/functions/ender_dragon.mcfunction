scoreboard players add @e[tag=dragon,type=ender_dragon] dragon 1

execute as @e[type=ender_dragon,tag=dragon1,scores={dragon=100..}] if score rand6 random matches 1..2 if score rand9 random matches 1 run data merge entity @s {DragonPhase:1}
execute as @e[type=ender_dragon,tag=dragon1,scores={dragon=100..}] if score rand6 random matches 1..2 if score rand9 random matches 2..5 run data merge entity @s {DragonPhase:2}
execute as @e[type=ender_dragon,tag=dragon1,scores={dragon=100..}] if score rand6 random matches 1..2 if score rand9 random matches 6..9 run data merge entity @s {DragonPhase:8}
execute as @e[type=ender_dragon,tag=dragon1,scores={dragon=100..}] at @s if score rand6 random matches 1..2 if score rand9 random matches 6..9 run tp @s ~ ~-10 ~

execute as @e[type=ender_dragon,tag=dragon2,scores={dragon=100..}] if score rand6 random matches 4..6 if score rand9 random matches 1..3 run data merge entity @s {DragonPhase:1}
execute as @e[type=ender_dragon,tag=dragon2,scores={dragon=100..}] if score rand6 random matches 5..6 if score rand9 random matches 4 run data merge entity @s {DragonPhase:2}
execute as @e[type=ender_dragon,tag=dragon2,scores={dragon=100..}] if score rand6 random matches 4..6 if score rand9 random matches 6..8 run data merge entity @s {DragonPhase:5}
execute as @e[type=ender_dragon,tag=dragon2,scores={dragon=100..}] if score rand6 random matches 5..6 if score rand9 random matches 9 run data merge entity @s {DragonPhase:8}

scoreboard players set @e[type=ender_dragon,scores={dragon=100..}] dragon 0

execute at @e[tag=dragon1,tag=dragon,type=ender_dragon] run bossbar set minecraft:theodore players @a[distance=..80]
execute at @e[tag=dragon2,tag=dragon,type=ender_dragon] run bossbar set minecraft:leonhard players @a[distance=..80]

execute unless entity @e[tag=dragon1,tag=dragon,type=ender_dragon] run bossbar set minecraft:theodore players
execute unless entity @e[tag=dragon2,tag=dragon,type=ender_dragon] run bossbar set minecraft:leonhard players

execute as @e[tag=dragon1] store result bossbar minecraft:theodore value run data get entity @s Health
execute as @e[tag=dragon2] store result bossbar minecraft:leonhard value run data get entity @s Health

team join dragon @e[tag=dragon]
execute in minecraft:the_end positioned 0 66 0 run tp @e[type=ender_dragon,distance=140..] ~ ~20 ~
execute in minecraft:the_end positioned 0 66 0 at @a[distance=50..100] run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace bedrock
execute in minecraft:the_end positioned 0 66 0 at @a[distance=50..100] run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 air replace end_gateway

execute at @e[tag=dragon1] run particle minecraft:witch ~ ~ ~ 3 2 3 0 10 force
execute at @e[tag=dragon2] run particle minecraft:enchant ~ ~ ~ 3 2 3 0 10 force

execute at @e[tag=dragon2] positioned ~ ~-20 ~ as @e[distance=..15,type=area_effect_cloud] run data merge entity @s {Particle:"enchant"}


execute at @e[tag=dragon2] run scoreboard players add @a[distance=..120,scores={killed_dragon2=..0}] killed_dragon2 1
execute at @e[tag=dragon1,nbt={Health:0f}] run scoreboard players add @a[distance=..120,scores={killed_dragon1=..0}] killed_dragon1 1

give @a[scores={killed_dragon2=1}] black_dye{display:{Name:'{"text":"Soul Fragment","color":"#7200A3"}'},soul_fragment:1b,Enchantments:[{}]} 2
give @a[scores={killed_dragon2=1}] dragon_egg

give @a[scores={killed_dragon1=1}] black_dye{display:{Name:'{"text":"Soul Fragment","color":"#7200A3"}'},soul_fragment:1b,Enchantments:[{}]} 1
give @a[scores={killed_dragon1=1}] dragon_head


scoreboard players add @a[scores={killed_dragon1=1..}] killed_dragon1 1
scoreboard players add @a[scores={killed_dragon2=1..}] killed_dragon2 1

scoreboard players set @a[scores={killed_dragon1=200..}] killed_dragon1 0
scoreboard players set @a[scores={killed_dragon2=200..}] killed_dragon2 0


