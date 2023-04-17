scoreboard players remove @a[scores={undead_spawn=1..}] undead_spawn 1
scoreboard players set @a[scores={undead_spawn=..0}] undead_spawn 0


execute as @a[scores={death1tick=1.. , undead_spawn=1..},team=red] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["undead","blue"]}
execute as @a[scores={death1tick=1.. , undead_spawn=1..},team=blue] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["undead","red"]}
execute as @a[scores={death1tick=1.. , undead_spawn=1..},team=player] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["undead","player"]}

scoreboard players add @e[tag=undead,type=armor_stand] life 1
execute at @e[tag=undead,type=armor_stand] run particle minecraft:block dirt ~ ~ ~ 0.2 0 0.2 0 2 normal


execute at @e[tag=undead,type=armor_stand,scores={life=1}] run summon zombie ~ ~-2 ~ {Invulnerable:1b,NoGravity:1b,DeathLootTable:"minecraft:empty",NoAI:1b,IsBaby:0b,CanBreakDoors:0b,Tags:["undead_zombie"],ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1b,tag:{kill:1b}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute positioned as @e[tag=undead,type=armor_stand,scores={life=1..}] as @e[tag=undead_zombie,type=zombie,distance=..2.5] at @s run tp @s ~ ~0.035 ~ ~10 ~

execute at @e[tag=undead,type=armor_stand,scores={life=60}] as @e[tag=undead_zombie,type=zombie,distance=..2.5] run data merge entity @s {Invulnerable:0b,NoGravity:0b,NoAI:0b}
execute at @e[tag=undead,tag=red,type=armor_stand,scores={life=60}] as @e[tag=undead_zombie,type=zombie,distance=..1] run data merge entity @s {Team:"red"}
execute at @e[tag=undead,tag=blue,type=armor_stand,scores={life=60}] as @e[tag=undead_zombie,type=zombie,distance=..1] run data merge entity @s {Team:"blue"}










kill @e[tag=undead,type=armor_stand,scores={life=60..}]