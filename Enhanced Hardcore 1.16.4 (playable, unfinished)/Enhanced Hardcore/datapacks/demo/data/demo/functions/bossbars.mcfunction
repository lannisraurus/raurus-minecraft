scoreboard players add bossbar bossbar_switch 1

execute if score bossbar bossbar_switch matches 1..10 run bossbar set minecraft:hello name {"text":"Welcome to Enhanced Hardcore!","color":"#E00000"}
execute if score bossbar bossbar_switch matches 1..10 run bossbar set minecraft:hello color red

execute if score bossbar bossbar_switch matches 11..20 run bossbar set minecraft:hello name {"text":"Welcome to Enhanced Hardcore!","color":"#FFEE00"}
execute if score bossbar bossbar_switch matches 11..20 run bossbar set minecraft:hello color yellow

execute if score bossbar bossbar_switch matches 21..30 run bossbar set minecraft:hello name {"text":"Welcome to Enhanced Hardcore!","color":"#3FEB00"}
execute if score bossbar bossbar_switch matches 21..30 run bossbar set minecraft:hello color green

execute if score bossbar bossbar_switch matches 31..40 run bossbar set minecraft:hello name {"text":"Welcome to Enhanced Hardcore!","color":"#00DBEB"}
execute if score bossbar bossbar_switch matches 31..40 run bossbar set minecraft:hello color blue

execute if score bossbar bossbar_switch matches 41.. run scoreboard players set bossbar bossbar_switch 0