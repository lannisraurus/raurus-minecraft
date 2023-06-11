playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 0.6 1
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 0.6 1.5
playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 0.6 2
particle flash ~ ~ ~ 0 0 0 0 10 normal
summon zombie ~ ~ ~ {Tags:["selected"],DeathLootTable:"minecraft:empty"}
kill @s