tag @s add warrior
tag @s remove lumberjack
tag @s remove miner
tag @s remove sorcerer
tag @s remove king
tag @s remove farmer

tellraw @a ["",{"selector":"@s","color":"dark_red"},{"text":" is the Warrior","color":"dark_red"}]
scoreboard players set warrior class 1

give @s wooden_sword{display:{Name:'{"text":"Warrior Sword","color":"#BD5A04"}',Lore:['{"text":"Gives a strength boost to wielder (warrior only)","color":"#FF4D00"}']},Unbreakable:1b,sword:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1618959563,-1817426065,-1428687032,1116784399],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;1709908028,-1683012830,-2040634632,2030795273],Slot:"mainhand"}]} 1
give @s cooked_beef 2
give @s iron_helmet 1





















