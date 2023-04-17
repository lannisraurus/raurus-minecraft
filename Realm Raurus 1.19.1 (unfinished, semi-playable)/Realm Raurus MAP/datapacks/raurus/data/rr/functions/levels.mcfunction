
##################### ENABLE TRIGGERS


scoreboard players enable @a[tag=safe] lvl_agi
scoreboard players enable @a[tag=safe] lvl_str
scoreboard players enable @a[tag=safe] lvl_dex
scoreboard players enable @a[tag=safe] lvl_att
scoreboard players enable @a[tag=safe] lvl_kno
scoreboard players enable @a[tag=safe] lvl_vit
scoreboard players enable @a[tag=safe] lvl_end



##################### EXP LEVEL UP

execute as @a if score @s exp >= @s exp_needed run scoreboard players add @s lvl_up 1
execute as @a at @s if score @s exp >= @s exp_needed run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 10 0.00
execute as @a if score @s exp >= @s exp_needed run tellraw @s {"text":"Congratulations! You have a new level-up point!","color":"green","bold":"true"}
execute as @a if score @s exp >= @s exp_needed run tag @s add level_up_exp_manage
execute as @a[tag=level_up_exp_manage] run scoreboard players operation @s exp_needed += EXP_SUM num
execute as @a[tag=level_up_exp_manage] run scoreboard players set @s exp 0
tag @a remove level_up_exp_manage


##################### PWR SLOT MAX

scoreboard players set @a[scores={lvl=0..10}] power_slots_max 5
scoreboard players set @a[scores={lvl=11..15}] power_slots_max 7
scoreboard players set @a[scores={lvl=16..20}] power_slots_max 10
scoreboard players set @a[scores={lvl=21..29}] power_slots_max 12
scoreboard players set @a[scores={lvl=30..}] power_slots_max 15



##################### ADD EXP AND MONEY

execute as @a run scoreboard players operation @s exp += @s add_exp
execute as @a run scoreboard players operation @s money += @s add_money
title @a[scores={add_exp=1..}] times 10 20 10
title @a[scores={add_money=1..}] times 10 20 10
execute as @a[scores={add_exp=1..}] run title @s subtitle ["",{"text":"EXP: ","color":"dark_green"},{"score":{"name":"@s","objective":"add_exp"},"color":"dark_green"},{"text":" || MON: ","color":"dark_green"},{"score":{"name":"@s","objective":"add_money"},"color":"dark_green"}]
execute as @a[scores={add_money=1..}] run title @s subtitle ["",{"text":"EXP: ","color":"dark_green"},{"score":{"name":"@s","objective":"add_exp"},"color":"dark_green"},{"text":" || MON: ","color":"dark_green"},{"score":{"name":"@s","objective":"add_money"},"color":"dark_green"}]
title @a[scores={add_exp=1..},tag=!capturing] title {"text":""}
title @a[scores={add_money=1..},tag=!capturing] title {"text":""}
scoreboard players set @a add_exp 0
scoreboard players set @a add_money 0







###################### LEVELING UP

tag @a[scores={lvl_agi=1..}] add update_player
tag @a[scores={lvl_str=1..}] add update_player
tag @a[scores={lvl_dex=1..}] add update_player
tag @a[scores={lvl_kno=1..}] add update_player
tag @a[scores={lvl_att=1..}] add update_player
tag @a[scores={lvl_end=1..}] add update_player
tag @a[scores={lvl_vit=1..}] add update_player

scoreboard players set @a[scores={lvl_agi=1..}] menu 1
scoreboard players set @a[scores={lvl_str=1..}] menu 1
scoreboard players set @a[scores={lvl_vit=1..}] menu 1
scoreboard players set @a[scores={lvl_dex=1..}] menu 1
scoreboard players set @a[scores={lvl_att=1..}] menu 1
scoreboard players set @a[scores={lvl_kno=1..}] menu 1
scoreboard players set @a[scores={lvl_end=1..}] menu 1



scoreboard players remove @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] agi 1
execute as @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 10 2.00
execute as @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 10 0.00
execute as @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 10 1.00



scoreboard players remove @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] str 1
execute as @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.anvil.use ambient @s ~ ~ ~ 0.51 0.00
execute as @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.anvil.use ambient @s ~ ~ ~ 0.51 1.00
execute as @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.anvil.use ambient @s ~ ~ ~ 0.51 0.50



scoreboard players remove @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] dex 1
execute as @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.player.attack.sweep ambient @s ~ ~ ~ 10 1.00
execute as @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.player.attack.sweep ambient @s ~ ~ ~ 10 2.00
execute as @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.player.attack.sweep ambient @s ~ ~ ~ 10 0.00



scoreboard players remove @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] att 1
execute as @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 10 1.00
execute as @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 10 0.00
execute as @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 10 2.00



scoreboard players remove @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] kno 1
execute as @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 10 1.00
execute as @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 10 0.00
execute as @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 10 2.00



scoreboard players remove @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] vit 1
execute as @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 10 2.00
execute as @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 10 1.00
execute as @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 10 0.00



scoreboard players remove @a[scores={ end=..9 , lvl_end=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ end=..9 , lvl_end=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ end=..9 , lvl_end=1.. , lvl_up=0.. }] end 1
execute as @a[scores={ end=..9 , lvl_end=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.horse.armor ambient @s ~ ~ ~ 10 2.00
execute as @a[scores={ end=..9 , lvl_end=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.horse.armor ambient @s ~ ~ ~ 10 1.00
execute as @a[scores={ end=..9 , lvl_end=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.horse.armor ambient @s ~ ~ ~ 10 0.00












######################### STAT PERKS

#DEX
execute as @a[scores={dex=0},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.0
execute as @a[scores={dex=1},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.1
execute as @a[scores={dex=2},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.2
execute as @a[scores={dex=3},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.3
execute as @a[scores={dex=4},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.4
execute as @a[scores={dex=5},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.5
execute as @a[scores={dex=6},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.6
execute as @a[scores={dex=7},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.7
execute as @a[scores={dex=8},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.8
execute as @a[scores={dex=9},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 4.9
execute as @a[scores={dex=10},tag=update_player] run attribute @s minecraft:generic.attack_speed base set 5.0

#AGI
execute as @a[scores={agi=0},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[scores={agi=1},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.108
execute as @a[scores={agi=2},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.116
execute as @a[scores={agi=3},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.124
execute as @a[scores={agi=4},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.132
execute as @a[scores={agi=5},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.140
execute as @a[scores={agi=6},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.148
execute as @a[scores={agi=7},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.156
execute as @a[scores={agi=8},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.164
execute as @a[scores={agi=9},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.172
execute as @a[scores={agi=10},tag=update_player] run attribute @s minecraft:generic.movement_speed base set 0.180

execute as @a[scores={agi=0},tag=update_player] run scoreboard players set @s stamina_tick_max 32
execute as @a[scores={agi=1},tag=update_player] run scoreboard players set @s stamina_tick_max 29
execute as @a[scores={agi=2},tag=update_player] run scoreboard players set @s stamina_tick_max 26
execute as @a[scores={agi=3},tag=update_player] run scoreboard players set @s stamina_tick_max 23
execute as @a[scores={agi=4},tag=update_player] run scoreboard players set @s stamina_tick_max 20
execute as @a[scores={agi=5},tag=update_player] run scoreboard players set @s stamina_tick_max 17
execute as @a[scores={agi=6},tag=update_player] run scoreboard players set @s stamina_tick_max 14
execute as @a[scores={agi=7},tag=update_player] run scoreboard players set @s stamina_tick_max 11
execute as @a[scores={agi=8},tag=update_player] run scoreboard players set @s stamina_tick_max 8
execute as @a[scores={agi=9},tag=update_player] run scoreboard players set @s stamina_tick_max 5
execute as @a[scores={agi=10},tag=update_player] run scoreboard players set @s stamina_tick_max 2













#ATT
scoreboard players set @a[scores={att=0},tag=update_player] mana_max 50
scoreboard players set @a[scores={att=1},tag=update_player] mana_max 70
scoreboard players set @a[scores={att=2},tag=update_player] mana_max 90
scoreboard players set @a[scores={att=3},tag=update_player] mana_max 100
scoreboard players set @a[scores={att=4},tag=update_player] mana_max 120
scoreboard players set @a[scores={att=5},tag=update_player] mana_max 140
scoreboard players set @a[scores={att=6},tag=update_player] mana_max 150
scoreboard players set @a[scores={att=7},tag=update_player] mana_max 160
scoreboard players set @a[scores={att=8},tag=update_player] mana_max 170
scoreboard players set @a[scores={att=9},tag=update_player] mana_max 180
scoreboard players set @a[scores={att=10},tag=update_player] mana_max 200


#KNO
scoreboard players set @a[scores={kno=0},tag=update_player] mana_tick_max 400
scoreboard players set @a[scores={kno=1},tag=update_player] mana_tick_max 370
scoreboard players set @a[scores={kno=2},tag=update_player] mana_tick_max 340
scoreboard players set @a[scores={kno=3},tag=update_player] mana_tick_max 310
scoreboard players set @a[scores={kno=4},tag=update_player] mana_tick_max 280
scoreboard players set @a[scores={kno=5},tag=update_player] mana_tick_max 250
scoreboard players set @a[scores={kno=6},tag=update_player] mana_tick_max 220
scoreboard players set @a[scores={kno=7},tag=update_player] mana_tick_max 190
scoreboard players set @a[scores={kno=8},tag=update_player] mana_tick_max 160
scoreboard players set @a[scores={kno=9},tag=update_player] mana_tick_max 130
scoreboard players set @a[scores={kno=10},tag=update_player] mana_tick_max 100



#VIT

execute as @a[scores={vit=0},tag=update_player] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={vit=1},tag=update_player] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={vit=2},tag=update_player] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={vit=3},tag=update_player] run attribute @s minecraft:generic.max_health base set 32
execute as @a[scores={vit=4},tag=update_player] run attribute @s minecraft:generic.max_health base set 36
execute as @a[scores={vit=5},tag=update_player] run attribute @s minecraft:generic.max_health base set 40
execute as @a[scores={vit=6},tag=update_player] run attribute @s minecraft:generic.max_health base set 44
execute as @a[scores={vit=7},tag=update_player] run attribute @s minecraft:generic.max_health base set 48
execute as @a[scores={vit=8},tag=update_player] run attribute @s minecraft:generic.max_health base set 52
execute as @a[scores={vit=9},tag=update_player] run attribute @s minecraft:generic.max_health base set 56
execute as @a[scores={vit=10},tag=update_player] run attribute @s minecraft:generic.max_health base set 60




#END
execute as @a[scores={end=0},tag=update_player] run scoreboard players set @s stamina_max 100
execute as @a[scores={end=1},tag=update_player] run scoreboard players set @s stamina_max 110
execute as @a[scores={end=2},tag=update_player] run scoreboard players set @s stamina_max 120
execute as @a[scores={end=3},tag=update_player] run scoreboard players set @s stamina_max 130
execute as @a[scores={end=4},tag=update_player] run scoreboard players set @s stamina_max 140
execute as @a[scores={end=5},tag=update_player] run scoreboard players set @s stamina_max 150
execute as @a[scores={end=6},tag=update_player] run scoreboard players set @s stamina_max 160
execute as @a[scores={end=7},tag=update_player] run scoreboard players set @s stamina_max 170
execute as @a[scores={end=8},tag=update_player] run scoreboard players set @s stamina_max 180
execute as @a[scores={end=9},tag=update_player] run scoreboard players set @s stamina_max 190
execute as @a[scores={end=10},tag=update_player] run scoreboard players set @s stamina_max 200




#STR
execute as @a[scores={str=0},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 0.8
execute as @a[scores={str=1},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 0.9
execute as @a[scores={str=2},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1
execute as @a[scores={str=3},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1.1
execute as @a[scores={str=4},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1.2
execute as @a[scores={str=5},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1.3
execute as @a[scores={str=6},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1.4
execute as @a[scores={str=7},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1.5
execute as @a[scores={str=8},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1.6
execute as @a[scores={str=9},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1.7
execute as @a[scores={str=10},tag=update_player] run attribute @s minecraft:generic.attack_damage base set 1.8




































































