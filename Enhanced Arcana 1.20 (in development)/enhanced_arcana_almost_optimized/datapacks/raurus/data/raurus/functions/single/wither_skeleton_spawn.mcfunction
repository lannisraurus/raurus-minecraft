playsound minecraft:entity.wither.spawn ambient @a[distance=..10] ~ ~ ~ 0.6 1
playsound minecraft:entity.wither.spawn ambient @a[distance=..10] ~ ~ ~ 0.6 1.5
playsound minecraft:entity.wither.spawn ambient @a[distance=..10] ~ ~ ~ 0.6 2
particle flash ~ ~ ~ 0 0 0 0 10 normal
summon wither_skeleton ~ ~ ~ {Tags:["selected"]}
kill @s