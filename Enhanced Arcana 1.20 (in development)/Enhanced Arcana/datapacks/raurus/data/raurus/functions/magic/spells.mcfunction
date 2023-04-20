###### GENERAL

tellraw @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{magic_item:1b}}},tag=in_interstice] {"text":"- Cannot cast spells here -","color":"red"}

###### SOUL STAFF

execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run summon interaction ~ ~ ~ {Tags:["staff_switch_1"]}
scoreboard players add @e[type=interaction,tag=staff_switch_1] time 1

execute as @e[tag=staff_switch_1,type=interaction] on attacker run scoreboard players add @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] soul_selected_spell 1
scoreboard players set @a[scores={soul_selected_spell=4..}] soul_selected_spell 1
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=1}] run tellraw @s {"text":"- Selected Soul Pellet (20 mana) -","color":"blue"}
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=2}] run tellraw @s {"text":"- Selected Soul Arrows (50 mana) -","color":"blue"}
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=3}] run tellraw @s {"text":"- Selected Soul Orb (70 mana) -","color":"blue"}
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.00
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.30
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 0.70
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run particle soul_fire_flame ~ ~0.5 ~ 0.1 0.1 0.1 0.03 9 force

kill @e[type=interaction,tag=staff_switch_1,scores={time=2..}]


# soul pellet scroll
execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["soul_pellet"]}
tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..19,soul_selected_spell=1},nbt={SelectedItem:{tag:{soul_staff:1b}}},tag=!in_interstice] {"text":"- Not enough mana -","color":"red"}
effect give @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..},tag=!in_interstice] slowness 2 1 true
execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..},tag=!in_interstice] at @s positioned ~ ~1 ~ run particle soul_fire_flame ^ ^ ^2 0.5 0.5 0.5 0.06 10 force
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..},tag=!in_interstice] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 1.00
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..},tag=!in_interstice] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 2.00
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..},tag=!in_interstice] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.00
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..},tag=!in_interstice] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 1.50
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..},tag=!in_interstice] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.50
scoreboard players remove @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..},tag=!in_interstice] mana 20
scoreboard players add @e[tag=soul_pellet,type=marker] time 1
execute as @e[tag=soul_pellet,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=soul_pellet,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^2.8
execute at @e[tag=soul_pellet,type=marker,scores={time=1..}] run particle soul_fire_flame ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.7
kill @e[tag=soul_pellet,type=marker,scores={time=35..}]

execute at @e[tag=soul_pellet,type=marker,scores={time=1..}] run damage @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] 5 minecraft:magic
execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] run particle flash ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] run particle soul_fire_flame ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.50
execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.00
execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.80
execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.30

execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] run kill @s



















