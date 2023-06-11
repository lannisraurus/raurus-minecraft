kill @e[type=item,distance=..1]
summon item ~ ~ ~ {Item:{id:"minecraft:campfire",Count:1b,tag:{display:{Name:'{"text":"Magical Bonfire","color":"#FF9100","bold":true}',Lore:['{"text":"Drop in the Tundra to summon a bonfire","color":"#FFC43B"}']},spawn_bonfire:1b,Enchantments:[{}]}}}
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5