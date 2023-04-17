tag @s add moonlight_spellsword

tag @s remove arcane_sorcerer
tag @s remove druid
tag @s remove sunlight_warrior
tag @s remove explorer
tag @s remove blood_mage
tag @s remove ophan_devout
tag @s remove seraph_devout

execute as @s in minecraft:fa/void2 run tp 0 101 0


tellraw @s {"text":"You are a Moonlight Spellsword","color":"#1464e6"}

give @s player_head{display:{Name:'{"text":"Moonlight Helm","color":"#005CC4"}'},SkullOwner:{Id:[I;-1403725988,2028227377,-1728896574,-1872251920],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTY5MDk5MzZiNWZhMTkyNGY5MWQxZGUzZTg3MGVkNzE0MGJmNDM1YzFhMWE1NWRhNTczZmMzYTg4ZWJkNWJlYyJ9fX0="}]}}} 1
give @s leather_chestplate{display:{Name:'{"text":"Moonlight Armour","color":"#0047A3"}',Lore:['{"text":"Imbued with the power of the Moon...","color":"#5E9FFF"}'],color:24319},CustomModelData:4,Enchantments:[{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:unbreaking",lvl:10s}]} 1
give @s leather_leggings{display:{Name:'{"text":"Moonlight Armour","color":"#0047A3"}',Lore:['{"text":"Imbued with the power of the Moon...","color":"#5E9FFF"}'],color:24319},CustomModelData:4,Enchantments:[{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:unbreaking",lvl:10s}]} 1
give @s leather_boots{display:{Name:'{"text":"Moonlight Armour","color":"#0047A3"}',Lore:['{"text":"Imbued with the power of the Moon...","color":"#5E9FFF"}'],color:24319},CustomModelData:4,Enchantments:[{id:"minecraft:projectile_protection",lvl:1s},{id:"minecraft:unbreaking",lvl:10s}]} 1
give @s iron_sword{moonlight_sword:1b,display:{Name:'{"text":"Moonlight Sword","color":"#0047A3"}',Lore:['{"text":"Imbued with the power of the Moon...","color":"#5E9FFF"}']},CustomModelData:4,Enchantments:[{id:"minecraft:knockback",lvl:1s},{id:"minecraft:sweeping",lvl:10s},{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.8,Operation:0,UUID:[I;1683280904,462441911,-1996929329,653435312],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;-279401590,1640975850,-1920123779,301716666],Slot:"mainhand"}]} 1
give @s carrot_on_a_stick{display:{Name:'{"text":"Moonlight Staff","color":"#0047A3"}',Lore:['{"text":"Shoots Moonlight Pellets; Only works at night; Can only be used by Moonlight Spellswords","color":"#5E9FFF"}']},Unbreakable:1b,CustomModelData:1,moonlight_wand:1b,Enchantments:[{}]} 1



