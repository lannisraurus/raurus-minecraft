execute as @s at @s run playsound minecraft:entity.wither.death ambient @a[distance=..5] ~ ~ ~ 1 1.00
execute as @s at @s run playsound minecraft:entity.wither.death ambient @a[distance=..5] ~ ~ ~ 1 1.50
execute as @s at @s run playsound minecraft:entity.wither.death ambient @a[distance=..5] ~ ~ ~ 1 2.00
execute as @s run function raurus:soft_reset
tag @s add ghost
tag @s add update_player