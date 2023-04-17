tag @s add miner
tag @s remove lumberjack
tag @s remove king
tag @s remove sorcerer
tag @s remove warrior
tag @s remove farmer

tellraw @a ["",{"selector":"@s","color":"yellow"},{"text":" is the Miner","color":"yellow"}]
scoreboard players set miner class 1

give @s wooden_pickaxe{display:{Name:'{"text":"Miner\'s Pickaxe","color":"#BD5A04"}',Lore:['{"text":"Gives a haste boost to wielder (miner only)","color":"#FF4D00"}']},Unbreakable:1b,pickaxe:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1s}]} 1
give @s torch 23
give @s coal 5









