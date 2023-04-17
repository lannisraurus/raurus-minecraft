tag @s add explorer

tag @s remove arcane_sorcerer
tag @s remove druid
tag @s remove sunlight_warrior
tag @s remove moonlight_spellsword
tag @s remove blood_mage
tag @s remove ophan_devout
tag @s remove seraph_devout

execute as @s in minecraft:fa/void2 run tp 0 101 0


tellraw @s {"text":"You are an Explorer","color":"#f9f4bd"}

give @s player_head{display:{Name:'{"text":"Explorer\'s Hat","color":"#E3DE91"}'},SkullOwner:{Id:[I;-1984250552,-1966322368,-1810870853,1396659085],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzFjZDg2NTY0ZTMwOGJiOGZjOWJjNzY1MzA4ZTJmZTUxYjYxZTAyYmM0MDM4MDQ0ODYyMDk2ZGIxNDk1OTg5NSJ9fX0="}]}}} 1


give @s saddle
give @s map
give @s bread 5
give @s bundle

give @s carrot_on_a_stick{display:{Name:'{"text":"Celeritas Wand","color":"#0FE600"}',Lore:['{"text":"Makes you walk faster. Right click to use (25 mana per use)","color":"#8FFF9A"}']},CustomModelData:4,celeritas_wand:1b,show_mana:1b,Enchantments:[{}]} 1
give @s crossbow{display:{Name:'{"text":"Rocket Crossbow","color":"#C97900"}',Lore:['{"text":"Shoots rockets!","color":"#FFA60D"}']},Unbreakable:1b,rocket_crossbow:1b} 1













