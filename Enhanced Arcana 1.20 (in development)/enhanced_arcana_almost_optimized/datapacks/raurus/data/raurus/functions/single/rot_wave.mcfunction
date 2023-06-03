
scoreboard players add @s time 1
execute as @s[scores={time=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=rot_wizard]
execute as @s[scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

execute as @s at @s run tp @s ^ ^ ^0.08

execute as @s at @s run particle ash ^1 ^ ^ 0.2 0.5 0.2 0 10 normal
execute as @s at @s run particle ash ^ ^ ^ 0.2 0.5 0.2 0 10 normal
execute as @s at @s run particle ash ^-1 ^ ^ 0.2 0.5 0.2 0 10 normal

execute as @s at @s run tag @a[distance=..2] add rotting

kill @s[scores={time=100..}]