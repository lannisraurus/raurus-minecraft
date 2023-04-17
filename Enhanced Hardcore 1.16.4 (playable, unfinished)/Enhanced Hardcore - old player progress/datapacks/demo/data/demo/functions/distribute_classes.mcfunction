execute if score rand6 random matches 1 unless score king class matches 1 as @s[tag=!seraph,tag=!warrior,tag=!miner,tag=!farmer,tag=!lumberjack,tag=!sorcerer] run function demo:get_king
execute if score rand6 random matches 2 unless score warrior class matches 1 as @s[tag=!seraph,tag=!king,tag=!miner,tag=!farmer,tag=!lumberjack,tag=!sorcerer] run function demo:get_warrior
execute if score rand6 random matches 3 unless score miner class matches 1 as @s[tag=!seraph,tag=!warrior,tag=!king,tag=!farmer,tag=!lumberjack,tag=!sorcerer] run function demo:get_miner
execute if score rand6 random matches 4 unless score farmer class matches 1 as @s[tag=!seraph,tag=!warrior,tag=!miner,tag=!king,tag=!lumberjack,tag=!sorcerer] run function demo:get_farmer
execute if score rand6 random matches 5 unless score lumberjack class matches 1 as @s[tag=!seraph,tag=!warrior,tag=!miner,tag=!farmer,tag=!king,tag=!sorcerer] run function demo:get_lumberjack
execute if score rand6 random matches 6 unless score sorcerer class matches 1 as @s[tag=!seraph,tag=!warrior,tag=!miner,tag=!farmer,tag=!lumberjack,tag=!king] run function demo:get_sorcerer

