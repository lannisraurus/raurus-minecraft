#### hostile and undead tag

tag @e[type=creeper] add hostile
tag @e[type=zombie] add undead
tag @e[type=skeleton] add undead


##### safe tag

effect give @a[tag=safe] instant_health 3 100 true
effect give @a[tag=safe] resistance 3 100 true
effect give @a[tag=safe] weakness 3 100 true







###### No cast spaces

tag @a[tag=base] add no_cast
tag @a[tag=safe] add no_cast
execute positioned 0.54 101.00 -0.53 in dim:interstice run tag @a[distance=..20] add no_cast





##### teleport players in interstice void

execute as @a[nbt={Dimension:"dim:interstice"}] at @s in dim:interstice run summon armor_stand ~ 50 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["fallen"]}
execute as @a[nbt={Dimension:"dim:interstice"}] at @s in dim:interstice run summon armor_stand ~ -63 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["fallen"]}
execute at @e[type=armor_stand,tag=fallen] run effect give @a[distance=..6] resistance 2 100 true
execute at @e[type=armor_stand,tag=fallen] run effect give @a[distance=..6] instant_health 10 100 true
execute at @e[type=armor_stand,tag=fallen] run tp @a[distance=..6,tag=!knockbackers] 0 101 -0
execute at @e[type=armor_stand,tag=fallen] run tag @a[distance=..6,tag=knockbackers] add tp_knockbackers
kill @e[type=armor_stand,tag=fallen]








##### knockbackers

execute at @e[tag=knockbackers_tower] run particle flame ~ ~0.1 ~ 0.3 0 0.3 0 1 normal
execute at @e[tag=knockbackers_tower] run particle flame ~ ~3.1 ~ 0.3 0 0.3 0 1 normal
execute at @e[tag=knockbackers_tower] run particle flame ~0.5 ~ ~0.5 0 1 0 0.2 0 normal
execute at @e[tag=knockbackers_tower] run particle flame ~-0.5 ~ ~-0.5 0 1 0 0.2 0 normal
execute at @e[tag=knockbackers_tower] run particle flame ~-0.5 ~ ~0.5 0 1 0 0.2 0 normal
execute at @e[tag=knockbackers_tower] run particle flame ~0.5 ~ ~-0.5 0 1 0 0.2 0 normal
execute at @e[tag=knockbackers_tower] run scoreboard players add @a[tag=knockbackers,distance=..1] kb_score 1

execute in dim:interstice positioned as @e[type=villager,tag=join_knockbackers] as @a[distance=..3,scores={talk=1..}] run tag @s add tp_knockbackers


tag @a[scores={drop_spell=1..},tag=knockbackers] add leave_knockbackers

team join player @a[tag=knockbackers]
execute if score start start matches 1200.. run tag @a[tag=in_game,tag=knockbackers] add leave_knockbackers
execute if score start start matches 1200.. run tag @a[tag=in_game] remove knockbackers
execute if score start start matches 1200.. run tag @a[tag=in_game] remove tp_knockbackers

execute in dim:interstice run tp @a[tag=tp_knockbackers] -52 120 -79
execute as @a[tag=tp_knockbackers] at @s run spreadplayers ~ ~ 3 20 false @s
tellraw @a[tag=tp_knockbackers,tag=!knockbackers] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> "},{"text":"You are playing knockbackers! Drop pole to leave.","color":"dark_green"},{"text":"","color":"white"}]
scoreboard players remove @a[tag=tp_knockbackers] kb_score 50
tag @a[tag=tp_knockbackers] add knockbackers
tag @a remove tp_knockbackers


execute in dim:interstice run tp @a[tag=leave_knockbackers] 0 101 -0
tag @a[tag=leave_knockbackers] remove knockbackers
team join neutral @a[tag=leave_knockbackers]
tellraw @a[tag=leave_knockbackers] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> "},{"text":"You have left knockbackers.","color":"dark_green"},{"text":"","color":"white"}]
tag @a remove leave_knockbackers

effect give @a[tag=knockbackers] resistance 1 10 true
effect give @a[tag=knockbackers] speed 1 2 true
effect give @a[tag=knockbackers] jump_boost 1 2 true

scoreboard players set @a[tag=knockbackers] stamina 100

scoreboard players set @a[scores={kb_score=..0}] kb_score 0
scoreboard players set @a[scores={kb_score=350..}] kb_score 350
scoreboard players set @a[tag=!knockbackers] kb_score 0

item replace entity @a[tag=knockbackers,scores={kb_score=0..20}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl1","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s}]} 1
item replace entity @a[tag=knockbackers,scores={kb_score=21..40}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl2","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:2s}]} 1
item replace entity @a[tag=knockbackers,scores={kb_score=41..60}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl3","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:3s}]} 1
item replace entity @a[tag=knockbackers,scores={kb_score=61..80}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl4","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:4s}]} 1
item replace entity @a[tag=knockbackers,scores={kb_score=81..100}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl5","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:5s}]} 1
item replace entity @a[tag=knockbackers,scores={kb_score=101..120}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl6","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:6s}]} 1

item replace entity @a[tag=knockbackers,scores={kb_score=121..160}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl7","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:7s}]} 1
item replace entity @a[tag=knockbackers,scores={kb_score=161..200}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl8","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:8s}]} 1
item replace entity @a[tag=knockbackers,scores={kb_score=201..250}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl9","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:9s}]} 1
item replace entity @a[tag=knockbackers,scores={kb_score=251..}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Knockback Pole lvl10","color":"#00B512","bold":true}',Lore:['{"text":"Bonk","color":"#00FFC3"}']},HideFlags:127,Unbreakable:1b,CustomModelData:37,kill:1b,kb_pole:1b,Enchantments:[{id:"minecraft:knockback",lvl:10s}]} 1

clear @a[tag=!knockbackers] carrot_on_a_stick{kb_pole:1b}















##### kill items
kill @e[nbt={Item:{tag:{kill:1b}}}]

#### Leave game (stop playing)

execute as @a[tag=in_game,scores={leave_game=1..}] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> "},{"text":"Please do not leave the game while it is running!","color":"dark_green"},{"text":"","color":"white"}]
execute as @a[tag=in_game,scores={leave_game=1..}] in dim:interstice run tp @s 0 101 -0
execute as @a[tag=in_game,scores={leave_game=1..}] in dim:interstice run spawnpoint @s 0 101 -0
execute as @a[tag=in_game,scores={leave_game=1..}] run function rr:reset
execute as @a[tag=in_game,scores={leave_game=1..}] run tag @s remove in_game


##### neutral team
execute as @a[nbt={Dimension:"dim:interstice"},tag=!in_game,team=!player] run team join neutral @s


#### RESET MAP WHEN STARTING

execute if score start start matches 6600 run function rr:reset_map






###### RIGHT CLICK VILLAGER - LEAVE QUEUE WHEN IN CUSTOMIZE ROOM

execute in dim:interstice positioned as @e[type=villager,tag=game_ready] as @a[distance=..3,scores={talk=1..},tag=!ready] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> You are ready!"},{"text":"","color":"red"},{"text":"","color":"white"}]
execute in dim:interstice positioned as @e[type=villager,tag=game_ready] as @a[distance=..3,scores={talk=1..},tag=ready] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> You are "},{"text":"NOT ","color":"red"},{"text":"ready!","color":"white"}]

execute in dim:interstice positioned as @e[type=villager,tag=game_ready] as @a[distance=..3,scores={talk=1..},tag=!ready] run playsound minecraft:block.note_block.bit ambient @s 0 101 -0 1 2.00
execute in dim:interstice positioned as @e[type=villager,tag=game_ready] as @a[distance=..3,scores={talk=1..},tag=ready] run playsound minecraft:block.note_block.bit ambient @s 0 101 -0 1 0.00

execute in dim:interstice positioned as @e[type=villager,tag=game_ready] as @a[distance=..3,scores={talk=1..},tag=ready] run tag @s add not_ready
execute in dim:interstice positioned as @e[type=villager,tag=game_ready] as @a[distance=..3,scores={talk=1..},tag=!ready] run tag @s add is_ready

tag @a[tag=not_ready] remove ready
tag @a[tag=is_ready] add ready
tag @a remove is_ready
tag @a remove not_ready











##### START GAME

execute if entity @a[tag=in_game] if score start start matches ..7400 run scoreboard players add start start 1
execute unless entity @a[tag=in_game] run scoreboard players set start start 0
execute unless entity @a[tag=in_game] run scoreboard players set gamemode gamemode 0

execute if score start start matches 1 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"6 minutes","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 1200 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"5 minutes","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 2400 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"4 minutes","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 3600 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"3 minutes","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 4800 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"2 minutes","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 6000 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"1 minute","color":"dark_green"},{"text":"!","color":"white"}]

execute if score start start matches 6600 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"30 seconds","color":"dark_green"},{"text":"!","color":"white"}]

execute if score start start matches 7200 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"10 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7220 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"9 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7240 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"8 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7260 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"7 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7280 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"6 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7300 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"5 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7320 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"4 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7340 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"3 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7360 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"2 seconds","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7380 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> Game will start in "},{"text":"1 second","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 7400 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> "},{"text":"Game has started","color":"dark_green"},{"text":"!","color":"white"}]



execute if score start start matches 1 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.00
execute if score start start matches 1200 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.10
execute if score start start matches 2400 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.20
execute if score start start matches 3600 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.30
execute if score start start matches 4800 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.40
execute if score start start matches 6000 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.50
execute if score start start matches 6600 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.70
execute if score start start matches 7200 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.80
execute if score start start matches 7220 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.90
execute if score start start matches 7240 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.00
execute if score start start matches 7260 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.10
execute if score start start matches 7280 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.20
execute if score start start matches 7300 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.30
execute if score start start matches 7320 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.40
execute if score start start matches 7340 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.50
execute if score start start matches 7360 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.60
execute if score start start matches 7380 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.70

execute if score start start matches 7400 as @a[tag=in_game] at @s run playsound minecraft:item.goat_horn.sound.0 ambient @s ~ ~ ~ 1 1.00
execute if score start start matches 7400 as @a[tag=in_game] at @s run playsound minecraft:item.goat_horn.sound.0 ambient @s ~ ~ ~ 1 1.20
execute if score start start matches 7400 as @a[tag=in_game] at @s run playsound minecraft:item.goat_horn.sound.0 ambient @s ~ ~ ~ 1 0.80
execute if score start start matches 7400 as @a[tag=in_game] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 2.00




####### VOTING

execute if score start start matches 1..1200 run scoreboard players enable @a vote
execute if score start start matches 1..1200 run tag @a[tag=in_game] add voting
tellraw @a[tag=voting,tag=!vote_displayed,tag=in_game] ["",{"text":"--------------------\nVote on the gamemode!","bold":true,"color":"dark_green"},{"text":"\n"},{"text":"--------------------\n","bold":true,"color":"dark_green"},{"text":"(Click)","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger vote set 1"}},{"text":" Tower Capture\n","bold":true,"color":"dark_green"},{"text":"(Click)","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger vote set 2"}},{"text":" Team Deathmatch\n","bold":true,"color":"dark_green"},{"text":"(Click)","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger vote set 3"}},{"text":" Deathmatch\n","bold":true,"color":"dark_green"},{"text":"(Click)","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger vote set 4"}},{"text":" Boss Battle\n--------------------","bold":true,"color":"dark_green"},{"text":" "}]
tag @a[tag=voting] add vote_displayed

tag @a[tag=!in_game] remove vote_displayed
tag @a[tag=!in_game] remove voting

execute unless score start start matches 1..1200 run tag @a remove voting
execute unless score start start matches 1..1200 run tag @a remove vote_displayed

execute if score start start matches 1201 run scoreboard players set Leader total_votes -1

execute if score start start matches 1201 as @a[scores={vote=1}] run scoreboard players add Towers total_votes 1
execute if score start start matches 1201 as @a[scores={vote=2}] run scoreboard players add TDM total_votes 1
execute if score start start matches 1201 as @a[scores={vote=3}] run scoreboard players add DM total_votes 1
execute if score start start matches 1201 as @a[scores={vote=4}] run scoreboard players add BossBattle total_votes 1

execute if score start start matches 1201 if score BossBattle total_votes > Leader total_votes run scoreboard players operation Leader total_votes = BossBattle total_votes
execute if score start start matches 1201 if score DM total_votes > Leader total_votes run scoreboard players operation Leader total_votes = DM total_votes
execute if score start start matches 1201 if score TDM total_votes > Leader total_votes run scoreboard players operation Leader total_votes = TDM total_votes
execute if score start start matches 1201 if score Towers total_votes > Leader total_votes run scoreboard players operation Leader total_votes = Towers total_votes


execute if score start start matches 1201 if score BossBattle total_votes = Leader total_votes run scoreboard players set gamemode gamemode 4
execute if score start start matches 1201 if score DM total_votes = Leader total_votes run scoreboard players set gamemode gamemode 3
execute if score start start matches 1201 if score TDM total_votes = Leader total_votes run scoreboard players set gamemode gamemode 2
execute if score start start matches 1201 if score Towers total_votes = Leader total_votes run scoreboard players set gamemode gamemode 1


execute if score start start matches 1201 if score gamemode gamemode matches 1 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> The Gamemode is "},{"text":"Tower Capture","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 1201 if score gamemode gamemode matches 2 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> The Gamemode is "},{"text":"Team Deathmatch","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 1201 if score gamemode gamemode matches 3 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> The Gamemode is "},{"text":"Deathmatch","color":"dark_green"},{"text":"!","color":"white"}]
execute if score start start matches 1201 if score gamemode gamemode matches 4 run tellraw @a[tag=in_game] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> The Gamemode is "},{"text":"Boss Battle","color":"dark_green"},{"text":"!","color":"white"}]





execute if score start start matches ..1200 as @e[type=armor_stand,tag=text1] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text1"],CustomName:'{"text":"Click here to play!","color":"#087500","bold":true}'}
execute if score start start matches ..1200 as @e[type=armor_stand,tag=text2] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text2"],CustomName:'{"text":"Voting in progress...","color":"#087500"}'}

execute if score start start matches 6600.. as @e[type=armor_stand,tag=text1] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text1"],CustomName:'{"text":"Game in progress","color":"#A10000","bold":true}'}
execute if score start start matches 6600.. as @e[type=armor_stand,tag=text2] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text2"],CustomName:'{"text":"Please wait...","color":"#A10000","bold":true}'}

execute if score start start matches 1201 as @e[type=armor_stand,tag=text1] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text1"],CustomName:'{"text":"Click here to play!","color":"#ED8E00","bold":true}'}
execute if score start start matches 1201 if score gamemode gamemode matches 1 as @e[type=armor_stand,tag=text2] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text2"],CustomName:'{"text":"Gamemode: Tower Capture","color":"#ED8E00"}'}
execute if score start start matches 1201 if score gamemode gamemode matches 2 as @e[type=armor_stand,tag=text2] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text2"],CustomName:'{"text":"Gamemode: Team Deathmatch","color":"#ED8E00"}'}
execute if score start start matches 1201 if score gamemode gamemode matches 3 as @e[type=armor_stand,tag=text2] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text2"],CustomName:'{"text":"Gamemode: Deathmatch","color":"#ED8E00"}'}
execute if score start start matches 1201 if score gamemode gamemode matches 4 as @e[type=armor_stand,tag=text2] run data merge entity @s {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text2"],CustomName:'{"text":"Gamemode: Boss Battle","color":"#ED8E00"}'}







execute if score start start matches 1201 run scoreboard players set @a vote 0

execute if score start start matches 1201 run scoreboard players set Leader total_votes 0
execute if score start start matches 1201 run scoreboard players set Towers total_votes 0
execute if score start start matches 1201 run scoreboard players set TDM total_votes 0
execute if score start start matches 1201 run scoreboard players set DM total_votes 0
execute if score start start matches 1201 run scoreboard players set BossBattle total_votes 0


########### GAMEMODE

execute if score gamemode gamemode matches 0 run function rr:gamemodes/not_playing
execute if score gamemode gamemode matches 1 run function rr:gamemodes/towers
execute if score gamemode gamemode matches 2 run function rr:gamemodes/tdm
execute if score gamemode gamemode matches 3 run function rr:gamemodes/dm
execute if score gamemode gamemode matches 4 run function rr:gamemodes/bossbattle










###### RIGHT CLICK VILLAGER - JOIN QUEUE

execute in dim:interstice if score start start matches ..6600 positioned as @e[type=villager,tag=game_start] as @a[distance=..3,scores={talk=1..},tag=!in_game] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> You will participate in this match!"},{"text":"","color":"dark_green"},{"text":"","color":"white"}]
execute in dim:interstice if score start start matches ..6600 positioned as @e[type=villager,tag=game_start] as @a[distance=..3,scores={talk=1..},tag=in_game] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> You will "},{"text":"NOT ","color":"red"},{"text":"participate in this match!","color":"white"}]

execute in dim:interstice if score start start matches ..6600 positioned as @e[type=villager,tag=game_start] as @a[distance=..3,scores={talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 0.00
execute in dim:interstice if score start start matches ..6600 positioned as @e[type=villager,tag=game_start] as @a[distance=..3,scores={talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.00
execute in dim:interstice if score start start matches ..6600 positioned as @e[type=villager,tag=game_start] as @a[distance=..3,scores={talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 2.00


execute in dim:interstice if score start start matches ..6600 positioned as @e[type=villager,tag=game_start] as @a[distance=..3,scores={talk=1..},tag=!in_game] run tag @s add join_game
execute in dim:interstice if score start start matches ..6600 positioned as @e[type=villager,tag=game_start] as @a[distance=..3,scores={talk=1..},tag=in_game] run tag @s add leave_game

tag @a[tag=join_game] add in_game
tag @a[tag=leave_game] remove in_game
tag @a[tag=leave_game] remove leave_game
tag @a[tag=join_game] remove join_game


###### RIGHT CLICK VILLAGER - LEAVE QUEUE WHEN IN CUSTOMIZE ROOM

execute in dim:interstice positioned as @e[type=villager,tag=game_leave] as @a[distance=..3,scores={talk=1..}] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> You will "},{"text":"NOT ","color":"red"},{"text":"participate in this match!","color":"white"}]
execute in dim:interstice positioned as @e[type=villager,tag=game_leave] as @a[distance=..3,scores={talk=1..}] run tag @s remove in_game
execute in dim:interstice positioned as @e[type=villager,tag=game_leave] as @a[distance=..3,scores={talk=1..}] run function rr:reset
execute in dim:interstice positioned as @e[type=villager,tag=game_leave] as @a[distance=..3,scores={talk=1..}] run playsound minecraft:block.note_block.bit ambient @s 0 101 -0 1 0.00
execute in dim:interstice positioned as @e[type=villager,tag=game_leave] as @a[distance=..3,scores={talk=1..}] run playsound minecraft:block.note_block.bit ambient @s 0 101 -0 1 1.00
execute in dim:interstice positioned as @e[type=villager,tag=game_leave] as @a[distance=..3,scores={talk=1..}] run playsound minecraft:block.note_block.bit ambient @s 0 101 -0 1 2.00
execute in dim:interstice positioned as @e[type=villager,tag=game_leave] as @a[distance=..3,scores={talk=1..}] run tp @s 0 101 -0











######### START GAME IF EVERYONE IS READY

execute if score start start matches 1200.. unless entity @a[tag=in_game,tag=!ready] run scoreboard players set start start 6500
execute if score start start matches 6500.. run tag @a remove ready











































