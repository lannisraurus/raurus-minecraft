
##################### ENABLE TRIGGERS


scoreboard players enable @a[nbt={Dimension:"raurus:interstice"}] lvl_agi
scoreboard players enable @a[nbt={Dimension:"raurus:interstice"}] lvl_str
scoreboard players enable @a[nbt={Dimension:"raurus:interstice"}] lvl_dex
scoreboard players enable @a[nbt={Dimension:"raurus:interstice"}] lvl_att
scoreboard players enable @a[nbt={Dimension:"raurus:interstice"}] lvl_kno
scoreboard players enable @a[nbt={Dimension:"raurus:interstice"}] lvl_vit




###################### LEVELING UP


tag @a[scores={lvl_agi=1..}] add show_menu
tag @a[scores={lvl_str=1..}] add show_menu
tag @a[scores={lvl_dex=1..}] add show_menu
tag @a[scores={lvl_kno=1..}] add show_menu
tag @a[scores={lvl_att=1..}] add show_menu
tag @a[scores={lvl_vit=1..}] add show_menu



scoreboard players remove @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] agi 1
execute as @a[scores={ agi=..9 , lvl_agi=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~ 10 2.00




scoreboard players remove @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] str 1
execute as @a[scores={ str=..9 , lvl_str=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.anvil.use ambient @s ~ ~ ~ 0.51 1.00




scoreboard players remove @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] dex 1
execute as @a[scores={ dex=..9 , lvl_dex=1.. , lvl_up=0.. }] at @s run playsound minecraft:entity.player.attack.sweep ambient @s ~ ~ ~ 10 2.00




scoreboard players remove @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] att 1
execute as @a[scores={ att=..9 , lvl_att=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 10 2.00



scoreboard players remove @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] kno 1
execute as @a[scores={ kno=..9 , lvl_kno=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.enchantment_table.use ambient @s ~ ~ ~ 10 2.00



scoreboard players remove @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] lvl_up 1
scoreboard players add @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] lvl 1
scoreboard players add @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] vit 1
execute as @a[scores={ vit=..9 , lvl_vit=1.. , lvl_up=0.. }] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 10 2.00











######################### STAT PERKS

#DEX
execute as @a[scores={dex=0}] run attribute @s minecraft:generic.attack_speed base set 3.5
execute as @a[scores={dex=1}] run attribute @s minecraft:generic.attack_speed base set 3.6
execute as @a[scores={dex=2}] run attribute @s minecraft:generic.attack_speed base set 3.7
execute as @a[scores={dex=3}] run attribute @s minecraft:generic.attack_speed base set 3.8
execute as @a[scores={dex=4}] run attribute @s minecraft:generic.attack_speed base set 3.9
execute as @a[scores={dex=5}] run attribute @s minecraft:generic.attack_speed base set 4.0
execute as @a[scores={dex=6}] run attribute @s minecraft:generic.attack_speed base set 4.1
execute as @a[scores={dex=7}] run attribute @s minecraft:generic.attack_speed base set 4.2
execute as @a[scores={dex=8}] run attribute @s minecraft:generic.attack_speed base set 4.3
execute as @a[scores={dex=9}] run attribute @s minecraft:generic.attack_speed base set 4.4
execute as @a[scores={dex=10}] run attribute @s minecraft:generic.attack_speed base set 4.5






#AGI
execute as @a[scores={agi=0}] run attribute @s minecraft:generic.movement_speed base set 0.088
execute as @a[scores={agi=1}] run attribute @s minecraft:generic.movement_speed base set 0.090
execute as @a[scores={agi=2}] run attribute @s minecraft:generic.movement_speed base set 0.092
execute as @a[scores={agi=3}] run attribute @s minecraft:generic.movement_speed base set 0.094
execute as @a[scores={agi=4}] run attribute @s minecraft:generic.movement_speed base set 0.096
execute as @a[scores={agi=5}] run attribute @s minecraft:generic.movement_speed base set 0.098
execute as @a[scores={agi=6}] run attribute @s minecraft:generic.movement_speed base set 0.1
execute as @a[scores={agi=7}] run attribute @s minecraft:generic.movement_speed base set 0.106
execute as @a[scores={agi=8}] run attribute @s minecraft:generic.movement_speed base set 0.112
execute as @a[scores={agi=9}] run attribute @s minecraft:generic.movement_speed base set 0.12
execute as @a[scores={agi=10}] run attribute @s minecraft:generic.movement_speed base set 0.13



#ATT
scoreboard players set @a[scores={att=0}] mana_max 50
scoreboard players set @a[scores={att=1}] mana_max 70
scoreboard players set @a[scores={att=2}] mana_max 90
scoreboard players set @a[scores={att=3}] mana_max 100
scoreboard players set @a[scores={att=4}] mana_max 120
scoreboard players set @a[scores={att=5}] mana_max 140
scoreboard players set @a[scores={att=6}] mana_max 150
scoreboard players set @a[scores={att=7}] mana_max 160
scoreboard players set @a[scores={att=8}] mana_max 170
scoreboard players set @a[scores={att=9}] mana_max 180
scoreboard players set @a[scores={att=10}] mana_max 200


#KNO
scoreboard players set @a[scores={kno=0}] mana_tick_max 400
scoreboard players set @a[scores={kno=1}] mana_tick_max 370
scoreboard players set @a[scores={kno=2}] mana_tick_max 340
scoreboard players set @a[scores={kno=3}] mana_tick_max 310
scoreboard players set @a[scores={kno=4}] mana_tick_max 280
scoreboard players set @a[scores={kno=5}] mana_tick_max 250
scoreboard players set @a[scores={kno=6}] mana_tick_max 220
scoreboard players set @a[scores={kno=7}] mana_tick_max 190
scoreboard players set @a[scores={kno=8}] mana_tick_max 160
scoreboard players set @a[scores={kno=9}] mana_tick_max 130
scoreboard players set @a[scores={kno=10}] mana_tick_max 100



#VIT

execute as @a[scores={vit=0}] run attribute @s minecraft:generic.max_health base set 16
execute as @a[scores={vit=1}] run attribute @s minecraft:generic.max_health base set 18
execute as @a[scores={vit=2}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={vit=3}] run attribute @s minecraft:generic.max_health base set 22
execute as @a[scores={vit=4}] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={vit=5}] run attribute @s minecraft:generic.max_health base set 25
execute as @a[scores={vit=6}] run attribute @s minecraft:generic.max_health base set 26
execute as @a[scores={vit=7}] run attribute @s minecraft:generic.max_health base set 27
execute as @a[scores={vit=8}] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={vit=9}] run attribute @s minecraft:generic.max_health base set 29
execute as @a[scores={vit=10}] run attribute @s minecraft:generic.max_health base set 30


#STR
execute as @a[scores={str=0}] run attribute @s minecraft:generic.attack_damage base set 0.5
execute as @a[scores={str=1}] run attribute @s minecraft:generic.attack_damage base set 0.6
execute as @a[scores={str=2}] run attribute @s minecraft:generic.attack_damage base set 0.7
execute as @a[scores={str=3}] run attribute @s minecraft:generic.attack_damage base set 0.8
execute as @a[scores={str=4}] run attribute @s minecraft:generic.attack_damage base set 0.9
execute as @a[scores={str=5}] run attribute @s minecraft:generic.attack_damage base set 1.0
execute as @a[scores={str=6}] run attribute @s minecraft:generic.attack_damage base set 1.1
execute as @a[scores={str=7}] run attribute @s minecraft:generic.attack_damage base set 1.2
execute as @a[scores={str=8}] run attribute @s minecraft:generic.attack_damage base set 1.3
execute as @a[scores={str=9}] run attribute @s minecraft:generic.attack_damage base set 1.4
execute as @a[scores={str=10}] run attribute @s minecraft:generic.attack_damage base set 1.5













# tellraw lvl up chain
execute as @a[tag=show_menu] run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"- Overview -","bold":true,"color":"white"},{"text":"\nLevel: "},{"score":{"name":"@s","objective":"lvl"}},{"text":"\nAvailable level ups: "},{"score":{"name":"@s","objective":"lvl_up"}},{"text":"\n"},{"text":"- Stats -","bold":true},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_vit add 1"}},{"text":"] VIT - "},{"score":{"name":"@s","objective":"vit"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_str add 1"}},{"text":"] STR - "},{"score":{"name":"@s","objective":"str"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_dex add 1"}},{"text":"] DEX - "},{"score":{"name":"@s","objective":"dex"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_kno add 1"}},{"text":"] KNO - "},{"score":{"name":"@s","objective":"kno"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_att add 1"}},{"text":"] ATT - "},{"score":{"name":"@s","objective":"att"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_agi add 1"}},{"text":"] AGI - "},{"score":{"name":"@s","objective":"agi"}}]
tag @a remove show_menu