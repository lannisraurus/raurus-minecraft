execute at @e[tag=buy_blood] as @a[distance=..3,scores={blood=60.. , talk=1..}] run give @s red_dye{display:{Name:'{"text":"Blood Essence","color":"#6B0000"}'},blood_essence:1b,Enchantments:[{}]} 1
execute at @e[tag=buy_blood] as @a[distance=..3,scores={blood=60.. , talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 2
execute at @e[tag=buy_blood] as @a[distance=..3,scores={blood=60.. , talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 1.5
execute at @e[tag=buy_blood] run scoreboard players remove @a[distance=..3,scores={blood=60.. , talk=1..}] blood 60




execute at @e[tag=get_class_artifact] as @a[distance=..3,scores={talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 1
execute at @e[tag=get_class_artifact] as @a[distance=..3,scores={talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 1.5
execute at @e[tag=get_class_artifact] as @a[distance=..3,scores={talk=1..}] run function fa:get_class_artifact





execute at @e[tag=get_xp] as @a[distance=..3,scores={exp=2.. , talk=1..}] run give @s lime_dye{display:{Name:'{"text":"XP Essence","color":"#7CFF54"}'},kill:1b,xp_essence:1b,Enchantments:[{}]} 1
execute at @e[tag=get_xp] as @a[distance=..3,scores={exp=2.. , talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 2
execute at @e[tag=get_xp] as @a[distance=..3,scores={exp=2.. , talk=1..}] run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 1.5
execute at @e[tag=get_xp] run xp add @a[distance=..3,scores={exp=2.. , talk=1..}] -1 levels

















