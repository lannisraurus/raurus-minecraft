scoreboard players add @a[tag=sky_castle_tp] sky_castle_tp 1

effect give @a[scores={sky_castle_tp=1}] slowness 5 1 true
tellraw @a[scores={sky_castle_tp=1}] {"text":"A celestial presence calls to you...","italic":"true","color":"#F8E3FF"}
effect give @a[scores={sky_castle_tp=1}] nausea 10 1 true
execute as @a[scores={sky_castle_tp=1}] at @s run playsound minecraft:block.portal.trigger ambient @s ~ ~ ~ 100 1.00
effect give @a[scores={sky_castle_tp=30}] levitation 10 100 true

effect give @a[scores={sky_castle_tp=70}] blindness 3 100 true

execute as @a[scores={sky_castle_tp=80}] in minecraft:hardcore_dimensions/void run tp @s 580 150 520
effect clear @a[scores={sky_castle_tp=80}] levitation

title @a[scores={sky_castle_tp=120}] title {"text":"Sky Castle","bold":"true","color":"#F8E3FF"}
execute as @a[scores={sky_castle_tp=120}] at @s run playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 100 1.00
execute as @a[scores={sky_castle_tp=120}] at @s run playsound minecraft:entity.wither.break_block ambient @s ~ ~ ~ 100 0.00
execute as @a[scores={sky_castle_tp=120}] at @s run particle cloud ~ ~ ~ 1 1 1 0.1 100 force
tag @a[scores={sky_castle_tp=120}] remove sky_castle_tp
scoreboard players set @a[scores={sky_castle_tp=120}] sky_castle_tp 0