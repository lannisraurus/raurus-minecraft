scoreboard players add @a[tag=viking] viking_switch_cd 1
scoreboard players add @a[scores={viking_switch_a=1..,viking_switch_cd=160..}] viking_switch 1
scoreboard players add @a[scores={viking_switch_s=1..,viking_switch_cd=160..}] viking_switch 1

title @a[tag=viking,scores={viking_switch_cd=..260}] actionbar {"text":"Switch Charging..","color":"dark_red","bold":"true"} 
title @a[tag=viking,scores={viking_switch_cd=260..}] actionbar {"text":"Switch Ready","color":"dark_green","bold":"true"} 
execute at @a[tag=viking,scores={viking_switch_cd=260}] run playsound minecraft:block.note_block.pling voice @a[distance=..2] ~ ~ ~ 10 0.95

execute at @a[scores={viking_switch_s=1..,viking_switch_cd=160..}] run playsound minecraft:item.armor.equip_leather voice @a[distance=..4] ~ ~ ~ 10 0.70
execute at @a[scores={viking_switch_a=1..,viking_switch_cd=160..}] run playsound minecraft:item.armor.equip_iron voice @a[distance=..4] ~ ~ ~ 10 0.70

replaceitem entity @a[tag=viking,scores={viking_switch=0}] hotbar.0 minecraft:iron_sword{display:{Name:"{\"text\":\"Oathkeeper\",\"color\":\"gray\",\"bold\":true,\"italic\":true}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:59619,UUIDMost:955199},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1000,Operation:0,UUIDLeast:654279,UUIDMost:216222}]}
replaceitem entity @a[tag=viking,scores={viking_switch=1}] hotbar.0 minecraft:iron_axe{display:{Name:"{\"text\":\"Bloodborne\",\"color\":\"red\",\"bold\":true,\"italic\":true}"},HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6,Operation:0,UUIDLeast:59619,UUIDMost:955199},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:1000,Operation:0,UUIDLeast:654279,UUIDMost:216222}]}

tag @a[nbt={Inventory:[{Slot:-106b,tag:{shield:1b}}]}] add shield
scoreboard players add @a[tag=viking] use_shield_cd 1
replaceitem entity @a[tag=viking,tag=!shield,scores={viking_switch=0,use_shield_cd=160..}] weapon.offhand minecraft:shield{shield:1b,display:{Name:"{\"text\":\"Radiant Shield\",\"color\":\"white\",\"bold\":true,\"italic\":true,\"underlined\":true}"},HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:862608,UUIDMost:214953}],BlockEntityTag:{Patterns:[{Color:8,Pattern:"gra"}]}}
execute at @a[scores={use_shield=80..}] run playsound minecraft:item.shield.break voice @a[distance=..4] ~ ~ ~ 10 0.58

scoreboard players set @a[scores={use_shield=80..}] use_shield_cd 0
scoreboard players set @a[scores={use_shield=80..}] use_shield 0


clear @a[scores={viking_switch=1}] shield
clear @a[scores={use_shield_cd=..160}] shield
scoreboard players set @a[scores={use_shield=80..}] use_shield 0
tag @a[tag=shield] remove shield

replaceitem entity @a[tag=viking,scores={viking_switch=0}] armor.head minecraft:chainmail_helmet{display:{Name:"{\"text\":\"Chainmail Armour\",\"color\":\"gray\"}"},HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3s}]}
replaceitem entity @a[tag=viking,scores={viking_switch=0}] armor.chest minecraft:chainmail_chestplate{display:{Name:"{\"text\":\"Chainmail Armour\",\"color\":\"gray\"}"},HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.012,Operation:0,UUIDLeast:408964,UUIDMost:798957}],Enchantments:[{id:"minecraft:protection",lvl:3s}]}
replaceitem entity @a[tag=viking,scores={viking_switch=0}] armor.legs minecraft:chainmail_leggings{display:{Name:"{\"text\":\"Chainmail Armour\",\"color\":\"gray\"}"},HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0,Operation:0,UUIDLeast:408964,UUIDMost:798957}],Enchantments:[{id:"minecraft:protection",lvl:3s}]}
replaceitem entity @a[tag=viking,scores={viking_switch=0}] armor.feet minecraft:chainmail_boots{display:{Name:"{\"text\":\"Chainmail Armour\",\"color\":\"gray\"}"},HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0,Operation:0,UUIDLeast:408964,UUIDMost:798957}],Enchantments:[{id:"minecraft:protection",lvl:3s}]}

replaceitem entity @a[tag=viking,scores={viking_switch=1}] armor.head air
replaceitem entity @a[tag=viking,scores={viking_switch=1}] armor.chest minecraft:leather_chestplate{display:{Name:"{\"text\":\"Puffy Vest\",\"color\":\"red\"}",color:7239758},HideFlags:63,Unbreakable:1b}
replaceitem entity @a[tag=viking,scores={viking_switch=1}] armor.legs minecraft:leather_leggings{display:{Name:"{\"text\":\"Rigged Clothing\",\"color\":\"red\"}",color:6710886},HideFlags:63,Unbreakable:1b}
replaceitem entity @a[tag=viking,scores={viking_switch=1}] armor.feet minecraft:leather_boots{display:{Name:"{\"text\":\"Cozy Boots\",\"color\":\"red\"}",color:5384724},HideFlags:63,Unbreakable:1b}







#Viking Blood Spit

































scoreboard players set @a[scores={viking_switch_a=1..,viking_switch_cd=260..}] viking_switch_cd 0 
scoreboard players set @a[scores={viking_switch_s=1..,viking_switch_cd=260..}] viking_switch_cd 0
scoreboard players set @a[scores={viking_switch_a=1..}] viking_switch_a 0
scoreboard players set @a[scores={viking_switch_s=1..}] viking_switch_s 0
scoreboard players set @a[scores={viking_switch=2..}] viking_switch 0