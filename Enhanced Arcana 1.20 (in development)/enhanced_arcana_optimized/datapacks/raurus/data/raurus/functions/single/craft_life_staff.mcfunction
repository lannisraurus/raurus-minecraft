kill @e[type=item,distance=..1]
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Staff of Life","color":"#009400","bold":true}',Lore:['{"text":"Right-Click - Player healing orb (30 mana)","color":"#3CFF00"}','{"text":"Shift Right-click: Regen near players (30 mana)","color":"#3CFF00"}']},Unbreakable:1b,CustomModelData:11,life_staff:1b,Enchantments:[{}]}}}
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5