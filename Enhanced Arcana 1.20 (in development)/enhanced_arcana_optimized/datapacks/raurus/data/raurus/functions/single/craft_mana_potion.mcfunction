kill @e[type=item,distance=..1]
summon item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Mana Potion","color":"#0008FF"}',Lore:['{"text":"Restores 100 Mana","color":"#4D6AFF"}']},mana_potion:1b,show_mana:1b,CustomPotionColor:4607}}}
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5