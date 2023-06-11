effect give @s slowness 1 1 true
execute positioned ~ ~1.5 ~ run particle end_rod ^ ^ ^2 0 0 0 0.05 10 force
playsound minecraft:block.beacon.activate ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
scoreboard players add @s exp 3
scoreboard players remove @s mana 45

execute anchored eyes run summon marker ~ ~ ~ {Tags:["levitation_orb"]}