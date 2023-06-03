execute at @s[scores={time=45}] run playsound minecraft:entity.blaze.shoot ambient @a[distance=..10]
scoreboard players add @s time 1
execute as @s[scores={time=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=fire_sprite]
execute as @s[scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

tp @s ^ ^ ^0.08

particle flame ^1 ^ ^ 0.2 0.5 0.2 0.009 10 normal
particle flame ^ ^ ^ 0.2 0.5 0.2 0.009 10 normal
particle flame ^-1 ^ ^ 0.2 0.5 0.2 0.009 10 normal

tag @a[distance=..2] add burning

kill @s[scores={time=100..}]