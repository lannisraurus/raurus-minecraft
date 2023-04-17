############ RESET SCORES ############
scoreboard players set zombie mob_qtd 0
scoreboard players set skeleton mob_qtd 0
scoreboard players set spider mob_qtd 0
scoreboard players set creeper mob_qtd 0
scoreboard players set enderman mob_qtd 0
scoreboard players set armor_stand mob_qtd 0
scoreboard players set bat mob_qtd 0
scoreboard players set items mob_qtd 0
scoreboard players set falling_blocks mob_qtd 0
scoreboard players set ALL_MOBS mob_qtd 0

############ SET SCORES ############
execute as @e[type=bat] run scoreboard players add bat mob_qtd 1
execute as @e[type=zombie] run scoreboard players add zombie mob_qtd 1
execute as @e[type=skeleton] run scoreboard players add skeleton mob_qtd 1
execute as @e[type=spider] run scoreboard players add spider mob_qtd 1
execute as @e[type=creeper] run scoreboard players add creeper mob_qtd 1
execute as @e[type=enderman] run scoreboard players add enderman mob_qtd 1
execute as @e[type=armor_stand] run scoreboard players add armor_stand mob_qtd 1
execute as @e[type=item] run scoreboard players add items mob_qtd 1
execute as @e[type=falling_block] run scoreboard players add falling_blocks mob_qtd 1
execute as @e run scoreboard players add ALL_MOBS mob_qtd 1


