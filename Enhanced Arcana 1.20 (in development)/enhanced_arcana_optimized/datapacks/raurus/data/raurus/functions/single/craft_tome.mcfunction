kill @e[type=item,distance=..1,nbt=!{Item:{Count:1b,tag:{arcane_pen:1b}}}]
summon item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#AA00FF","bold":true}'},tome:1b,Enchantments:[{}]}}}
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5