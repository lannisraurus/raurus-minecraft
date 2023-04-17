############ FUNCTIONS ############
function fa:welcome
function fa:rand
function fa:lobby
function fa:abyss
function fa:warp
function fa:mob_qtd
function fa:magic_systems
function fa:moon_sun_altar
function fa:classes
function fa:spells
function fa:curses
function fa:villagers
function fa:crafting
function fa:custom_mobs
function fa:artifacts
function fa:death
function fa:kill
function fa:scores_tags




################################ FORCELOADS

execute in minecraft:fa/abyss run forceload add 5 -9 5 -9

execute in minecraft:fa/void2 run forceload add -20 -20 57 67

execute in minecraft:overworld run forceload add 203 100 116 199

execute in minecraft:overworld run forceload add 407 -73 407 -73




################################ TIPS

scoreboard players add hint_time hint_time 1
execute if score hint_time hint_time matches 2200 run tellraw @a[tag=!purgatory,tag=!insane] {"text":"[HINT] You can use the command /trigger warp set 1 to return to the lobby!","color":"blue","bold":"true"}
execute if score hint_time hint_time matches 4400 run tellraw @a[tag=!purgatory,tag=!insane] ["",{"text":"[HINT] Click ","bold":true,"color":"blue"},{"text":"[HERE]","bold":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://ko-fi.com/fantasiaarcana"}},{"text":" to leave us a donation! ","bold":true,"color":"blue"},{"text":"\u263b","color":"blue"}]
execute if score hint_time hint_time matches 2200 run tellraw @a[tag=insane] {"text":"[HINT] There is no salvation for you.","color":"gray","bold":"true"}
execute if score hint_time hint_time matches 4400.. run scoreboard players set hint_time hint_time 0




scoreboard players add scoreboard hint_time 1
execute if score scoreboard hint_time matches 150 run scoreboard objectives add death3 dummy {"text":"Consecutive Deaths","bold":"true","underlined":"true","color":"blue"}
execute as @a[tag=!admin] run scoreboard players operation @s death3 = @s death2
scoreboard players set -------------------- death3 100
scoreboard players set ------------------- death3 -100
execute if score scoreboard hint_time matches 150 run scoreboard objectives setdisplay sidebar death3
execute if score scoreboard hint_time matches 300.. run scoreboard objectives remove death3
execute if score scoreboard hint_time matches 300.. run scoreboard objectives setdisplay sidebar mob_qtd
execute if score scoreboard hint_time matches 300.. run scoreboard players set scoreboard hint_time 0







#scoreboard players add clear_ground hint_time 1
#execute if score clear_ground hint_time matches 5000 run tellraw @a {"text":"[WARNING] The items on the ground are going to be cleared in one minute!","color":"dark_red","bold":"true"}
#execute if score clear_ground hint_time matches 6000 run tellraw @a {"text":"[WARNING] The items on the ground are going to be cleared in 10 seconds!","color":"dark_red","bold":"true"}
#execute if score clear_ground hint_time matches 6100 run tellraw @a {"text":"[WARNING] The items on the ground are going to be cleared in 5 seconds!","color":"dark_red","bold":"true"}
#execute if score clear_ground hint_time matches 6140 run tellraw @a {"text":"[WARNING] The items on the ground are going to be cleared in 3 seconds!","color":"dark_red","bold":"true"}
#execute if score clear_ground hint_time matches 6160 run tellraw @a {"text":"[WARNING] The items on the ground are going to be cleared in 2 seconds!","color":"dark_red","bold":"true"}
#execute if score clear_ground hint_time matches 6180 run tellraw @a {"text":"[WARNING] The items on the ground are going to be cleared in 1 second!","color":"dark_red","bold":"true"}
#execute if score clear_ground hint_time matches 6200 run tellraw @a {"text":"[WARNING] ITEMS CLEARED!","color":"dark_red","bold":"true"}
#execute if score clear_ground hint_time matches 6200 run kill @e[type=item]



















