#mana
scoreboard players add @a mana2 2
scoreboard players add @a[tag=sorcerer] mana2 1
scoreboard players add @a[tag=seraph] mana2 3
scoreboard players add @a[scores={mana2=20.. , mana=..99}] mana 1
scoreboard players set @a[scores={mana2=20..}] mana2 0
scoreboard players set @a[scores={mana=101..}] mana 100
scoreboard players set @a[scores={mana=..-1}] mana 0

#spell gui
scoreboard players enable @a use_spell
execute as @a[nbt={SelectedItem:{tag:{spell:1b}}}] run title @s actionbar ["",{"text":"Mana: ","bold":true,"color":"#0013DB"},{"score":{"name":"@s","objective":"mana"},"bold":true,"color":"#0013DB"}]
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{spell:1b}}]}] run title @s actionbar ["",{"text":"Mana: ","bold":true,"color":"#0013DB"},{"score":{"name":"@s","objective":"mana"},"bold":true,"color":"#0013DB"}]


#soarus (1)
execute as @a[scores={use_spell=1,mana=40..}] at @s run effect give @e[distance=..6,team=!players,type=!player,type=!item_frame,type=!armor_stand] minecraft:levitation 8 0 true
execute as @a[scores={use_spell=1,mana=40..}] at @s run playsound minecraft:block.beacon.ambient ambient @a[distance=..7] ~ ~ ~ 10 2.00
execute as @a[scores={use_spell=1,mana=40..}] at @s run particle cloud ~ ~ ~ 1 1 1 0.1 100 force
scoreboard players remove @a[scores={use_spell=1,mana=40..}] mana 40
scoreboard players set @a[scores={use_spell=1}] use_spell 0

#pazis (2)
execute as @a[scores={use_spell=2,mana=60..}] at @s run tag @e[team=!players,type=!player,distance=..10] add pacify
execute as @a[scores={use_spell=2,mana=60..}] at @s run playsound minecraft:block.enchantment_table.use ambient @a[distance=..10] ~ ~ ~ 10 0.00
scoreboard players remove @a[scores={use_spell=2,mana=60..}] mana 60
scoreboard players set @a[scores={use_spell=2}] use_spell 0
scoreboard players add @e[tag=pacify] pacify_cd 1
execute at @e[tag=pacify] run particle dust 1 0 0 1 ~ ~2 ~ 0 0 0 0 1 normal
team join players @e[tag=pacify]
team leave @e[scores={pacify_cd=200..}]
tag @e[scores={pacify_cd=200..}] remove pacify
scoreboard players set @e[scores={pacify_cd=200..}] pacify_cd 0

#vidas (3)
execute as @a[scores={use_spell=3,mana=90..}] at @s run effect give @a[distance=..6] minecraft:regeneration 9 0 true
execute as @a[scores={use_spell=3,mana=90..},tag=peacemaker] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 10 1.50
execute as @a[scores={use_spell=3,mana=90..},tag=peacemaker] at @s run particle heart ~ ~ ~ 2 2 2 0 50 force
scoreboard players remove @a[scores={use_spell=3,mana=90..}] mana 90
scoreboard players set @a[scores={use_spell=3}] use_spell 0

#letros (4)
execute as @a[scores={use_spell=4,mana=70..}] at @s run tag @a[distance=..6] remove broken_leg
execute as @a[scores={use_spell=4,mana=70..}] at @s run playsound minecraft:particle.soul_escape ambient @a[distance=..10] ~ ~ ~ 10 2.00
execute as @a[scores={use_spell=4,mana=70..}] at @s run playsound minecraft:particle.soul_escape ambient @a[distance=..10] ~ ~ ~ 10 1.00
execute as @a[scores={use_spell=4,mana=70..}] at @s run tellraw @a[distance=..6] {"text":"Your bones have been cured"}
execute as @a[scores={use_spell=4,mana=70..}] at @s run particle flash ~ ~1 ~ 0.1 0.1 0.1 0 5
scoreboard players remove @a[scores={use_spell=4,mana=70..}] mana 70
scoreboard players set @a[scores={use_spell=4}] use_spell 0

#thoise (5)
execute as @a[scores={use_spell=5,mana=80..}] at @s run effect give @s minecraft:resistance 10 100
execute as @a[scores={use_spell=5,mana=80..}] at @s run playsound minecraft:block.anvil.land ambient @a[distance=..6] ~ ~ ~ 10 1.00
scoreboard players remove @a[scores={use_spell=5,mana=80..}] mana 80
scoreboard players set @a[scores={use_spell=5}] use_spell 0

#electros (6)
execute as @a[scores={use_spell=6,mana=40..}] at @s run summon minecraft:lightning_bolt ^ ^ ^7
scoreboard players remove @a[scores={use_spell=6,mana=40..}] mana 40
scoreboard players set @a[scores={use_spell=6}] use_spell 0

#celeritas (7)
execute as @a[scores={use_spell=7,mana=20..}] at @s run effect give @s minecraft:speed 15 0 true
execute as @a[scores={use_spell=7,mana=20..}] at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..6] ~ ~ ~ 10 1.50
scoreboard players remove @a[scores={use_spell=7,mana=20..}] mana 20
scoreboard players set @a[scores={use_spell=7}] use_spell 0

#gaia (8)

execute as @a[scores={use_spell=8,mana=100..}] at @s run scoreboard players add @s grow 1
execute as @a[scores={use_spell=8,mana=100..}] at @s run playsound minecraft:block.composter.fill_success ambient @a[distance=..10] ~ ~ ~ 10 1.00
scoreboard players remove @a[scores={use_spell=8,mana=100..}] mana 100
scoreboard players set @a[scores={use_spell=8}] use_spell 0

scoreboard players add @a[scores={grow=1..}] grow 1
execute at @a[scores={grow=1..}] run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 1 force
execute if entity @a[scores={grow=1..80}] run gamerule randomTickSpeed 30
execute if entity @a[scores={grow=81..}] run gamerule randomTickSpeed 3
scoreboard players set @a[scores={grow=82..}] grow 0

#ignis (9)

execute as @a[scores={use_spell=9,mana=100..}] at @s run summon armor_stand ^ ^1 ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ignis"]}
execute as @a[scores={use_spell=9,mana=100..}] at @s run summon armor_stand ^1 ^1 ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ignis"]}
execute as @a[scores={use_spell=9,mana=100..}] at @s run summon armor_stand ^-1 ^1 ^1 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ignis"]}
scoreboard players remove @a[scores={use_spell=9,mana=100..}] mana 100
scoreboard players set @a[scores={use_spell=9}] use_spell 0

execute at @e[tag=ignis,type=armor_stand] run particle flame ~ ~ ~ 0.5 0.5 0.5 0 20 normal
scoreboard players add @e[tag=ignis,type=armor_stand] ignis_life 1
kill @e[scores={ignis_life=50},tag=ignis]
execute at @e[tag=ignis,type=armor_stand] as @e[type=!armor_stand,type=!player,type=!painting,type=!item,type=!painting,distance=..2] run data merge entity @s {Fire:160}
execute as @e[type=armor_stand,tag=ignis,scores={ignis_life=1..2}] at @s rotated as @p run tp ~ ~ ~
execute as @e[type=armor_stand,tag=ignis] at @s run tp ^ ^ ^0.2















































