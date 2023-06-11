summon marker ~ ~ ~ {Tags:["soul_arrows"]}

effect give @s slowness 2 2 true

particle end_rod ^ ^ ^2 0.5 0.5 0.5 0.06 10 force
playsound minecraft:entity.vex.hurt ambient @a[distance=..10] ~ ~ ~ 2 1.00
playsound minecraft:entity.vex.hurt ambient @a[distance=..10] ~ ~ ~ 2 0.80
playsound minecraft:entity.vex.hurt ambient @a[distance=..10] ~ ~ ~ 2 1.20
playsound minecraft:entity.vex.hurt ambient @a[distance=..10] ~ ~ ~ 2 0.00
scoreboard players add @s exp 4
scoreboard players remove @s mana 50