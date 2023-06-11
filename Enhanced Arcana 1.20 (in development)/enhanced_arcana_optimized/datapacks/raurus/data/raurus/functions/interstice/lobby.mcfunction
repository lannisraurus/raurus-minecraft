execute as @a[tag=!in_interstice,nbt={Dimension:"raurus:interstice"}] run title @s title {"text":"- The Interstice -","color":"gold"}
tag @a[nbt=!{Dimension:"raurus:interstice"}] remove in_interstice
tag @a[nbt={Dimension:"raurus:interstice"}] add in_interstice

gamemode adventure @a[gamemode=survival,nbt={Dimension:"raurus:interstice"}]

execute as @a[nbt={Dimension:"raurus:interstice"}] at @s run summon marker ~ 62 ~ {Tags:["lobby_tp_fall"]}
execute as @e[tag=lobby_tp_fall] at @s run tp @a[distance=..1,gamemode=adventure] 3 74 8
kill @e[tag=lobby_tp_fall]

execute in raurus:interstice run kill @e[type=tnt,distance=0..]
execute in raurus:interstice run kill @e[type=creeper,distance=0..]
execute in raurus:interstice run kill @e[type=fireball,distance=0..]
execute in raurus:interstice run kill @e[type=tnt_minecart,distance=0..]

forceload add 18 36 -67 -29
forceload add -48 24

effect give @a[nbt={Dimension:"raurus:interstice"}] resistance 1 255 true
effect give @a[nbt={Dimension:"raurus:interstice"}] weakness 1 255 true



# kill boats
execute in raurus:interstice run kill @e[type=boat,distance=0..,tag=!no_kill]





# portal

execute if score interstice time matches 1 in raurus:interstice positioned -54 77 4 run playsound minecraft:block.beacon.ambient master @a[distance=..10] ~ ~ ~ 1 2
execute if score interstice time matches 1 in raurus:interstice positioned -54 77 4 run playsound minecraft:block.beacon.power_select master @a[distance=..10] ~ ~ ~ 1 0
execute in raurus:interstice positioned -54 78.8 4 run playsound minecraft:ambient.warped_forest.mood master @a[distance=..10] ~ ~ ~ 0.5 0
execute in raurus:interstice positioned -54 78.8 4 run playsound minecraft:block.beacon.ambient master @a[distance=..10] ~ ~ ~ 0.8 0
execute in raurus:interstice positioned -54 78.8 4 run playsound minecraft:block.beacon.ambient master @a[distance=..10] ~ ~ ~ 0.8 1
execute in raurus:interstice positioned -54 78.8 4 run particle dust 0 0 0 2.6 ~ ~ ~ 0 0 0 0 1 force
execute in raurus:interstice positioned -54 78.8 4 run particle dust 1 1 1 0.5 ~ ~ ~ 0.2 0.3 0.2 0 3 force
execute if score interstice time matches 1 in raurus:interstice positioned -54 77 4 run particle enchant ~ ~ ~ 2 3 2 0.5 10 force
execute if score interstice time matches 1 in raurus:interstice positioned -54 77 4 run particle end_rod ~ ~ ~ 0 50 0 0 10 force








# arcana tower safe zone 

execute in raurus:interstice positioned 25 74 84 run particle dust 0 0.5 1 1.3 ~ ~ ~ 4 10 4 0 3 force
execute in raurus:interstice positioned 25 74 84 run particle glow ~ ~ ~ 4 10 4 0 2 force
execute in raurus:interstice positioned 25 74 84 as @a[distance=..15] run scoreboard players add @s mana_tick 200

execute in raurus:interstice positioned 25 74 84 at @e[type=ender_pearl,distance=..35] run particle flash ~ ~ ~ 0 0 0 0 10 force
execute in raurus:interstice positioned 25 74 84 run kill @e[type=ender_pearl,distance=..35]

execute in raurus:interstice positioned 25 74 84 at @e[type=arrow,distance=..35] run particle flash ~ ~ ~ 0 0 0 0 10 force
execute in raurus:interstice positioned 25 74 84 run tp @e[type=arrow,distance=..35] 3 74 8
execute in raurus:interstice positioned 25 84 84 at @e[type=arrow,distance=..35] run particle flash ~ ~ ~ 0 0 0 0 10 force
execute in raurus:interstice positioned 25 84 84 run tp @e[type=arrow,distance=..35] 3 74 8
execute in raurus:interstice positioned 25 94 84 at @e[type=arrow,distance=..35] run particle flash ~ ~ ~ 0 0 0 0 10 force
execute in raurus:interstice positioned 25 94 84 run tp @e[type=arrow,distance=..35] 3 74 8
execute in raurus:interstice positioned 25 104 84 at @e[type=arrow,distance=..35] run particle flash ~ ~ ~ 0 0 0 0 10 force
execute in raurus:interstice positioned 25 104 84 run tp @e[type=arrow,distance=..35] 3 74 8









# splash screens
execute in raurus:interstice positioned 16 64 -65 run title @a[distance=..10,tag=!settlers_ruins] title {"text":"Settlers' Ruins","color":"dark_green"}
execute in raurus:interstice positioned 16 64 -65 run tag @a[distance=..10] add settlers_ruins
execute in raurus:interstice positioned 16 64 -65 run tag @a[distance=10..] remove settlers_ruins

execute in raurus:interstice positioned -35 82 20 run title @a[distance=..17,tag=!raurus_castle] title {"text":"Raurus's Castle","color":"gold"}
execute in raurus:interstice positioned -35 82 20 run tag @a[distance=..17] add raurus_castle
execute in raurus:interstice positioned -35 82 20 run tag @a[distance=17..] remove raurus_castle

execute in raurus:interstice positioned -42 64 21 run title @a[distance=..8,tag=!blood_cave] title {"text":"Blood Cave","color":"dark_red"}
execute in raurus:interstice positioned -42 64 21 run tag @a[distance=..8] add blood_cave
execute in raurus:interstice positioned -42 64 21 run tag @a[distance=8..] remove blood_cave

execute in raurus:interstice positioned -37 76 23 run title @a[distance=..6,tag=!library] title {"text":"Library","color":"blue"}
execute in raurus:interstice positioned -37 76 23 run tag @a[distance=..6] add library
execute in raurus:interstice positioned -37 76 23 run tag @a[distance=6..] remove library

execute in raurus:interstice positioned -27 80 -6 run title @a[distance=..3,tag=!obelisk] title {"text":"Obelisk of Worth","color":"red"}
execute in raurus:interstice positioned -27 80 -6 run tag @a[distance=..3] add obelisk
execute in raurus:interstice positioned -27 80 -6 run tag @a[distance=3..] remove obelisk

execute in raurus:interstice positioned -54 78 4 run title @a[distance=..5,tag=!interstice_altar] title {"text":"Interstice Altar","color":"gray"}
execute in raurus:interstice positioned -54 78 4 run tag @a[distance=..5] add interstice_altar
execute in raurus:interstice positioned -54 78 4 run tag @a[distance=5..] remove interstice_altar

execute in raurus:interstice positioned -8 78 -16 run title @a[distance=..7,tag=!graves] title {"text":"Graveyard","color":"gray"}
execute in raurus:interstice positioned -8 78 -16 run tag @a[distance=..7] add graves
execute in raurus:interstice positioned -8 78 -16 run tag @a[distance=7..] remove graves

execute in raurus:interstice positioned -13 64 -22 run title @a[distance=..7,tag=!green_cave] title {"text":"Overgrown Cave","color":"green"}
execute in raurus:interstice positioned -13 64 -22 run tag @a[distance=..7] add green_cave
execute in raurus:interstice positioned -13 64 -22 run tag @a[distance=7..] remove green_cave

execute in raurus:interstice positioned -2 64 -22 run title @a[distance=..3,tag=!green_cave2] title {"text":"Jerry's Lab","color":"green"}
execute in raurus:interstice positioned -2 64 -22 run tag @a[distance=..3] add green_cave2
execute in raurus:interstice positioned -2 64 -22 run tag @a[distance=3..] remove green_cave2

execute in raurus:interstice positioned -50 64 25 run title @a[distance=..5,tag=!hidden_port] title {"text":"Hidden port","color":"white"}
execute in raurus:interstice positioned -50 64 25 run tag @a[distance=..5] add hidden_port
execute in raurus:interstice positioned -50 64 25 run tag @a[distance=5..] remove hidden_port

execute in raurus:interstice positioned 5 64 -9 run title @a[distance=..5,tag=!hidden1] title {"text":"???","color":"aqua"}
execute in raurus:interstice positioned 5 64 -9 run tag @a[distance=..5] add hidden1
execute in raurus:interstice positioned 5 64 -9 run tag @a[distance=5..] remove hidden1

execute in raurus:interstice positioned -46 66 -20 run title @a[distance=..5,tag=!hidden2] title {"text":"???","color":"red"}
execute in raurus:interstice positioned -46 66 -20 run tag @a[distance=..5] add hidden2
execute in raurus:interstice positioned -46 66 -20 run tag @a[distance=5..] remove hidden2

execute in raurus:interstice positioned 75 67 0 run title @a[distance=..5,tag=!hidden3] title {"text":"???","color":"yellow"}
execute in raurus:interstice positioned 75 67 0 run tag @a[distance=..5] add hidden3
execute in raurus:interstice positioned 75 67 0 run tag @a[distance=5..] remove hidden3

execute in raurus:interstice positioned 25 76 84 run title @a[distance=..20,tag=!hidden4] title {"text":"Arcana Tower","color":"blue"}
execute in raurus:interstice positioned 25 76 84 run tag @a[distance=..20] add hidden4
execute in raurus:interstice positioned 25 76 84 run tag @a[distance=20..] remove hidden4

execute in raurus:interstice positioned -44 84 24 run title @a[distance=..6,tag=!throne_room] title {"text":"Throne Room","color":"aqua"}
execute in raurus:interstice positioned -44 84 24 run tag @a[distance=..6] add throne_room
execute in raurus:interstice positioned -44 84 24 run tag @a[distance=6..] remove throne_room




