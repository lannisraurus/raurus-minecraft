tag @s add knows_levitation_orb
scoreboard players add @s exp 80
clear @s carrot_on_a_stick{levitation_orb_scroll:1b} 1
playsound minecraft:block.enchantment_table.use ambient @a[distance=..4]
particle enchant ~ ~1 ~ 0.5 0.5 0.5 0 40 force