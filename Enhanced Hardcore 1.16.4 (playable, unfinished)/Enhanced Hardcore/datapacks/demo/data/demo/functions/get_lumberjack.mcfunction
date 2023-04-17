tag @s add lumberjack
tag @s remove king
tag @s remove miner
tag @s remove sorcerer
tag @s remove warrior
tag @s remove farmer

tellraw @a ["",{"selector":"@s","color":"red"},{"text":" is the Lumberjack","color":"red"}]
scoreboard players set lumberjack class 1

give @s wooden_axe{display:{Name:'{"text":"Lumberjack\'s Axe","color":"#BD5A04"}',Lore:['{"text":"Gives a haste boost to wielder (lumberjack only)","color":"#FF4D00"}']},Unbreakable:1b,axe:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1s}]} 1
give @s minecraft:oak_sapling 5
give @s minecraft:spruce_sapling 3





