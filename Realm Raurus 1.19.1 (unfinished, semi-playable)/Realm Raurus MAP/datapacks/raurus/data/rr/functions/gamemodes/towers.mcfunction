#### CAMPS

execute unless entity @e[tag=camp1] run scoreboard players add camp1 camp_time 1
execute if score camp1 camp_time matches 1800.. in minecraft:overworld positioned 215 78 89 run summon zombie ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,Health:30f,Tags:["camp1"],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,CustomModelData:9}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0},Unbreakable:1b}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2169619},Unbreakable:1b}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3677958},Unbreakable:1b}},{id:"minecraft:player_head",Count:1b,tag:{Unbreakable:1b,SkullOwner:{Id:[I;1794325646,1817985502,-1916923271,1680175757],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDNlYzlkMjdhYTJiZTk3OTViNWEwMzZiMWJlNjVjODhjZTE0NzI5MDIyNTlmNjE2Yjc1OGQzZjM2OWM4ZjY1OCJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:6}]}


execute if score camp1 camp_time matches 1800.. run scoreboard players set camp1 camp_time 0

























#### Prevent players from leaving base

execute in minecraft:overworld positioned 87 86 68 run tag @a[tag=in_game,distance=300..] add out_of_bounds


title @a[tag=out_of_bounds] times 0 10 0
title @a[tag=out_of_bounds] title {"text":"OUT OF BOUNDS","bold":true,"underlined":true,"color":"#910001"}




scoreboard players add @a[tag=out_of_bounds,scores={out_of_bounds=..50}] out_of_bounds 1
scoreboard players add @a[tag=out_of_bounds,scores={out_of_bounds=50..}] out_of_bounds_tick 1

scoreboard players add @a[scores={out_of_bounds_tick=10..}] deal_dmg 4

scoreboard players set @a[scores={out_of_bounds_tick=10..}] out_of_bounds_tick 0


scoreboard players set @a[tag=!out_of_bounds] out_of_bounds 0
scoreboard players set @a[tag=!out_of_bounds] out_of_bounds_tick 0
tag @a remove out_of_bounds





#### No Cast Spaces

tag @a[scores={respawn_time=1..}] add no_cast


#### tp abyss players to the right location

execute at @e[tag=tower] positioned ~ ~25 ~ run tp @a[tag=tp_overworld,distance=..25] @e[type=armor_stand,sort=nearest,tag=tower,limit=1]


#### respawn timer

tag @a[scores={respawn_time=1..}] add update_player

scoreboard players add @a[scores={death1tick=1..}] respawn_max 100
execute as @a[scores={death1tick=1..}] run scoreboard players operation @s respawn_time = @s respawn_max

scoreboard players remove @a[scores={respawn_time=1..}] respawn_time 1
execute as @a[scores={respawn_time=1..}] run scoreboard players operation @s respawn_sec = @s respawn_time
execute as @a[scores={respawn_time=1..}] run scoreboard players operation @s respawn_sec /= 20 num



execute as @a[tag=in_game,scores={respawn_time=1..}] run title @s times 0 20 0
execute as @a[tag=in_game,scores={respawn_time=1..}] run title @s subtitle ["",{"score":{"name":"@s","objective":"respawn_sec"}},{"text":" seconds"}]
execute as @a[tag=in_game,scores={respawn_time=1..}] run title @s title {"text":"Respawning...","bold":true}



effect give @a[scores={respawn_time=1..}] weakness 1 100 true
effect give @a[scores={respawn_time=1..}] resistance 1 100 true
effect give @a[scores={respawn_time=1..}] instant_health 1 100 true




execute in minecraft:overworld run tp @a[tag=in_game,team=red,tag=!base,scores={respawn_time=1..}] 257 103 218
execute in minecraft:overworld run tp @a[tag=in_game,team=blue,tag=!base,scores={respawn_time=1..}] -66 93 -105


execute as @a[scores={respawn_time=1}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 0
execute as @a[scores={respawn_time=1}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1
execute as @a[scores={respawn_time=1}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 2

title @a[scores={respawn_time=1}] times 10 50 10
title @a[scores={respawn_time=1}] subtitle {"text":" "}
title @a[scores={respawn_time=1}] title {"text":"Respawned!","bold":true,"underlined":true,"color":"dark_green"}






##### return to base

scoreboard players set @a[scores={is_jumping=1..}] return_tick 5
scoreboard players set @a[scores={is_running=1..}] return_tick 5
scoreboard players set @a[scores={is_walking=1..}] return_tick 5
scoreboard players set @a[scores={is_hurt=1..}] return_tick 5
scoreboard players set @a[scores={is_attacking=1..}] return_tick 5
scoreboard players set @a[scores={is_crouching=1..}] return_tick 5

scoreboard players remove @a[scores={return_tick=1..}] return_tick 1
scoreboard players set @a[scores={return_tick=..0}] return_tick 0


tag @a[scores={right_click=1..},nbt={SelectedItem:{tag:{return:1b}}}] add return

tellraw @a[scores={return_tick=1..},tag=return] ["",{"text":"<"},{"text":"Information","bold":true,"color":"red"},{"text":"> "},{"text":"Teleport Cancelled","color":"red"},{"text":"!","color":"white"}]
tag @a[scores={return_tick=1..},tag=return] remove return

scoreboard players add @a[tag=return] return_ritual 1
scoreboard players set @a[tag=!return] return_ritual 0


effect give @a[scores={return_ritual=1..140}] slowness 1 6 true
effect give @a[scores={return_ritual=1..140}] nausea 4 0 true



execute at @a[scores={return_ritual=1}] run summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["return_circle"]}
execute as @e[type=armor_stand,tag=return_circle] at @s unless entity @a[tag=return,distance=..1] run kill @s
execute as @e[type=armor_stand,tag=return_circle] at @s run tp @s ~ ~ ~ ~3 ~


execute at @e[type=armor_stand,tag=return_circle] run function rr:particles/alchemy6


execute as @a[scores={return_ritual=1}] at @s run playsound minecraft:block.portal.trigger ambient @s ~ ~ ~ 1 0.3

execute in minecraft:overworld run tp @a[scores={return_ritual=140..},team=red] 257 103 218
execute in minecraft:overworld run tp @a[scores={return_ritual=140..},team=blue] -66 93 -105

tag @a[scores={return_ritual=140..}] remove return
















#### prevent players from leaving base
#red base
execute if score start start matches ..7400 in minecraft:overworld run fill 253 103 215 253 106 215 barrier
execute if score start start matches ..7400 in minecraft:overworld run fill 254 103 214 254 106 214 barrier
execute if score start start matches ..7400 in minecraft:overworld run fill 253 103 215 253 106 215 air
execute if score start start matches ..7400 in minecraft:overworld run fill 254 103 214 254 106 214 air





#prevent players from leaving bases
execute if score start start matches 6600..7400 in minecraft:overworld run tp @a[team=red,tag=!base] 257 103 218
execute if score start start matches 6600..7400 in minecraft:overworld run tp @a[team=blue,tag=!base] -66 93 -105







#### BOSSBAR DISPLAY

bossbar set minecraft:blue players @a[tag=in_game]
bossbar set minecraft:red players @a[tag=in_game]

scoreboard players add bar_tick bar_tick 1
execute if score bar_tick bar_tick matches 1 run bossbar set minecraft:blue visible true
execute if score bar_tick bar_tick matches 1 run bossbar set minecraft:red visible false
execute if score bar_tick bar_tick matches 60 run bossbar set minecraft:red visible true
execute if score bar_tick bar_tick matches 60 run bossbar set minecraft:blue visible false
execute if score bar_tick bar_tick matches 120 run scoreboard players set bar_tick bar_tick 0 


##### TOWER CAPTURE SYSTEM

execute at @e[team=red] run tag @a[distance=..6,team=blue] add no_capture
execute at @e[team=blue] run tag @a[distance=..6,team=red] add no_capture


execute positioned as @e[type=armor_stand,tag=tower,tag=!red,tag=!blue] run tag @a[distance=..3] add capturing
execute positioned as @e[type=armor_stand,tag=tower,tag=red] run tag @a[distance=..3,team=blue] add capturing
execute positioned as @e[type=armor_stand,tag=tower,tag=blue] run tag @a[distance=..3,team=red] add capturing

execute positioned as @e[type=armor_stand,tag=tower,tag=!red,tag=!blue] run particle dust 1 1 1 1 ~ ~0.2 ~ 1.5 0 1.5 3 1 force
execute positioned as @e[type=armor_stand,tag=tower,tag=red] run particle dust 1 0 0 1 ~ ~0.2 ~ 1.5 0 1.5 3 1 force
execute positioned as @e[type=armor_stand,tag=tower,tag=blue] run particle dust 0 0 1 1 ~ ~0.2 ~ 1.5 0 1.5 3 1 force





execute positioned as @e[type=armor_stand,tag=tower,tag=!red,tag=!blue] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 white_wool replace red_wool
execute positioned as @e[type=armor_stand,tag=tower,tag=!red,tag=!blue] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 white_wool replace blue_wool

execute positioned as @e[type=armor_stand,tag=tower,tag=red] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 red_wool replace white_wool
execute positioned as @e[type=armor_stand,tag=tower,tag=red] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 red_wool replace blue_wool

execute positioned as @e[type=armor_stand,tag=tower,tag=blue] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 blue_wool replace red_wool
execute positioned as @e[type=armor_stand,tag=tower,tag=blue] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 blue_wool replace white_wool






execute positioned as @e[type=armor_stand,tag=tower,tag=!red,tag=!blue] run fill ~5 ~35 ~5 ~-5 ~25 ~-5 white_stained_glass replace red_stained_glass
execute positioned as @e[type=armor_stand,tag=tower,tag=!red,tag=!blue] run fill ~5 ~35 ~5 ~-5 ~25 ~-5 white_stained_glass replace blue_stained_glass

execute positioned as @e[type=armor_stand,tag=tower,tag=red] run fill ~5 ~35 ~5 ~-5 ~25 ~-5 red_stained_glass replace white_stained_glass
execute positioned as @e[type=armor_stand,tag=tower,tag=red] run fill ~5 ~35 ~5 ~-5 ~25 ~-5 red_stained_glass replace blue_stained_glass

execute positioned as @e[type=armor_stand,tag=tower,tag=blue] run fill ~5 ~35 ~5 ~-5 ~25 ~-5 blue_stained_glass replace red_stained_glass
execute positioned as @e[type=armor_stand,tag=tower,tag=blue] run fill ~5 ~35 ~5 ~-5 ~25 ~-5 blue_stained_glass replace white_stained_glass








execute positioned as @e[type=armor_stand,tag=tower,tag=!blue,tag=!red] run scoreboard players add @a[distance=..4,tag=!no_capture] capture 1

execute positioned as @e[type=armor_stand,tag=tower,tag=blue] run scoreboard players add @a[team=red,distance=..4,tag=!no_capture] capture 1
execute positioned as @e[type=armor_stand,tag=tower,tag=red] run scoreboard players add @a[team=blue,distance=..4,tag=!no_capture] capture 1

scoreboard players remove @a[scores={capture=1..},tag=!capturing,tag=!no_capture] capture 5
scoreboard players set @a[scores={capture=..0}] capture 0

execute as @a[scores={capture=1}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 0.00
execute as @a[scores={capture=20}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 0.60
execute as @a[scores={capture=40}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 0.70
execute as @a[scores={capture=60}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 0.80
execute as @a[scores={capture=80}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 0.90
execute as @a[scores={capture=100}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 1.00
execute as @a[scores={capture=120}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 1.20
execute as @a[scores={capture=140}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 1.40
execute as @a[scores={capture=160}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 1.60
execute as @a[scores={capture=180}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 1.80
execute as @a[scores={capture=200}] at @s run playsound block.note_block.bit ambient @a[distance=..8] ~ ~ ~ 1 2.00
execute as @a[scores={capture=200}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..20] ~ ~ ~ 1 2.00
execute as @a[scores={capture=200}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..20] ~ ~ ~ 1 1.00
execute as @a[scores={capture=200}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a[distance=..20] ~ ~ ~ 1 1.50
execute as @a[scores={capture=200}] at @s run particle flash ~ ~ ~ 5 5 5 0 50 force



title @a[scores={capture=1..},tag=!no_capture] times 0 40 20
title @a[scores={capture=1},tag=!no_capture] title {"text":"Capturing.","bold":true,"color":"#00B230"}
title @a[scores={capture=20},tag=!no_capture] title {"text":"Capturing..","bold":true,"color":"#00B230"}
title @a[scores={capture=40},tag=!no_capture] title {"text":"Capturing...","bold":true,"color":"#00B230"}
title @a[scores={capture=60},tag=!no_capture] title {"text":"Capturing.","bold":true,"color":"#00B230"}
title @a[scores={capture=80},tag=!no_capture] title {"text":"Capturing..","bold":true,"color":"#00B230"}
title @a[scores={capture=100},tag=!no_capture] title {"text":"Capturing...","bold":true,"color":"#00B230"}
title @a[scores={capture=120},tag=!no_capture] title {"text":"Capturing.","bold":true,"color":"#00B230"}
title @a[scores={capture=140},tag=!no_capture] title {"text":"Capturing..","bold":true,"color":"#00B230"}
title @a[scores={capture=160},tag=!no_capture] title {"text":"Capturing...","bold":true,"color":"#00B230"}
title @a[scores={capture=180},tag=!no_capture] title {"text":"Capturing.","bold":true,"color":"#00B230"}
title @a[scores={capture=200},tag=!no_capture] title {"text":"Tower Captured!","bold":true,"color":"#00B230"}



scoreboard players add @a[scores={capture=1}] capture 1
scoreboard players add @a[scores={capture=20}] capture 1
scoreboard players add @a[scores={capture=40}] capture 1
scoreboard players add @a[scores={capture=60}] capture 1
scoreboard players add @a[scores={capture=80}] capture 1
scoreboard players add @a[scores={capture=100}] capture 1
scoreboard players add @a[scores={capture=120}] capture 1
scoreboard players add @a[scores={capture=140}] capture 1
scoreboard players add @a[scores={capture=160}] capture 1
scoreboard players add @a[scores={capture=180}] capture 1


execute as @a[scores={capture=200..},team=blue] at @s run tag @e[distance=..8,type=armor_stand,tag=tower] remove red
execute as @a[scores={capture=200..},team=blue] at @s run tag @e[distance=..8,type=armor_stand,tag=tower] add blue

execute as @a[scores={capture=200..},team=red] at @s run tag @e[distance=..8,type=armor_stand,tag=tower] remove blue
execute as @a[scores={capture=200..},team=red] at @s run tag @e[distance=..8,type=armor_stand,tag=tower] add red

#EXP
scoreboard players add @a[scores={capture=200..}] add_exp 60
scoreboard players add @a[scores={capture=200..}] add_money 50


execute as @a[scores={capture=200..}] run scoreboard players set @s capture 0






###### TELEPORT PLAYERS TO CUSTOMIZE ROOM


execute if score start start matches 1200..6600 run tag @a[tag=in_game] add customize1
execute in dim:interstice as @a[tag=customize1,tag=!customized] run tp @s -35 101 0
tellraw @a[tag=customize1,tag=!customized] ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_green"},{"text":"> "},{"text":"Customize your character (You have 6 level-ups available)","color":"dark_green"},{"text":"!","color":"white"}]
scoreboard players set @a[tag=customize1,tag=!customized] lvl_up 6
scoreboard players set @a[tag=customize1,tag=!customized] money 100


tag @a[tag=customize1] add customized
tag @a remove customize1
execute if score start start matches 6601.. run tag @a remove customized


###### TELEPORT PLAYERS TO BASES AND SELECT TEAMS

execute if score start start matches 6500..6599 as @r[team=!red,team=!blue,tag=in_game] run team join blue @s
execute if score start start matches 6500..6599 as @r[team=!red,team=!blue,tag=in_game] run team join red @s

execute if score start start matches 6599 in minecraft:overworld run tp @a[team=red] 257 103 218
execute if score start start matches 6599 in minecraft:overworld run tp @a[team=blue] -66 93 -105
execute if score start start matches 6599 in minecraft:overworld run spawnpoint @a[team=red] 257 103 218
execute if score start start matches 6599 in minecraft:overworld run spawnpoint @a[team=blue] -66 93 -105








###### BOSSBAR SCORES (CAPTURE POINTS)

execute store result bossbar minecraft:blue value run scoreboard players get blue scores
execute store result bossbar minecraft:red value run scoreboard players get red scores

execute if score start start matches 1201 run scoreboard players set red scores 25000
execute if score start start matches 1201 run scoreboard players set blue scores 25000

execute as @a[team=red,scores={death1tick=1..}] run scoreboard players remove red scores 500
execute as @a[team=blue,scores={death1tick=1..}] run scoreboard players remove blue scores 500

execute as @e[type=armor_stand,tag=tower,tag=red] run scoreboard players remove blue scores 1
execute as @e[type=armor_stand,tag=tower,tag=blue] run scoreboard players remove red scores 1


###### GAME END

execute if score red scores matches ..0 run scoreboard players add towers_game_end towers_game_end 1
execute if score blue scores matches ..0 run scoreboard players add towers_game_end towers_game_end 1

execute if score red scores matches ..0 if score towers_game_end towers_game_end matches 1 run title @a[tag=in_game] title {"text":"Blue Team won!","bold":true,"color":"dark_blue"}
execute if score blue scores matches ..0 if score towers_game_end towers_game_end matches 1 run title @a[tag=in_game] title {"text":"Red Team won!","bold":true,"color":"dark_red"}

execute if score red scores matches ..0 if score towers_game_end towers_game_end matches 1 as @a[tag=in_game] at @s run playsound minecraft:entity.ender_dragon.death ambient @s ~ ~ ~ 1 1.50
execute if score blue scores matches ..0 if score towers_game_end towers_game_end matches 1 as @a[tag=in_game] at @s run playsound minecraft:entity.ender_dragon.death ambient @s ~ ~ ~ 1 1.50

execute if score red scores matches ..0 if score towers_game_end towers_game_end matches 1 run scoreboard players add @a[tag=in_game,team=blue] wins 1
execute if score blue scores matches ..0 if score towers_game_end towers_game_end matches 1 run scoreboard players add @a[tag=in_game,team=red] wins 1

execute if score red scores matches ..0 if score towers_game_end towers_game_end matches 1 as @a[tag=in_game] run function rr:reset
execute if score blue scores matches ..0 if score towers_game_end towers_game_end matches 1 as @a[tag=in_game] run function rr:reset

execute if score red scores matches ..0 if score towers_game_end towers_game_end matches 1 run team join neutral @a[tag=in_game]
execute if score blue scores matches ..0 if score towers_game_end towers_game_end matches 1 run team join neutral @a[tag=in_game]

execute if score red scores matches ..0 if score towers_game_end towers_game_end matches 150 in dim:interstice as @a[tag=in_game] run tp @s 0 101 0
execute if score blue scores matches ..0 if score towers_game_end towers_game_end matches 150 in dim:interstice as @a[tag=in_game] run tp @s 0 101 0
execute if score red scores matches ..0 if score towers_game_end towers_game_end matches 150 in dim:interstice as @a[tag=in_game] run spawnpoint @s 0 101 0
execute if score blue scores matches ..0 if score towers_game_end towers_game_end matches 150 in dim:interstice as @a[tag=in_game] run spawnpoint @s 0 101 0

execute if score red scores matches ..0 if score towers_game_end towers_game_end matches 150 run function rr:reset_gamemode
execute if score blue scores matches ..0 if score towers_game_end towers_game_end matches 150 run function rr:reset_gamemode







# EXP AND MONEY FOR KILLS

scoreboard players add @a[scores={killmob1tick=1..}] add_exp 5

scoreboard players add @a[scores={killmob1tick=1..}] add_money 3

execute at @a[scores={death1tick=1..},team=blue] run scoreboard players add @a[team=red,tag=in_game,distance=..7] add_exp 80
execute at @a[scores={death1tick=1..},team=red] run scoreboard players add @a[team=blue,tag=in_game,distance=..7] add_exp 80

execute at @a[scores={death1tick=1..},team=blue] run scoreboard players add @a[team=red,tag=in_game,distance=..7] add_money 30
execute at @a[scores={death1tick=1..},team=red] run scoreboard players add @a[team=blue,tag=in_game,distance=..7] add_money 30










# PASSIVE MONEY INCOME

execute as @e[type=armor_stand,tag=tower,tag=red] run scoreboard players add @a[team=red] money_tick 1
execute as @e[type=armor_stand,tag=tower,tag=blue] run scoreboard players add @a[team=blue] money_tick 1

scoreboard players add @a[scores={money_tick=300..}] money 1
scoreboard players set @a[scores={money_tick=300..}] money_tick 0










