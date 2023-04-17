tag @s add king
tag @s remove lumberjack
tag @s remove miner
tag @s remove sorcerer
tag @s remove warrior
tag @s remove farmer

tellraw @a ["",{"selector":"@s","color":"gold"},{"text":" is the King","color":"gold"}]
scoreboard players set king class 1

give @s leather_horse_armor{display:{Name:'{"text":"King\'s Crest","color":"#FFB300","bold":true}',Lore:['{"text":"Hold in offhand to receive divine protection (king only)","color":"#FFB14A"}'],color:16759552},shield:1b,Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:blast_protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s}]} 1
give @s gold_nugget{display:{Name:'{"text":"King\'s Heart","color":"#FFC505","bold":true}',Lore:['{"text":"Throw on the ground and when a ghost is near, they will be revived.","color":"#FFD970"}']},revive:1b,Enchantments:[{}]} 1
give @s gold_ingot 3




