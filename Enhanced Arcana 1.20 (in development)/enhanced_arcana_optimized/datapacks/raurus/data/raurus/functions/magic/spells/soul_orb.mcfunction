particle minecraft:glow ~ ~ ~ 0.2 0.2 0.2 0 10 force
particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0 1 force
particle minecraft:warped_spore ~ ~ ~ 0 0 0 0 1 force
tp @s ^ ^ ^0.25

execute if entity @e[type=!item,distance=..2.6,tag=!soul_orb] run function raurus:magic/spells/soul_orb_explode
