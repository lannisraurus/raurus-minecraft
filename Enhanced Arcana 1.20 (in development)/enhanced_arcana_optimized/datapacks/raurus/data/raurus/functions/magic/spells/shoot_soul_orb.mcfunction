effect give @s slowness 2 3 true

execute positioned ~ ~1.5 ~ run particle minecraft:sonic_boom ^ ^ ^2 0 0 0 0 2 force
playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 1.75
playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
scoreboard players add @s exp 5
scoreboard players remove @s mana 70
summon marker ~ ~ ~ {Tags:["soul_orb"]}