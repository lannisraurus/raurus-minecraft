scoreboard players set enderman entity_count 0
scoreboard players set zombie entity_count 0
scoreboard players set skeleton entity_count 0
scoreboard players set creeper entity_count 0
scoreboard players set spider entity_count 0
scoreboard players set armor_stand entity_count 0
scoreboard players set villager entity_count 0
scoreboard players set item entity_count 0
scoreboard players set vex entity_count 0

execute as @e[type=enderman] run scoreboard players add enderman entity_count 1
execute as @e[type=zombie] run scoreboard players add zombie entity_count 1
execute as @e[type=skeleton] run scoreboard players add skeleton entity_count 1
execute as @e[type=creeper] run scoreboard players add creeper entity_count 1
execute as @e[type=spider] run scoreboard players add spider entity_count 1
execute as @e[type=armor_stand] run scoreboard players add armor_stand entity_count 1
execute as @e[type=villager] run scoreboard players add villager entity_count 1
execute as @e[type=item] run scoreboard players add item entity_count 1
execute as @e[type=vex] run scoreboard players add vex entity_count 1

