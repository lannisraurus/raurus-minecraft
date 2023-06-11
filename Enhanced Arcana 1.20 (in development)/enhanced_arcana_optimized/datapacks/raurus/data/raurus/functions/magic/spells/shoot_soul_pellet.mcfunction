summon marker ~ ~ ~ {Tags:["soul_pellet"]}

effect give @s slowness 2 1 true
particle soul_fire_flame ^ ^ ^2 0.5 0.5 0.5 0.06 10 force
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 1.00
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 2.00
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.00
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 1.50
playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.50
scoreboard players add @s exp 2
scoreboard players remove @s mana 20