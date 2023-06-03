
execute as @e[type=!item,distance=..6.5,tag=!levitation_orb] run damage @s 2 minecraft:magic
effect give @e[type=!item,distance=..6.5,tag=!soul_orb] levitation 10 0 true
particle flash ~ ~ ~ 0.1 0.1 0.1 0 10 force
particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.01 20 force
playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 2
playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 1.6
playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 2
playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 1.7
kill @s