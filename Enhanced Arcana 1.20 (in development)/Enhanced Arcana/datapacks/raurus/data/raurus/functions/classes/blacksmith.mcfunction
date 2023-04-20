
scoreboard players set @a[tag=blacksmith] burn_time 0
scoreboard players add @a[tag=blacksmith,scores={blacksmith_fire_cooldown=..1200}] blacksmith_fire_cooldown 1

execute as @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 1 1.00
execute as @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 1 2.00
execute as @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 1 0.00
effect give @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] fire_resistance 16 10 true
scoreboard players set @a[scores={blacksmith_fire_cooldown=1200.. , fire=1..}] blacksmith_fire_cooldown 0




execute as @a[tag=!in_abyss,tag=!in_interstice,nbt={SelectedItem:{tag:{blacksmith_hammer:1b}}}] at @s rotated ~ 0 run summon interaction ^ ^ ^1.5 {width:0.3f,height:0.2f,Tags:["blacksmith_interaction"]}
execute at @e[tag=blacksmith_interaction,type=interaction] unless block ~ ~-1 ~ air if block ~ ~ ~ air run particle flame ~ ~ ~ 0 0 0 0.01 1 normal
scoreboard players add @e[tag=blacksmith_interaction,type=interaction] time 1

execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] run summon marker ~ ~ ~ {Invulnerable:0b,Tags:["blacksmith_anvil"]}

execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] run particle smoke ~ ~ ~ 0.6 0.6 0.6 0.03 30 force
execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] run particle cloud ~ ~ ~ 0.6 0.6 0.6 0.03 30 force

execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] run playsound minecraft:block.anvil.land ambient @a[distance=..5] ~ ~ ~ 1 1.00
execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] run playsound minecraft:block.anvil.land ambient @a[distance=..5] ~ ~ ~ 1 1.30
execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] run playsound minecraft:block.anvil.land ambient @a[distance=..5] ~ ~ ~ 1 0.70

execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] as @s[y_rotation=-45..45] run setblock ~ ~ ~ anvil[facing=east] replace
execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] as @s[y_rotation=45..135] run setblock ~ ~ ~ anvil[facing=north] replace
execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] as @s[y_rotation=135..225] run setblock ~ ~ ~ anvil[facing=east] replace
execute as @e[tag=blacksmith_interaction,type=interaction] at @s unless block ~ ~-1 ~ air if block ~ ~ ~ air on target if entity @s[tag=blacksmith] as @s[y_rotation=225..315] run setblock ~ ~ ~ anvil[facing=north] replace

execute at @e[tag=blacksmith_anvil] run particle flame ~ ~ ~ 0.2 0.4 0.2 0.02 2 normal



execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run fill ~ ~ ~ ~ ~ ~ air replace anvil
execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run playsound minecraft:entity.iron_golem.death ambient @a[distance=..7] ~ ~ ~ 1 1.20
execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run playsound minecraft:entity.iron_golem.death ambient @a[distance=..7] ~ ~ ~ 1 1.40
execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run playsound minecraft:entity.iron_golem.death ambient @a[distance=..7] ~ ~ ~ 1 1.60
execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run playsound minecraft:entity.iron_golem.death ambient @a[distance=..7] ~ ~ ~ 1 1.80
execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run playsound minecraft:entity.iron_golem.death ambient @a[distance=..7] ~ ~ ~ 1 2.00
execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run particle smoke ~ ~ ~ 0.2 0.2 0.2 0.03 30 force
execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run particle cloud ~ ~ ~ 0.2 0.2 0.2 0.03 30 force
execute as @e[tag=blacksmith_anvil] at @s unless entity @a[distance=..4.5] run kill @s

execute as @e[tag=blacksmith_anvil] at @s unless block ~ ~ ~ anvil run kill @e[type=falling_block,distance=..4]
execute as @e[tag=blacksmith_anvil] at @s unless block ~ ~ ~ anvil run kill @e[type=item,nbt={Item:{id:"minecraft:anvil"}},distance=..5]
execute as @e[tag=blacksmith_anvil] at @s unless block ~ ~ ~ anvil run kill @s


kill @e[tag=blacksmith_interaction,type=interaction,scores={time=2..}]



