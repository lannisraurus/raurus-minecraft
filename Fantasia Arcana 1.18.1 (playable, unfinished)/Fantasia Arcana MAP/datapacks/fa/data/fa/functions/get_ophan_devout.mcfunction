tag @s add ophan_devout
tag @s remove arcane_sorcerer
tag @s remove druid
tag @s remove sunlight_warrior
tag @s remove moonlight_spellsword
tag @s remove explorer
tag @s remove blood_mage
tag @s remove seraph_devout

execute as @s in minecraft:fa/void2 run tp 0 101 0


tellraw @s {"text":"You are a Devout of the Ophan","color":"#21031b"}

give @s player_head{display:{Name:'{"text":"Hood of the Occult","color":"#630032"}'},SkullOwner:{Id:[I;1498893839,-1285733540,-1169818012,-912067763],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjE2M2Y2ZmYzYzRlYmVlYjY4NjRmMDJlNDQ3MTEzMWZkMGVkNjdlYzQ1Mzc5ODMxNjg0NTQzYjUzMTFlYzI2In19fQ=="}]}}} 1

give @s carrot_on_a_stick{display:{Name:'{"text":"Abyssal Sigil","color":"#420075"}',Lore:['{"text":"Teleport to the Abyss and back. (80 mana, 250 dark mana, 40 blood)","color":"#8370FF"}']},CustomModelData:8,mana_dmana_blood:1b,abyssal_sigil:1b,Enchantments:[{}]} 1
give @s carrot_on_a_stick{display:{Name:'{"text":"Paralysation Wand","color":"#750166"}',Lore:['{"text":"Immobilizes target upon continuous use (5 dark mana/second standing still)","color":"#FF69E1"}']},CustomModelData:2,show_dark_mana:1b,paralysation_wand:1b,Enchantments:[{}]} 1
give @s black_dye{display:{Name:'{"text":"Shadow Essence","color":"#450073"}'},shadow_essence:1b,Enchantments:[{}]} 3












