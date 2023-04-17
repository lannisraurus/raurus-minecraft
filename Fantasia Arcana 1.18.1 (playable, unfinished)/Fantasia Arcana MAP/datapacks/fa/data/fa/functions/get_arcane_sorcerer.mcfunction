tag @s add arcane_sorcerer

tag @s remove druid
tag @s remove sunlight_warrior
tag @s remove moonlight_spellsword
tag @s remove explorer
tag @s remove blood_mage
tag @s remove ophan_devout
tag @s remove seraph_devout

execute as @s in minecraft:fa/void2 run tp 0 101 0

tellraw @s {"text":"You are an Arcane Sorcerer","color":"#4414e1"}

give @s player_head{display:{Name:'{"text":"Arcane Head","color":"#6803FF"}'},SkullOwner:{Id:[I;973333367,849496186,-1253831848,-612160692],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjkzMTk1MjU4MjVmMWYzMDcyN2ViOTQwZDNhMDY0MjZiYzRjZWMwN2ZiZDgwYWY1Y2QxNDZlM2ViMzg3OWY2OCJ9fX0="}]}}} 1
give @s written_book{display:{Name:'{"text":"Condensed Arcane Tome","color":"#6600FF","bold":true,"underlined":true}',Lore:['{"text":"Right click to open, and click the spells to use! Begginer level spells only.","color":"#9585FF"}']},mana_dmana:1b,spellbook1:1b,title:"",author:"Lannis",generation:2,pages:['[{"text":"SPELLS:\\n\\n","color":"#5500FF","bold":true},{"text":"[Ignis]","color":"#FF5E00","hoverEvent":{"action":"show_text","contents":[{"text":"Summon a wave of fire (100 mana)","color":"#FF5E00"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 1"}},{"text":"\\n\\n[Electros]","color":"#FFCE6B","hoverEvent":{"action":"show_text","contents":[{"text":"Summon a lightning bolt in front of you (70 mana, 20 dark mana)","color":"#FFCE6B"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 2"}},{"text":"\\n\\n[Levitego]","color":"#FFF7B3","hoverEvent":{"action":"show_text","contents":[{"text":"Start levitating (40 mana)","color":"#FFF7B3"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 3"}},{"text":"\\n\\n[Levitae]","color":"#F99EFF","hoverEvent":{"action":"show_text","contents":[{"text":"Make entities around you start floating (100 mana)","color":"#F99EFF"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 4"}},{"text":"\\n\\n[Arros]","color":"#9E9E9E","hoverEvent":{"action":"show_text","contents":[{"text":"Summon a cloud of arrows in the direction where you are looking (60 mana. 20 dark mana)","color":"#9E9E9E"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 5"}},{"text":"\\n\\n[Arcanae]","color":"#404DFF","hoverEvent":{"action":"show_text","contents":[{"text":"Shoot a damaging arcane orb (100 mana, 100 dark mana)","color":"#404DFF"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 6"}}]']} 1
give @s stick{display:{Name:'{"text":"Arcane Pen","color":"#9000FF"}',Lore:['{"text":"Used to craft tomes more easily","color":"#FF7DEE"}']},arcane_pen:1b,Enchantments:[{}]} 1

