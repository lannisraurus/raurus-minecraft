
scoreboard players set @a[tag=blacksmith] burn_time 0
scoreboard players add @a[tag=blacksmith,scores={blacksmith_fire_cooldown=..1200}] blacksmith_fire_cooldown 1

execute as @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 1 1.00
execute as @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 1 2.00
execute as @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 1 0.00
effect give @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] fire_resistance 16 10 true
scoreboard players set @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] blacksmith_fire_cooldown 0