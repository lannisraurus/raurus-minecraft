effect give @s slowness 2 0 true
scoreboard players add @s exp 2
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 2
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 1
playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 0
execute anchored eyes run summon marker ^ ^ ^7 {Tags:["electros_bolt"]}