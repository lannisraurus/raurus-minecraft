#### ENABLE WARPING

scoreboard players enable @a warp






############### MOVE SCORE SET ################
scoreboard players add @a[scores={walk=1..}] move 1
scoreboard players add @a[scores={run=1..}] move 1
scoreboard players add @a[scores={jump=1..}] move 1
scoreboard players add @a[scores={hurt=1..}] move 1


############### RETURN TO LOBBY SETTINGS ################

tellraw @a[nbt={Dimension:"raurus:abyss"},scores={warp=1}] {"text":"- Cannot warp here -","color":"red"}
scoreboard players set @a[nbt={Dimension:"raurus:abyss"}] warp 0

tag @a[scores={warp=1}] add lobby_tp


scoreboard players add @a[tag=lobby_tp] teleport_time1 1
tellraw @a[scores={move=1..},tag=lobby_tp] {"text":"Your teleport has been cancelled.","color":"#8A0081"}
scoreboard players set @a[scores={move=1..}] teleport_time1 0
tag @a[scores={move=1..}] remove lobby_tp

execute positioned as @a[tag=lobby_tp,tag=!ghost,nbt={Dimension:"minecraft:overworld"}] in minecraft:overworld run function raurus:particles/alchemy4
execute positioned as @a[tag=lobby_tp,tag=!ghost,nbt={Dimension:"minecraft:the_nether"}] in minecraft:the_nether run function raurus:particles/alchemy4
execute positioned as @a[tag=lobby_tp,tag=!ghost,nbt={Dimension:"raurus:abyss"}] in raurus:abyss run function raurus:particles/alchemy4
execute positioned as @a[tag=lobby_tp,tag=!ghost,nbt={Dimension:"raurus:soul_lake"}] in raurus:soul_lake run function raurus:particles/alchemy4
execute positioned as @a[tag=lobby_tp,tag=!ghost,nbt={Dimension:"raurus:interstice"}] in raurus:interstice run function raurus:particles/alchemy3

effect give @a[scores={teleport_time1=1}] blindness 8 0 true
effect give @a[scores={teleport_time1=1}] slowness 8 2 true
effect give @a[scores={teleport_time1=1}] nausea 10 0 true
execute as @a[scores={teleport_time1=1}] at @s run playsound minecraft:block.portal.trigger master @s ~ ~ ~ 0.5 0.6



tag @a[scores={teleport_time1=140..},nbt=!{Dimension:"raurus:interstice"}] add warp_lobby

execute as @a[tag=warp_lobby,nbt={Dimension:"minecraft:overworld"}] at @s run summon marker ~ ~ ~ {Tags:["portal"]}
execute as @a[tag=warp_lobby,nbt={Dimension:"minecraft:the_nether"}] at @s run summon marker ~ ~ ~ {Tags:["portal"]}
execute as @a[tag=warp_lobby] at @s run scoreboard players operation @e[tag=portal,distance=..3,limit=1,sort=nearest] player_id = @s player_id
execute at @a[tag=warp_lobby] run forceload add ~ ~

execute in raurus:interstice run tp @a[tag=warp_lobby] 3 74 8
execute as @a[tag=warp_lobby] at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.5 0.6
tag @a[tag=warp_lobby] remove lobby_tp
scoreboard players set @a[tag=warp_lobby] teleport_time1 0
tag @a remove warp_lobby


execute in minecraft:overworld run tag @a[scores={teleport_time1=140..},nbt={Dimension:"raurus:interstice"}] add warp_overworld
execute as @a[tag=warp_overworld] at @s in minecraft:overworld run tp @s ~ 200 ~
execute as @a[tag=warp_overworld] at @s in minecraft:overworld run spreadplayers ~ ~ 0 1 false @s

execute as @e[tag=portal,type=marker] run function raurus:do_tp
execute at @a[tag=warp_overworld] run kill @e[distance=..2,tag=portal,type=marker]
execute at @a[tag=warp_overworld] run forceload remove ~ ~

execute as @a[tag=warp_overworld] at @s run playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.5 0.6
tag @a[tag=warp_overworld] remove lobby_tp
scoreboard players set @a[tag=warp_overworld] teleport_time1 0
tag @a remove warp_overworld




