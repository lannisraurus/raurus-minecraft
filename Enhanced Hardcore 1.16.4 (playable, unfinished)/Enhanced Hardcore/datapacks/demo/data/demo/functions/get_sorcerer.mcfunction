tag @s add sorcerer
tag @s remove lumberjack
tag @s remove miner
tag @s remove king
tag @s remove warrior
tag @s remove farmer

tellraw @a ["",{"selector":"@s","color":"dark_purple"},{"text":" is the Sorcerer","color":"dark_purple"}]
scoreboard players set sorcerer class 1

give @s written_book{display:{Name:'{"text":"Condensed Sorcerers\' Tome","color":"#A400D6"}',Lore:['{"text":"Cast basic spells!","color":"#AB5FC2"}']},spell:1b,title:"",author:"???",generation:2,pages:['[{"text":"Pazis\\n\\n\\n","color":"#FF0AB6","hoverEvent":{"action":"show_text","contents":[{"text":"Pacify nearby mobs (60 mana)"}]},"clickEvent":{"action":"run_command","value":"/trigger use_spell set 2"}},{"text":"Vidäs\\n\\n\\n","color":"#A60000","hoverEvent":{"action":"show_text","contents":[{"text":"Heal nearby allies (90 mana)","color":"#D40000"}]},"clickEvent":{"action":"run_command","value":"/trigger use_spell set 3"}},{"text":"Celeritas\\n\\n\\n","color":"#23A602","hoverEvent":{"action":"show_text","contents":[{"text":"Get a temporary speed boost (20 mana)","color":"#00D400"}]},"clickEvent":{"action":"run_command","value":"/trigger use_spell set 7"}},{"text":"Soarus","color":"#D49C02","hoverEvent":{"action":"show_text","contents":[{"text":"Make nearby mobs float (40 mana)","color":"#E8AA00"}]},"clickEvent":{"action":"run_command","value":"/trigger use_spell set 1"}}]']} 1
give @s red_dye{display:{Name:'{"text":"Blood Essence","color":"#A10000"}'},blood:1b} 6