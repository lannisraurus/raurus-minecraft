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






# triggar warp info

execute in raurus:interstice positioned -31 82 2 unless entity @e[tag=warp_info] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["warp_info"],text:'{"text":"To travel to the overworld and back:\\n/trigger warp set 1","color":"blue"}'}



# soul soul_lake

execute in raurus:interstice positioned -48 84.5 24.999 unless entity @e[tag=soul_lake_go] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["soul_lake_go"],text:'{"text":"Right Click - Soul Lake","color":"#00FFB3"}'}
execute in raurus:interstice positioned -48 84 24.999 unless entity @e[tag=soul_lake_go_interaction] run summon interaction ~ ~ ~ {Tags:["soul_lake_go_interaction"]}
execute as @e[tag=soul_lake_go_interaction] on target in raurus:soul_lake run tp @s 9890 57 10038
execute as @e[tag=soul_lake_go_interaction] at @s on target run kill @e[tag=soul_lake_go_interaction]