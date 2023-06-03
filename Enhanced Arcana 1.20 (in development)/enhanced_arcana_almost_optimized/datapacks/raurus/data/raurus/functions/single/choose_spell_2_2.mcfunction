scoreboard players add @s light_selected_spell 1
tellraw @s {"text":"- Selected Levitae (15 mana) -","color":"yellow"}
playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.00
particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.03 9 force
kill @e[tag=staff_switch_2,distance=..2]