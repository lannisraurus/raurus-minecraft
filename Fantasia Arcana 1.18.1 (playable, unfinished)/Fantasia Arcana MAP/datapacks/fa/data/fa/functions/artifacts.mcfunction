tag @a[nbt={SelectedItem:{tag:{blood_effigy:1b}}},scores={use_artifact=1.. , death2=1..}] add restore_health

execute as @a[tag=restore_health] at @s run playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..4] ~ ~ ~ 0.30 1
execute as @a[tag=restore_health] at @s run playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..4] ~ ~ ~ 0.30 2
execute as @a[tag=restore_health] at @s run playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..4] ~ ~ ~ 0.30 0
execute as @a[tag=restore_health] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..4] ~ ~ ~ 0.30 0
execute as @a[tag=restore_health] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..4] ~ ~ ~ 0.30 1
execute as @a[tag=restore_health] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..4] ~ ~ ~ 0.30 2
execute as @a[tag=restore_health] at @s run particle heart ~ ~ ~ 1 1 1 0 30 normal
tellraw @a[tag=restore_health] {"text":"Your Death Score has been reset.","color":"red"}
clear @a[tag=restore_health] carrot_on_a_stick{blood_effigy:1b} 1
scoreboard players set @a[tag=restore_health] death2 0

tag @a remove restore_health







execute at @e[type=minecraft:item,nbt={Item:{tag:{xp_essence:1b}}}] run xp add @p 6 points











tag @a[nbt={SelectedItem:{tag:{class_effigy:1b}}},scores={use_artifact=1..}] add change_class
execute as @a[tag=change_class] in minecraft:fa/void2 run tp @s 9 91 41
execute as @a[tag=change_class] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 2
execute as @a[tag=change_class] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 1
execute as @a[tag=change_class] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 0
clear @a[tag=change_class] carrot_on_a_stick{class_effigy:1b} 1
tag @a[tag=change_class] remove change_class

















tag @a[nbt={SelectedItem:{tag:{cure_insanity:1b}}},scores={use_artifact=1..}] add cure_insanity
execute as @a[tag=cure_insanity] at @s run particle witch ~ ~ ~ 1 1 1 0 50 normal
effect give @a[tag=cure_insanity] blindness 5 0 true
effect give @a[tag=cure_insanity] slowness 5 3 true
execute as @a[tag=cure_insanity] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 2
execute as @a[tag=cure_insanity] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 1
execute as @a[tag=cure_insanity] at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 0.5 0
execute as @a[tag=cure_insanity] at @s run playsound minecraft:entity.zombie_villager.cure ambient @s ~ ~ ~ 0.30 1
execute as @a[tag=cure_insanity] at @s run playsound minecraft:entity.zombie_villager.cure ambient @s ~ ~ ~ 0.30 0
execute as @a[tag=cure_insanity] at @s run playsound minecraft:entity.zombie_villager.cure ambient @s ~ ~ ~ 0.30 2
execute as @a[tag=cure_insanity] at @s run playsound minecraft:entity.zombie_villager.converted ambient @s ~ ~ ~ 0.30 2
execute as @a[tag=cure_insanity] at @s run playsound minecraft:entity.zombie_villager.converted ambient @s ~ ~ ~ 0.30 1
execute as @a[tag=cure_insanity] at @s run playsound minecraft:entity.zombie_villager.converted ambient @s ~ ~ ~ 0.30 0
execute as @a[tag=cure_insanity] at @s run playsound minecraft:entity.wither.death ambient @s ~ ~ ~ 0.30 2
execute as @a[tag=cure_insanity] at @s run playsound minecraft:entity.wither.death ambient @s ~ ~ ~ 0.30 1
clear @a[tag=cure_insanity] carrot_on_a_stick{cure_insanity:1b} 1
tag @a[tag=cure_insanity] remove insane
scoreboard players set @a[tag=cure_insanity] death2 0
tellraw @a[tag=cure_insanity] {"text":"Your soul has been restored.","bold":"true","color":"green","underlined":"true"}
tag @a[tag=cure_insanity] remove cure_insanity












tag @a[nbt={SelectedItem:{tag:{mana_potion:1b}}}] add p_mana_potion
scoreboard players add @a[tag=p_mana_potion,scores={drink_potion=1..}] mana 100
tag @a remove p_mana_potion










execute at @e[type=minecraft:item,nbt={Item:{tag:{tome:1b}}}] run particle witch ~ ~ ~ 0.1 0.1 0.1 0 1 normal













execute at @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] run particle witch ~ ~ ~ 0.1 0.1 0.1 0 1 normal

execute as @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] run particle enchant ~ ~ ~ 0.3 0.3 0.3 0.1 20 normal
execute as @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run particle enchant ~ ~ ~ 0.3 0.3 0.3 0.1 20 normal


execute as @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] run playsound minecraft:block.beacon.power_select ambient @a[distance=..8] ~ ~ ~ 1 2.00
execute as @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run playsound minecraft:block.beacon.power_select ambient @a[distance=..8] ~ ~ ~ 1 2.00
execute as @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] run playsound minecraft:block.beacon.power_select ambient @a[distance=..8] ~ ~ ~ 1 1.00
execute as @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run playsound minecraft:block.beacon.power_select ambient @a[distance=..8] ~ ~ ~ 1 1.00


execute at @e[limit=1,type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] as @e[distance=..1,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.2,Operation:0,UUID:[I;2014379970,-686339142,-1979159803,482457023],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;-1798638213,-2120923137,-1300993380,984892660],Slot:"mainhand"}]}}}

execute as @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:carrot_on_a_stick",Count:1b}}] run kill @s

execute at @e[limit=1,type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] as @e[distance=..1,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run data merge entity @s {Item:{id:"minecraft:written_book",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:knockback",lvl:4s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.5,Operation:0,UUID:[I;2014379970,-686339142,-1979159803,482457023],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;-1798638213,-2120923137,-1300993380,984892660],Slot:"mainhand"}]}}}

execute as @e[type=minecraft:item,nbt={Item:{tag:{magic_augment:1b}}}] at @s if entity @e[distance=..1,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run kill @s

























########################## SOUL WAND ###########################

tag @a[nbt={SelectedItem:{tag:{soul_wand:1b}}},scores={mana=20.. , use_artifact=1..}] add soul_wand
scoreboard players add @a[tag=soul_wand] soul_wand 1


execute at @a[scores={soul_wand=45}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["soul_bullet"]}
effect give @a[scores={soul_wand=1..}] slowness 1 2 true
execute as @a[scores={soul_wand=25..44}] at @s run tp @s @s
scoreboard players remove @a[scores={soul_wand=1}] mana 20

execute as @e[tag=soul_bullet,scores={life=1}] at @s run tp @s @p
execute as @e[tag=soul_bullet,scores={life=1}] at @s run tp @s ^ ^ ^3
execute as @e[tag=soul_bullet,scores={life=1}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=soul_bullet,scores={life=1}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 0.5 1.5
execute as @e[tag=soul_bullet,scores={life=1}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 0.5 2
execute as @e[tag=soul_bullet] at @s run tp ^ ^ ^0.55
execute at @e[tag=soul_bullet] run particle dust 0 0 1 1 ~ ~1 ~ 0.05 0.05 0.05 0 3 normal
execute at @e[tag=soul_bullet] run particle dust 0 1 1 1 ~ ~1 ~ 0.05 0.05 0.05 0 3 normal

scoreboard players add @e[tag=soul_bullet] life 1
kill @e[tag=soul_bullet,scores={life=40..}]


execute at @e[tag=soul_bullet,scores={life=2..}] as @e[distance=..2,type=!item,type=!armor_stand,tag=!undead] run effect give @s instant_damage 1 1 true
execute at @e[tag=soul_bullet,scores={life=2..}] as @e[distance=..2,type=!item,type=!armor_stand,tag=undead] run effect give @s instant_health 1 1 true
execute as @e[tag=soul_bullet,scores={life=2..}] at @s if entity @e[distance=..2,type=!item,type=!armor_stand] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 0.5 1
execute as @e[tag=soul_bullet,scores={life=2..}] at @s if entity @e[distance=..2,type=!item,type=!armor_stand] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 0.5 1.5
execute as @e[tag=soul_bullet,scores={life=2..}] at @s if entity @e[distance=..2,type=!item,type=!armor_stand] run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 0.5 2
execute as @e[tag=soul_bullet,scores={life=2..}] at @s if entity @e[distance=..2,type=!item,type=!armor_stand] run particle flash ~ ~1 ~ 0 0 0 0 1 normal
execute as @e[tag=soul_bullet,scores={life=2..}] at @s if entity @e[distance=..2,type=!item,type=!armor_stand] run kill @s



tag @a[scores={soul_wand=45..}] remove soul_wand
scoreboard players set @a[tag=!soul_wand] soul_wand 0








