execute as @e[type=!item,distance=..6.5,tag=!soul_orb] run damage @s 14 minecraft:magic
execute as @e[type=!item,distance=..6.5,tag=!soul_orb,type=!player] run damage @s 2 minecraft:magic
tag @e[type=!item,distance=..6.5,tag=!soul_orb] add rooted
particle flash ~ ~ ~ 0.1 0.1 0.1 0 10 force
particle glow ~ ~ ~ 0.2 0.2 0.2 0.01 20 force
playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 0.50
playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 0.00
playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 0.80
playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 1.20
kill @s