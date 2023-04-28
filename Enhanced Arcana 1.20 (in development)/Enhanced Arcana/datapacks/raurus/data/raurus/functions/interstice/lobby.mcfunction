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
