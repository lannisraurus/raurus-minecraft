tag @s add blood_mage

tag @s remove arcane_sorcerer
tag @s remove druid
tag @s remove sunlight_warrior
tag @s remove moonlight_spellsword
tag @s remove explorer
tag @s remove ophan_devout
tag @s remove seraph_devout

execute as @s in minecraft:fa/void2 run tp 0 101 0

tellraw @s {"text":"You are a Blood Mage","color":"#960d0d"}

give @s player_head{display:{Name:'{"text":"Eye of the Beholder","color":"#B80000"}'},SkullOwner:{Id:[I;-1494027674,90194682,-1862814766,1090807066],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTYwMzgzYTI5YWQ4YjdiYWViNGMwYzdlMTVmMzUyMGYwN2VjNzU2NWY1YWY4NDFhNmY4MTJhYTQxOWJiNiJ9fX0="}]}}} 1

give @s iron_sword{display:{Name:'{"text":"Vampiric Sword","color":"#8A0000","bold":true}',Lore:['{"text":"Get blood passively for hitting mobs","color":"#CC0000"}']},Unbreakable:1b,CustomModelData:2,vampiric_sword:1b,show_blood:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5.25,Operation:0,UUID:[I;-1274463075,1113542488,-1922009234,1799651939],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;-213478318,136594669,-1212275555,1875654209],Slot:"mainhand"}]} 1
give @s rotten_flesh 19

























