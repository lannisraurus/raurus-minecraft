particle happy_villager ~ ~ ~ 1.5 1.5 1.5 0.006 50 force
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.20
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.00
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 0.8
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.4
tag @a[distance=..5] add regen

tag @s remove use_life_regen
scoreboard players set @s use_life_regen 0