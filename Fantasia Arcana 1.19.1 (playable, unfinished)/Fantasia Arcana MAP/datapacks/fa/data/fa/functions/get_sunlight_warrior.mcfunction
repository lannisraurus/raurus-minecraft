tag @s add sunlight_warrior

tag @s remove arcane_sorcerer
tag @s remove druid
tag @s remove moonlight_spellsword
tag @s remove explorer
tag @s remove blood_mage
tag @s remove ophan_devout
tag @s remove seraph_devout

execute as @s in minecraft:fa/void2 run tp 0 101 0


tellraw @s {"text":"You are a Sunlight Warrior","color":"#efcf4d"}

give @s iron_sword{sunlight_sword:1b,display:{Name:'{"text":"Sunlight Sword","color":"#FF9900","bold":true}',Lore:['{"text":"Imbued with the power of the sun...","color":"#FFCD45"}']},CustomModelData:1,Enchantments:[{id:"minecraft:fire_aspect",lvl:1s},{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.8,Operation:0,UUID:[I;-657676999,1609974735,-1990659900,1847374097],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;-309405806,-1276820537,-1809662634,-608038914],Slot:"mainhand"}]} 1
give @s shield{display:{Name:'{"text":"Sunlight Shield","color":"#FFAE0D"}',Lore:['{"text":"Block to summon a wave of fire!","color":"#FFBC47"}']},Unbreakable:1b,sunlight_shield:1b,Enchantments:[{}],BlockEntityTag:{Patterns:[{Color:4,Pattern:"gru"},{Color:14,Pattern:"flo"}]}} 1
give @s player_head{display:{Name:'{"text":"Sunlight Helm","color":"#FFAA00"}'},SkullOwner:{Id:[I;-513320816,-1826795737,-1765215074,-26544695],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDJjZDg0NzUzMGY4MzBjZjA1M2EyOWVlNTE5ODAzZDA0OTZjMjY2ZGYyMjlhYjVmYjNlOGVhM2MwMmIzNzM0YyJ9fX0="}]}}} 1
give @s golden_chestplate{display:{Name:'{"text":"Sunlight Armour","color":"#FF9900","bold":true}',Lore:['{"text":"Imbued with the power of the sun...","color":"#FFCD45"}']},CustomModelData:1,Enchantments:[{id:"minecraft:fire_protection",lvl:1s},{id:"minecraft:unbreaking",lvl:10s}]} 1
give @s golden_leggings{display:{Name:'{"text":"Sunlight Armour","color":"#FF9900","bold":true}',Lore:['{"text":"Imbued with the power of the sun...","color":"#FFCD45"}']},CustomModelData:1,Enchantments:[{id:"minecraft:fire_protection",lvl:1s},{id:"minecraft:unbreaking",lvl:10s}]} 1
give @s golden_boots{display:{Name:'{"text":"Sunlight Armour","color":"#FF9900","bold":true}',Lore:['{"text":"Imbued with the power of the sun...","color":"#FFCD45"}']},CustomModelData:1,Enchantments:[{id:"minecraft:fire_protection",lvl:1s},{id:"minecraft:unbreaking",lvl:10s}]} 1




