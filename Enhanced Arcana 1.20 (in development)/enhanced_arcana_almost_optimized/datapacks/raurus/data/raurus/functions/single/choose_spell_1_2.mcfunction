scoreboard players add @s soul_selected_spell 1
tellraw @s {"text":"- Selected Soul Arrows (50 mana) -","color":"blue"}
playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.00
particle soul_fire_flame ~ ~0.5 ~ 0.1 0.1 0.1 0.03 9 force
kill @e[tag=staff_switch_1,distance=..2]