tag @s add druid

tag @s remove arcane_sorcerer
tag @s remove sunlight_warrior
tag @s remove moonlight_spellsword
tag @s remove explorer
tag @s remove blood_mage
tag @s remove ophan_devout
tag @s remove seraph_devout

execute as @s in minecraft:fa/void2 run tp 0 101 0

tellraw @s {"text":"You are a Druid","color":"#46b210"}

give @s player_head{display:{Name:'{"text":"Eye of the Beholder","color":"#1A9900"}'},SkullOwner:{Id:[I;-1510945371,378227165,-1953536681,15840775],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGViZTk1NWI3MjhiYTBiNzcyNDQ0ZDc4Yjc2OTI0YmE4Yjg5ZjE5NzRhZTFkMmZlOGUyMTYyYzc4ODViMmRlIn19fQ=="}]}}} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Life Wand","color":"#0FE600"}',Lore:['{"text":"Shoots a healing bullet that can also breed animals and grow crops. (60 mana)","color":"#8FFF9A"}']},CustomModelData:4,life_wand:1b,show_mana:1b,Enchantments:[{}]} 1
give @s bone_meal 10
give @s wheat_seeds 12
give @s carrot 6
give @s potato 6
give @s oak_sapling 7













