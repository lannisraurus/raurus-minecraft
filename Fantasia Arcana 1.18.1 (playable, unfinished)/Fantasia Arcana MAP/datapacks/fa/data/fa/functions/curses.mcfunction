scoreboard players add @a curse_time 1


tellraw @a[scores={curse_time=0..10 , death1=1..},tag=!tp_home] {"text":"You have been cursed by hunger. The curse will disappear with time.","color":"dark_green"}
tellraw @a[scores={curse_time=11..20, death1=1..},tag=!tp_home] {"text":"You have been cursed by slowness. The curse will disappear with time.","color":"gray"}
tellraw @a[scores={curse_time=21..40, death1=1..},tag=!tp_home] {"text":"You have been cursed. Your mana has been halved. The curse will disappear with time.","color":"dark_blue"}
tellraw @a[scores={curse_time=41..45, death1=1..},tag=!tp_home] {"text":"You have been cursed by blindness. The curse will disappear with time.","color":"gray"}
tellraw @a[scores={curse_time=46..56, death1=1..},tag=!tp_home] {"text":"You have been cursed. Your health is halved. The curse will disappear with time.","color":"red"}
tellraw @a[scores={curse_time=57..67, death1=1..},tag=!tp_home] {"text":"You have been cursed. Your attacks are slower. The curse will disappear with time.","color":"gold"}
tellraw @a[scores={curse_time=68..72, death1=1..},tag=!tp_home] {"text":"You have been cursed with weakness. The curse will disappear with time.","color":"gray"}

tag @a[scores={curse_time=0..10 , death1=1..},tag=!tp_home] add hunger_curse
tag @a[scores={curse_time=11..20 , death1=1..},tag=!tp_home] add slow_curse
tag @a[scores={curse_time=21..40 , death1=1..},tag=!tp_home] add mana_half_curse
tag @a[scores={curse_time=41..45 , death1=1..},tag=!tp_home] add blind_curse
tag @a[scores={curse_time=46..56 , death1=1..},tag=!tp_home] add knockback_curse
tag @a[scores={curse_time=57..67 , death1=1..},tag=!tp_home] add dexterity_curse
tag @a[scores={curse_time=68..72 , death1=1..},tag=!tp_home] add weak_curse


scoreboard players set @a[scores={curse_time=200..}] curse_time 0






scoreboard players add @a[tag=hunger_curse] hunger_curse 1
scoreboard players add @a[tag=slow_curse] slow_curse 1
scoreboard players add @a[tag=mana_half_curse] mana_half_curse 1
scoreboard players add @a[tag=blind_curse] blind_curse 1
scoreboard players add @a[tag=knockback_curse] knockback_curse 1
scoreboard players add @a[tag=dexterity_curse] dexterity_curse 1
scoreboard players add @a[tag=weak_curse] weak_curse 1

tag @a[scores={hunger_curse=2900..}] remove hunger_curse
scoreboard players set @a[scores={hunger_curse=2900..}] hunger_curse 0

tag @a[scores={slow_curse=2900..}] remove slow_curse
scoreboard players set @a[scores={slow_curse=2900..}] slow_curse 0

tag @a[scores={mana_half_curse=2900..}] remove mana_half_curse
scoreboard players set @a[scores={mana_half_curse=2900..}] mana_half_curse 0

tag @a[scores={blind_curse=2900..}] remove blind_curse
scoreboard players set @a[scores={blind_curse=2900..}] blind_curse 0

tag @a[scores={knockback_curse=2900..}] remove knockback_curse
scoreboard players set @a[scores={knockback_curse=2900..}] knockback_curse 0

tag @a[scores={dexterity_curse=2900..}] remove dexterity_curse
scoreboard players set @a[scores={dexterity_curse=2900..}] dexterity_curse 0

tag @a[scores={weak_curse=2900..}] remove weak_curse
scoreboard players set @a[scores={weak_curse=2900..}] weak_curse 0




effect give @a[tag=hunger_curse] hunger 1 0 true
effect give @a[tag=slow_curse] slowness 1 0 true
scoreboard players set @a[tag=mana_half_curse,scores={mana=50..}] mana 50
effect give @a[tag=blind_curse] blindness 6 0 true

execute as @a[tag=knockback_curse] run attribute @s minecraft:generic.max_health base set 10

execute as @a[tag=dexterity_curse] run attribute @s minecraft:generic.attack_speed base set 3
execute as @a[tag=!dexterity_curse] run attribute @s minecraft:generic.attack_speed base set 4

effect give @a[tag=weak_curse] weakness 1 0 true













tag @a[scores={fall=1100..}] add broken_bones

scoreboard players add @a[tag=broken_bones] fall_time 1

tellraw @a[scores={fall=1100..}] {"text":"You broke your bones.","bold":"true"}
execute at @a[scores={fall=1100..}] run playsound minecraft:entity.wither.break_block ambient @a[distance=..5] ~ ~ ~ 1 2
execute at @a[scores={fall=1100..}] run playsound minecraft:entity.wither.break_block ambient @a[distance=..5] ~ ~ ~ 1 1.5
execute at @a[scores={fall=1100..}] run playsound minecraft:entity.wither.break_block ambient @a[distance=..5] ~ ~ ~ 1 1.75

tellraw @a[scores={fall_time=1200..}] {"text":"Your bones have recovered"}
execute at @a[scores={fall_time=1200..}] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 0.2 1.75
tag @a[scores={fall_time=1200..}] remove broken_bones
scoreboard players set @a[scores={fall_time=1200..}] fall_time 0

scoreboard players set @a fall 0

effect give @a[tag=broken_bones] slowness 1 2 true










############ curses: hunger, slowness, mana halfing, blindness, knockback, dexterity, weakness





# INSANITY EVENTS: 
#creeper fake explosion, 
#spawn insanity, 
#jumpscare, 
#turn head 1, 
#turn head 2, 
#nothing, 
#nothing
#nothing
#black mist


scoreboard players add @a[tag=insane] insanity_time 1

execute as @a[tag=insane] at @s run particle dust 0 0 0 1 ~ ~ ~ 10 10 10 0 8 force @s
execute as @a[tag=insane] at @s run particle soul ~ ~ ~ 10 10 10 0 1 force @s

execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 1 at @s run playsound minecraft:entity.creeper.primed master @s ~ ~ ~ 100 0.00
execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 1 at @s run effect give @s slowness 3 1 true
execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 1 at @s run effect give @s blindness 3 0 true


execute as @a[scores={insanity_time=300},tag=insane,nbt=!{Dimension:"minecraft:fa/void2"}] if score rand rand matches 2 at @s run summon armor_stand ~ ~15 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["insanity_mob_1"]}


execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 3 at @s run effect give @s blindness 3 0 true
execute as @a[scores={insanity_time=300},tag=insane,nbt={Dimension:"minecraft:overworld"}] if score rand rand matches 3 at @s run tp @s ~ ~-0.1 ~


execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 4 at @s run tp @s ~ ~ ~ ~22 ~-12

execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 5 at @s run tp @s ~ ~ ~ ~12 ~-22

execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 6 at @s run playsound minecraft:entity.zombie.ambient master @s ~ ~ ~ 100 1.00

execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 7 at @s run playsound minecraft:entity.skeleton.ambient master @s ~ ~ ~ 100 1.00

execute as @a[scores={insanity_time=300},tag=insane,nbt=!{Dimension:"minecraft:fa/void2"}] if score rand rand matches 8 at @s run summon armor_stand ~ ~15 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["insanity_mob_2"]}



execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 9 at @s run particle dust 0 0 0 2 ~ ~1.2 ~ 1 1 1 0 200 force @s
execute as @a[scores={insanity_time=300},tag=insane] if score rand rand matches 9 at @s run effect give @s slowness 2 2 true



scoreboard players set @a[scores={insanity_time=300..}] insanity_time 0













































































