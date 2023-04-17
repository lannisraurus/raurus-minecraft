tag @s add farmer
tag @s remove lumberjack
tag @s remove miner
tag @s remove sorcerer
tag @s remove warrior
tag @s remove king

tellraw @a ["",{"selector":"@s","color":"green"},{"text":" is the Farmer","color":"green"}]
scoreboard players set farmer class 1

give @s wooden_hoe{display:{Name:'{"text":"Farmer\'s Scythe","color":"#BD5A04"}',Lore:['{"text":"Gives a speed boost to wielder (farmer only)","color":"#FF4D00"}']},Unbreakable:1b,hoe:1b,Enchantments:[{id:"minecraft:fortune",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:10,Operation:0,UUID:[I;-1992306620,-534626037,-1691467903,1380332905],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;-817508056,1154040817,-1794106621,1880856884],Slot:"mainhand"}]} 1
give @s minecraft:wheat_seeds 17
give @s bone_meal 6














