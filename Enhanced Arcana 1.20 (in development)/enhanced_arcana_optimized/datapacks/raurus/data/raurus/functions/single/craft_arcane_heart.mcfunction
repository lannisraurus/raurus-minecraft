kill @e[type=item,distance=..1]
summon item ~ ~ ~ {Item:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'{"text":"Arcane Heart","color":"dark_red","bold":"true"}',Lore:['{"text":"Blood, pure physical essence. Give to dead player to revive them","color":"red"}']},ghost_revival:1b,Enchantments:[{}]}}}
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5