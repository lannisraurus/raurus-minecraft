effect give @s slowness 2 0 true
execute positioned ~ ~1.3 ~ run particle minecraft:happy_villager ^ ^ ^2 0.2 0.2 0.2 400 6 force
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 0.3 2.00
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 0.3 1.75
playsound minecraft:entity.allay.hurt ambient @a[distance=..10] ~ ~ ~ 0.3 1.00
scoreboard players add @s exp 2
scoreboard players remove @s mana 20

execute anchored eyes run summon marker ~ ~ ~ {Tags:["life_orb"]}