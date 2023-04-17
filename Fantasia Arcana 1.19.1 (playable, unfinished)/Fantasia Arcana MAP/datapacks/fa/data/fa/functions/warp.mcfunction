############### OVERWORLD WARP ################
execute as @e[tag=2,type=armor_stand] at @s run tag @a[distance=..1] add tp_overworld
execute in minecraft:overworld run tp @a[tag=tp_overworld] 69 80 22
execute as @a[tag=tp_overworld] at @s run spreadplayers ~ ~ 10 400 false @s
tag @a[tag=tp_overworld] remove tp_overworld


############### MOVE SCORE SET ################
scoreboard players add @a[scores={walk=1..}] move 1
scoreboard players add @a[scores={run=1..}] move 1
scoreboard players add @a[scores={jump=1..}] move 1
scoreboard players add @a[scores={hurt=1..}] move 1






############### RETURN TO LOBBY SETTINGS ################

tag @a[tag=!purgatory,scores={warp=1}] add lobby_tp
tag @a[tag=!purgatory,scores={use_artifact=1..},nbt={SelectedItem:{tag:{lobby_return:1b}}}] add lobby_tp
execute at @a[tag=!purgatory,scores={use_artifact=1..},nbt={SelectedItem:{tag:{lobby_return:1b}}}] run particle minecraft:witch ~ ~ ~ 1 1 1 0 10 force


scoreboard players add @a[tag=lobby_tp] teleport_time1 1
tellraw @a[scores={move=1..},tag=lobby_tp] {"text":"Your teleport has been cancelled.","color":"#8A0081"}
scoreboard players set @a[scores={move=1..}] teleport_time1 0
tag @a[scores={move=1..}] remove lobby_tp


effect give @a[scores={teleport_time1=1}] blindness 8 0 true
effect give @a[scores={teleport_time1=1}] slowness 8 2 true
effect give @a[scores={teleport_time1=1}] nausea 10 0 true
execute as @a[scores={teleport_time1=1}] at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.5 0.6

execute in minecraft:fa/void2 run tp @a[scores={teleport_time1=140..}] 0 101 0

execute as @a[scores={teleport_time1=140..}] at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.5 0.6

tag @a[scores={teleport_time1=140..}] remove lobby_tp
scoreboard players set @a[scores={teleport_time1=140..}] teleport_time1 0





############### TELEPORT HOME ################
execute at @e[tag=3,type=armor_stand] run tag @a[distance=..1] add tp_home
scoreboard players add @a[tag=tp_home] tp_home 1


kill @a[tag=tp_home,scores={tp_home=10..}]


tag @a[tag=tp_home,scores={tp_home=14..}] add remove_tp_home
tag @a[tag=remove_tp_home] remove tp_home
scoreboard players set @a[tag=remove_tp_home] tp_home 0
tag @a[tag=remove_tp_home] remove remove_tp_home











############### NETHER WARP ################
execute at @e[tag=4,type=armor_stand] run tag @a[distance=..1] add tp_nether
execute in minecraft:the_nether run tp @a[tag=tp_nether] 4 100 -3
tag @a[tag=tp_nether] remove tp_nether









############### ABYSS WARP ################
execute at @e[tag=7,type=armor_stand] run tag @a[distance=..1] add tp_abyss
execute in minecraft:fa/abyss run tp @a[tag=tp_abyss] 0 1 0
execute as @a[tag=tp_abyss] at @s run spreadplayers ~ ~ 10 500 false @s
execute as @a[tag=tp_abyss] at @s run tp @s ~ 1 ~
tag @a[tag=tp_abyss] remove tp_abyss



