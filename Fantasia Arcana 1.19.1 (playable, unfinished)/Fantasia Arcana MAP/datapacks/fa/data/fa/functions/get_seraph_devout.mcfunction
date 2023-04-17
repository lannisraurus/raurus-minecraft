tag @s add seraph_devout
tag @s remove arcane_sorcerer
tag @s remove druid
tag @s remove sunlight_warrior
tag @s remove moonlight_spellsword
tag @s remove explorer
tag @s remove blood_mage
tag @s remove ophan_devout

execute as @s in minecraft:fa/void2 run tp 0 101 0


tellraw @s {"text":"You are a Devout of the Seraphs","color":"#fdf2e8"}

give @s player_head{display:{Name:'{"text":"Mask of the Seraph","color":"#FFDFB5"}'},SkullOwner:{Id:[I;297912466,274614739,-1316817711,2134341701],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzBkODA2ZjE5YTc1MjZmYzZmYTQ4ZjQyZjcwM2I5MGFkZDgxNDJkYWM3ZjM3YWQxYmUxYjRlZGNhYzViYTgzIn19fQ=="}]}}} 1
give @s iron_ingot 5
give @s gold_ingot 5
give @s carrot_on_a_stick{display:{Name:'{"text":"Seraph Sigil","color":"#FFEFBA"}',Lore:['{"text":"Hold in offhand for protection. Hold right click for shield mode","color":"#B5B58F"}']},Unbreakable:1b,CustomModelData:7,seraph_sigil:1b,Enchantments:[{}]} 1















