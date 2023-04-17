
execute as @a[tag=!welcome] in minecraft:fa/void2 run tp @s 9 91 41
execute as @a[tag=!welcome] in minecraft:fa/void2 run spawnpoint @s 0 101 0
execute as @a[tag=!welcome] in minecraft:fa/void2 run title @s title ["",{"text":"Welcome, ","color":"#ED2A9A"},{"selector":"@s","color":"#ED2A9A"}]
execute as @a[tag=!welcome] in minecraft:fa/void2 run title @s subtitle ["",{"text":"a ","obfuscated":true,"color":"#D45E87"},{"text":"to Fantasia Arcana ","color":"#D45E87"},{"text":"a","obfuscated":true,"color":"#D45E87"}]
execute as @a[tag=!welcome] at @s run playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 0.15 0.80

tag @a[tag=!welcome] remove welcome
team join player @a[tag=!welcome]
clear @a[tag=!welcome]

scoreboard players set @a[tag=!welcome] fantasia_time 1000
scoreboard players set @a[tag=!welcome] blood 0
scoreboard players set @a[tag=!welcome] death2 0
scoreboard players set @a[tag=!welcome] mana 0
scoreboard players set @a[tag=!welcome] dark_mana 0
scoreboard players set @a[tag=!welcome] faith_power 0

recipe give @a[tag=!welcome] *
recipe take @a[tag=!welcome] minecraft:carrot_on_a_stick









execute as @a[scores={leave=1..}] run title @s title ["",{"text":"Welcome, ","color":"#ED2A9A"},{"selector":"@s","color":"#ED2A9A"}]
execute as @a[scores={leave=1..}] run playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 0.15 0.80
execute as @a[scores={leave=1..}] run effect give @s resistance 8 10
execute as @a[scores={leave=1..}] run title @s subtitle ["",{"text":"a ","obfuscated":true,"color":"#D45E87"},{"text":"to Fantasia Arcana ","color":"#D45E87"},{"text":"a","obfuscated":true,"color":"#D45E87"}]
scoreboard players set @a[scores={leave=1..}] purgatory_time 670

recipe give @a[scores={leave=1..}] *
recipe take @a[scores={leave=1..}] minecraft:carrot_on_a_stick

scoreboard players set @a[scores={leave=1..}] leave 0



tag @a[tag=!welcome] add welcome