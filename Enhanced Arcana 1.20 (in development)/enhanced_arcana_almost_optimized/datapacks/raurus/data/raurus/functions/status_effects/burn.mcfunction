effect clear @s wither
effect give @s wither 2 0 true
execute at @s run particle flame ~ ~1 ~ 0.2 0.3 0.2 0 1 normal

scoreboard players remove @s burn_time 1

execute if block ~ ~ ~ water run playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 1.00
execute if block ~ ~ ~ water run scoreboard players set @s burn_time 0