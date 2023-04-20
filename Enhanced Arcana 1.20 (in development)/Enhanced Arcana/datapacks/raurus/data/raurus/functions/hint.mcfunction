scoreboard players add hint time 1
execute if score hint time matches 6000 run tellraw @a ["",{"text":"<"},{"text":"Information","bold":true,"color":"blue"},{"text":"> "},{"text":"Use \"/trigger warp set 1\" to travel between the overworld and the lobby.","color":"blue"}]
execute if score hint time matches 4000 run tellraw @a ["",{"text":"<"},{"text":"Information","bold":true,"color":"blue"},{"text":"> "},{"text":"In ghost form, you can use the warp command. Upon revival (interstice hours), you will have a chance of gaining back your lives by acquiring an Arcane Heart.","color":"blue"}]
execute if score hint time matches 2000 run tellraw @a ["",{"text":"<"},{"text":"Information","bold":true,"color":"blue"},{"text":"> "},{"text":"When you lose all your lives, your progress is reset, meaning you lose all EXP, blood and levels.","color":"blue"}]
execute if score hint time matches 7000.. run scoreboard players set hint time 0
