
execute as @e[tag=tower_1,tag=red] run scoreboard players add RedTeam points 1
execute as @e[tag=tower_1,tag=blue] run scoreboard players add BlueTeam points 1

execute as @a[scores={cap_tower_1=1..}] at @s unless entity @e[tag=tower_1,distance=..4] run scoreboard players remove @s cap_tower_1 3
execute at @e[tag=tower_1] if entity @e[distance=..4,team=1] run scoreboard players remove @a[distance=..4,team=2] cap_tower_1 1
execute at @e[tag=tower_1] if entity @e[distance=..4,team=2] run scoreboard players remove @a[distance=..4,team=1] cap_tower_1 1
execute as @e[tag=tower_1] at @s if entity @e[distance=..4,team=1,scores={cap_tower_1=300..}]
title @a[scores={cap_tower_1=1..}] times 0 20 20

title @a[scores={cap_tower_1=20..40}] title {"text":"Capturing.","color":"green"}
title @a[scores={cap_tower_1=40..60}] title {"text":"Capturing..","color":"green"}
title @a[scores={cap_tower_1=60..80}] title {"text":"Capturing...","color":"green"}
title @a[scores={cap_tower_1=80..100}] title {"text":"Capturing.","color":"green"}
title @a[scores={cap_tower_1=100..120}] title {"text":"Capturing..","color":"green"}

title @a[scores={cap_tower_1=120..140}] title {"text":"Capturing.","color":"yellow"}
title @a[scores={cap_tower_1=140..160}] title {"text":"Capturing..","color":"yellow"}
title @a[scores={cap_tower_1=160..180}] title {"text":"Capturing...","color":"yellow"}
title @a[scores={cap_tower_1=180..200}] title {"text":"Capturing.","color":"yellow"}
title @a[scores={cap_tower_1=200..220}] title {"text":"Capturing..","color":"yellow"}

title @a[scores={cap_tower_1=220..240},team=1] title {"text":"Capturing.","color":"dark_red"}
title @a[scores={cap_tower_1=240..260},team=1] title {"text":"Capturing..","color":"dark_red"}
title @a[scores={cap_tower_1=260..280},team=1] title {"text":"Capturing...","color":"dark_red"}
title @a[scores={cap_tower_1=280..300},team=1] title {"text":"Capturing.","color":"dark_red"}
title @a[scores={cap_tower_1=300},team=1] title {"text":"Captured!","color":"dark_red"}

title @a[scores={cap_tower_1=220..240},team=2] title {"text":"Capturing.","color":"dark_blue"}
title @a[scores={cap_tower_1=240..260},team=2] title {"text":"Capturing..","color":"dark_blue"}
title @a[scores={cap_tower_1=260..280},team=2] title {"text":"Capturing...","color":"dark_blue"}
title @a[scores={cap_tower_1=280..300},team=2] title {"text":"Capturing.","color":"dark_blue"}
title @a[scores={cap_tower_1=300},team=2] title {"text":"Captured!","color":"dark_blue"}

execute at @e[tag=tower_1] if entity @e[distance=..4,team=1] run title @a[distance=..4,team=2] title {"text":"Contested!","color":"dark_blue"}
execute at @e[tag=tower_1] if entity @e[distance=..4,team=2] run title @a[distance=..4,team=1] title {"text":"Contested!","color":"dark_red"}

execute at @a[scores={cap_tower_1=20}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 0.50
execute at @a[scores={cap_tower_1=40}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 0.60
execute at @a[scores={cap_tower_1=60}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 0.70
execute at @a[scores={cap_tower_1=80}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 0.80
execute at @a[scores={cap_tower_1=100}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 0.90

execute at @a[scores={cap_tower_1=120}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.00
execute at @a[scores={cap_tower_1=140}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.10
execute at @a[scores={cap_tower_1=160}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.20
execute at @a[scores={cap_tower_1=180}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.30
execute at @a[scores={cap_tower_1=200}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.40

execute at @a[scores={cap_tower_1=220}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.50
execute at @a[scores={cap_tower_1=240}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.60
execute at @a[scores={cap_tower_1=260}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.70
execute at @a[scores={cap_tower_1=280}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 1.80
execute at @a[scores={cap_tower_1=300}] run playsound minecraft:block.note_block.pling voice @a[distance=..8] ~ ~ ~ 1 2.00


execute at @a[scores={cap_tower_1=300},team=2] as @e[tag=tower_1,tag=red,distance=..8] run tag @s remove red
execute at @a[scores={cap_tower_1=300},team=1] as @e[tag=tower_1,tag=blue,distance=..8] run tag @s remove blue
execute at @a[scores={cap_tower_1=300},team=1] as @e[tag=tower_1,distance=..8] run tag @s add red
execute at @a[scores={cap_tower_1=300},team=2] as @e[tag=tower_1,distance=..8] run tag @s add blue



execute at @a[scores={cap_tower_1=300}] as @e[tag=tower_1,tag=neutral,distance=..8] run tag @s remove neutral
scoreboard players set @a[scores={cap_tower_1=300}] cap_tower_1 0

execute at @e[tag=tower_1,tag=red] run particle dust 1 0 0 1 ~ ~ ~ 2 0 2 0 10 force
execute at @e[tag=tower_1,tag=blue] run particle dust 0 0 1 1 ~ ~ ~ 2 0 2 0 10 force
execute at @e[tag=tower_1,tag=neutral] run particle dust 1 0 1 1 ~ ~ ~ 2 0 2 0 10 force

execute at @e[tag=tower_1,tag=neutral] run scoreboard players add @a[distance=..4,scores={cap_tower_1=..320}] cap_tower_1 1
execute at @e[tag=tower_1,tag=red] run scoreboard players add @a[distance=..4,team=2] cap_tower_1 1
execute at @e[tag=tower_1,tag=blue] run scoreboard players add @a[distance=..4,team=1] cap_tower_1 1




scoreboard players add start start 1

execute if score start start matches 200 run tellraw @a {"text":"The game will start in 2 minutes..","color":"dark_green","bold":"true","underlined":"true"}
execute if score start start matches 800 run tellraw @a {"text":"The game will start in 1m30s..","color":"green","bold":"true","underlined":"true"}
execute if score start start matches 1400 run tellraw @a {"text":"The game will start in 1 minute","color":"yellow","bold":"true","underlined":"true"}
execute if score start start matches 2000 run tellraw @a {"text":"The game will start in 30 seconds","color":"gold","bold":"true","underlined":"true"}
execute if score start start matches 2400 run tellraw @a {"text":"The game will start in 10 seconds","color":"red","bold":"true"}
execute if score start start matches 2420 run tellraw @a {"text":"The game will start in 9 seconds","color":"red","bold":"true"}
execute if score start start matches 2440 run tellraw @a {"text":"The game will start in 8 seconds","color":"red","bold":"true"}
execute if score start start matches 2460 run tellraw @a {"text":"The game will start in 7 seconds","color":"red","bold":"true"}
execute if score start start matches 2480 run tellraw @a {"text":"The game will start in 6 seconds","color":"red","bold":"true"}
execute if score start start matches 2500 run tellraw @a {"text":"The game will start in 5 seconds","color":"red","bold":"true"}
execute if score start start matches 2520 run tellraw @a {"text":"The game will start in 4 seconds","color":"red","bold":"true"}
execute if score start start matches 2540 run tellraw @a {"text":"The game will start in 3 seconds","color":"red","bold":"true"}
execute if score start start matches 2560 run tellraw @a {"text":"The game will start in 2 seconds","color":"red","bold":"true"}
execute if score start start matches 2580 run tellraw @a {"text":"The game will start in 1 seconds","color":"red","bold":"true"}
execute if score start start matches 2600 run tellraw @a {"text":"START!","color":"red","bold":"true","underlined":"true"}

execute if score start start matches 1400 at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 0.00
execute if score start start matches 1400 at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 1.00

execute if score start start matches 2000 at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 2.00
execute if score start start matches 2000 at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 1 1.00

execute if score start start matches 2400 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.00
execute if score start start matches 2420 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.50
execute if score start start matches 2440 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.00
execute if score start start matches 2460 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.50
execute if score start start matches 2480 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.00
execute if score start start matches 2500 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.50
execute if score start start matches 2520 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.00
execute if score start start matches 2540 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.50
execute if score start start matches 2560 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.00
execute if score start start matches 2580 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 10 1.50

execute if score start start matches 2400 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2420 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2440 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2460 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2480 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2500 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2520 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2540 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2560 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50
execute if score start start matches 2580 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 100 0.50

execute if score start start matches 2600 at @a run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 1000 0.00
execute if score start start matches 2600 at @a run playsound minecraft:block.note_block.guitar voice @a ~ ~ ~ 0.5 2.00
execute if score start start matches 2600 at @a run playsound minecraft:block.note_block.bit voice @a ~ ~ ~ 0.5 1.00
execute if score start start matches 2600 at @a run playsound minecraft:entity.horse.saddle voice @a ~ ~ ~ 0.3 0.00


#actual gameplay important stuff

execute if score start start matches 2000..2600 run team join 1 @r[tag=play,team=!1,team=!2]
execute if score start start matches 2000..2600 run team join 2 @r[tag=play,team=!1,team=!2]

execute if score start start matches 2000..2600 run tp @a[tag=play,team=1,tag=!in_map_1] -498 88 -283
execute if score start start matches 2000..2600 run spawnpoint @a[tag=play,team=1,tag=!in_map_1] -498 88 -283
execute if score start start matches 2000..2600 run tp @a[tag=play,team=2,tag=!in_map_1] -103 98 -301
execute if score start start matches 2000..2600 run spawnpoint @a[tag=play,team=2,tag=!in_map_1] -103 98 -301
















execute if score BlueTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 2.00
execute if score RedTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 2.00
execute if score BlueTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 1.00
execute if score RedTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 1.00
execute if score BlueTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 0.00
execute if score RedTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 0.00
execute if score BlueTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 1.50
execute if score RedTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 1.50
execute if score BlueTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 0.50
execute if score RedTeam points >= MaxPoints points at @a run playsound minecraft:entity.player.levelup voice @a ~ ~ ~ 100 0.50


execute if score RedTeam points >= MaxPoints points at @a run title @a times 20 60 20
execute if score BlueTeam points >= MaxPoints points at @a run title @a times 20 60 20
execute if score RedTeam points >= MaxPoints points at @a run title @a subtitle {"text":"(Yikes Blue Team...)","color":"red"}
execute if score BlueTeam points >= MaxPoints points at @a run title @a subtitle {"text":"(Yikes Red Team...)","color":"aqua"}
execute if score RedTeam points >= MaxPoints points at @a run title @a title {"text":"Red Team has won!","bold":true,"underlined":true,"color":"dark_red"}
execute if score BlueTeam points >= MaxPoints points at @a run title @a title {"text":"Blue Team has won!","bold":true,"underlined":true,"color":"dark_blue"}

execute if score BlueTeam points >= MaxPoints points run scoreboard players add @a[team=2,tag=play] wins 1
execute if score RedTeam points >= MaxPoints points run scoreboard players add @a[team=1,tag=play] wins 1

execute if score BlueTeam points >= MaxPoints points run scoreboard players set start start 0
execute if score RedTeam points >= MaxPoints points run scoreboard players set start start 0









execute if score BlueTeam points >= MaxPoints points run team leave @a[tag=play]
execute if score RedTeam points >= MaxPoints points run team leave @a[tag=play]
execute if score BlueTeam points >= MaxPoints points run tp @a[tag=play] -3 74 1
execute if score RedTeam points >= MaxPoints points run tp @a[tag=play] -3 74 1
execute if score BlueTeam points >= MaxPoints points run spawnpoint @a[tag=play] -3 74 1
execute if score RedTeam points >= MaxPoints points run spawnpoint @a[tag=play] -3 74 1
execute if score BlueTeam points >= MaxPoints points run clear @a[tag=play]
execute if score RedTeam points >= MaxPoints points run clear @a[tag=play]
execute if score BlueTeam points >= MaxPoints points run kill @e[type=!player]
execute if score RedTeam points >= MaxPoints points run kill @e[type=!player]

execute if score BlueTeam points >= MaxPoints points run scoreboard players set BlueTeam points 0
execute if score RedTeam points >= MaxPoints points run scoreboard players set BlueTeam points 0
execute if score BlueTeam points >= MaxPoints points run scoreboard players set RedTeam points 0
execute if score RedTeam points >= MaxPoints points run scoreboard players set RedTeam points 0











