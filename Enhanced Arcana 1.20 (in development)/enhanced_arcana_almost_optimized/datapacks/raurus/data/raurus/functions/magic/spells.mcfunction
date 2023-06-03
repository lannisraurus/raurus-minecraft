######################################################################################################### GENERAL - ANTI MAGIC ZONES

tellraw @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{magic_item:1b}}},tag=in_interstice] {"text":"- Cannot cast spells here -","color":"red"}



######################################################################################################### mana potion

scoreboard players add @a[scores={drink=1..},nbt={SelectedItem:{tag:{mana_potion:1b}}}] mana 70





######################################################################################################### celeritas talisman

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..19},nbt={SelectedItem:{tag:{celeritas_talisman:1b}}}] {"text":"- Not enough mana -","color":"red"}

execute as @a[nbt={SelectedItem:{tag:{celeritas_talisman:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..}] at @s run function raurus:single/celeritas






######################################################################################################### SOUL STAFF

execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s unless entity @e[tag=staff_switch_1,distance=..1] run summon interaction ~ ~ ~ {width:0.3f,Tags:["staff_switch_1"]}
execute as @e[tag=staff_switch_1] at @s run tp @s @a[limit=1,sort=nearest,distance=..1]
execute as @e[tag=staff_switch_1] at @s unless entity @a[distance=..0.1,limit=1,sort=nearest,nbt={SelectedItem:{tag:{soul_staff:1b}}}] run kill @s

execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=1}] at @s run function raurus:single/choose_spell_1_2
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=2}] at @s run function raurus:single/choose_spell_1_3
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=3}] at @s run function raurus:single/choose_spell_1_1

scoreboard players set @a[scores={soul_selected_spell=4..}] soul_selected_spell 1


###### soul pellet
execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,soul_selected_spell=1},tag=!in_interstice] at @s anchored eyes run function raurus:magic/spells/use_soul_pellet

scoreboard players add @e[tag=soul_pellet,type=marker] time 1
execute as @e[tag=soul_pellet,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=soul_pellet,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^2.8

execute at @e[tag=soul_pellet,type=marker,scores={time=1..}] run particle soul_fire_flame ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.7
kill @e[tag=soul_pellet,type=marker,scores={time=35..}]

execute as @e[tag=soul_pellet,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2,limit=1,sort=nearest,tag=!soul_pellet] run function raurus:magic/spells/soul_pellet_explode


###### soul arrows
execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,soul_selected_spell=2},tag=!in_interstice] at @s anchored eyes run function raurus:magic/spells/use_soul_arrows

scoreboard players add @e[tag=soul_arrows,type=marker] time 1
execute as @e[tag=soul_arrows,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=soul_arrows,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^10

execute as @e[tag=soul_arrows,type=marker] at @s run function raurus:magic/spells/soul_arrows
execute as @e[tag=soul_arrows_active,type=marker] at @s run function raurus:magic/spells/soul_arrows_active
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] at @s run spreadplayers ~ ~ 0 3 false @s
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] at @s run tp @s ~ ~7 ~
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] at @s run data merge entity @s {Motion:[0.0,-1.0,0.0]}
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] at @s run particle dust 0.5 0.5 1 3 ~ ~ ~ 0.3 0.1 0.3 0 3 force
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] at @s run tag @s add soul_arrow_selected

kill @e[type=arrow,tag=soul_arrow,nbt={inGround:1b}]
kill @e[tag=soul_arrows,type=marker,scores={time=200..}]
kill @e[tag=soul_arrows_active]


###### soul orb

execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,soul_selected_spell=3},tag=!in_interstice] at @s anchored eyes run function raurus:magic/spells/use_soul_orb


scoreboard players add @e[tag=soul_orb,type=marker] time 1
execute as @e[tag=soul_orb,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=soul_orb,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^3

execute as @e[tag=soul_orb] at @s run function raurus:magic/spells/soul_orb

kill @e[tag=soul_orb,type=marker,scores={time=500..}]





######################################################################################################### LIFE STAFF

# life orb

execute as @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{life_staff:1b}}}] at @s run function raurus:magic/spells/use_life_orb

scoreboard players add @e[tag=life_orb,type=marker] time 1
execute as @e[tag=life_orb,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=life_orb,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^2.8

execute at @e[tag=life_orb,type=marker] run particle happy_villager ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
execute as @e[tag=life_orb,type=marker] at @s run tp @s ^ ^ ^0.7

execute as @e[tag=life_orb,type=marker] at @s if entity @a[distance=..2,limit=1,sort=nearest] run function raurus:magic/spells/life_orb_explode

kill @e[tag=life_orb,type=marker,scores={time=120..}]


# regen aura

scoreboard players add @a[tag=use_life_regen] use_life_regen 1
effect give @a[scores={use_life_regen=1..20}] slowness 1 1 true
effect give @a[scores={use_life_regen=20..40}] slowness 1 2 true
effect give @a[scores={use_life_regen=40..60}] slowness 1 3 true

execute at @a[scores={use_life_regen=1..}] run particle happy_villager ~ ~ ~ 0.5 0 0.5 0.006 2 force

execute as @a[scores={use_life_regen=60..}] at @s run function raurus:magic/spells/life_regen










######################################################################################################### LIGHT STAFF

execute as @a[nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s unless entity @e[tag=staff_switch_2,distance=..1] run summon interaction ~ ~ ~ {width:0.3f,Tags:["staff_switch_2"]}
execute as @e[tag=staff_switch_2] at @s run tp @s @a[limit=1,sort=nearest,distance=..1]
execute as @e[tag=staff_switch_2] at @s unless entity @a[distance=..0.1,limit=1,sort=nearest,nbt={SelectedItem:{tag:{light_staff:1b}}}] run kill @s

execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={light_selected_spell=1}] at @s run function raurus:single/choose_spell_2_2
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={light_selected_spell=2}] at @s run function raurus:single/choose_spell_2_3
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={light_selected_spell=3}] at @s run function raurus:single/choose_spell_2_1

scoreboard players set @a[scores={light_selected_spell=4..}] light_selected_spell 1

## electros

execute as @a[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={light_selected_spell=1}] at @s anchored eyes run particle minecraft:instant_effect ^ ^ ^7 0 0 0 0 1 force @s
execute as @a[scores={use_carrot_on_a_stick=1..,light_selected_spell=1},nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s run function raurus:magic/spells/use_electros

execute at @e[tag=electros_bolt] run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 0.07 2 force
execute at @e[tag=electros_bolt] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.07 1 force
scoreboard players add @e[tag=electros_bolt] time 1
execute at @e[tag=electros_bolt,scores={time=30..}] run summon lightning_bolt
kill @e[tag=electros_bolt,scores={time=30..}]

execute at @e[tag=electros_bolt_2] run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 0.006 1 force
execute at @e[tag=electros_bolt_2,scores={time=70..}] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.01 1 force
scoreboard players add @e[tag=electros_bolt_2] time 1
execute as @e[tag=electros_bolt_2,scores={time=70..}] at @s if entity @e[distance=..1.6,tag=!electros_bolt_2] run summon lightning_bolt
execute as @e[tag=electros_bolt_2,scores={time=70..}] at @s if entity @e[distance=..1.6,tag=!electros_bolt_2] run kill @s
kill @e[tag=electros_bolt_2,scores={time=1000..}]


## levitae
execute as @a[scores={use_carrot_on_a_stick=1..,light_selected_spell=2},nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s run function raurus:magic/spells/use_levitae


# levitation orb

execute as @a[scores={use_carrot_on_a_stick=1..,light_selected_spell=3},nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s run function raurus:magic/spells/use_levitation_orb

execute at @e[tag=levitation_orb] run particle crit ~ ~ ~ 0.2 0.2 0.2 0 10 force
execute at @e[tag=levitation_orb] run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0 1 force
execute at @e[tag=levitation_orb] run particle enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0 2 force

scoreboard players add @e[tag=levitation_orb] time 1
execute as @e[tag=levitation_orb,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=levitation_orb,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^3
execute as @e[tag=levitation_orb,scores={time=1..}] at @s run tp @s ^ ^ ^0.35
kill @e[tag=levitation_orb,scores={time=70..}]


execute as @e[tag=levitation_orb,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2.6,tag=!levitation_orb] run function raurus:magic/spells/levitation_orb_explode


















































# VOID STAFF

execute as @a[nbt={SelectedItem:{tag:{void_staff:1b}}}] at @s unless entity @e[tag=staff_switch_3,distance=..1] run summon interaction ~ ~ ~ {width:0.3f,Tags:["staff_switch_3"]}
execute as @e[tag=staff_switch_3] at @s run tp @s @a[limit=1,sort=nearest,distance=..1]
execute as @e[tag=staff_switch_3] at @s unless entity @a[distance=..0.1,limit=1,sort=nearest,nbt={SelectedItem:{tag:{void_staff:1b}}}] run kill @s

execute as @e[tag=staff_switch_3,type=interaction] on attacker run scoreboard players add @s[nbt={SelectedItem:{tag:{void_staff:1b}}}] void_selected_spell 1
scoreboard players set @a[scores={void_selected_spell=4..}] void_selected_spell 1
execute as @e[tag=staff_switch_3,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{void_staff:1b}}},scores={void_selected_spell=1}] run tellraw @s {"text":"- Selected Rot Wave (50 mana) -","color":"light_purple"}
execute as @e[tag=staff_switch_3,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{void_staff:1b}}},scores={void_selected_spell=2}] run tellraw @s {"text":"- Selected Banishment Orb (120 mana) -","color":"light_purple"}
execute as @e[tag=staff_switch_3,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{void_staff:1b}}},scores={void_selected_spell=3}] run tellraw @s {"text":"- Selected Blink (15 mana) -","color":"light_purple"}
execute as @e[tag=staff_switch_3,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{void_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.00
execute as @e[tag=staff_switch_3,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{void_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.30
execute as @e[tag=staff_switch_3,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{void_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 0.70
execute as @e[tag=staff_switch_3,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{void_staff:1b}}}] at @s run particle witch ~ ~0.5 ~ 0.1 0.1 0.1 0.03 9 force






# rot wave

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..49,void_selected_spell=1},nbt={SelectedItem:{tag:{void_staff:1b}}},tag=!in_interstice,tag=knows_rot_wave] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,void_selected_spell=1},nbt={SelectedItem:{tag:{void_staff:1b}}},tag=!in_interstice,tag=!knows_rot_wave] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{void_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=50..,void_selected_spell=1},tag=!in_interstice,tag=knows_rot_wave] add use_rot_wave
effect give @a[tag=use_rot_wave] slowness 1 1 true



execute as @a[tag=use_rot_wave] at @s positioned ~ ~1 ~ run particle witch ^ ^ ^2 0 0 0 0.05 10 force
execute at @a[tag=use_rot_wave] run playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
execute at @a[tag=use_rot_wave] run playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 0.00
execute at @a[tag=use_rot_wave] run playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
scoreboard players add @a[tag=use_rot_wave] exp 5
scoreboard players remove @a[tag=use_rot_wave] mana 50

execute as @a[tag=use_rot_wave] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["rot_wave_spell","1"]}
execute as @a[tag=use_rot_wave] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["rot_wave_spell","2"]}
execute as @a[tag=use_rot_wave] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["rot_wave_spell","3"]}
execute at @e[tag=rot_wave_spell] run particle ash ~ ~ ~ 0.3 0.5 0.3 0 15 force

scoreboard players add @e[tag=rot_wave_spell,type=marker] time 1
execute as @e[tag=rot_wave_spell,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=1,tag=rot_wave_spell,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^3
execute as @e[tag=2,tag=rot_wave_spell,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^1 ^ ^3
execute as @e[tag=3,tag=rot_wave_spell,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^-1 ^ ^3

execute as @e[tag=rot_wave_spell,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.05


execute at @e[tag=rot_wave_spell] as @e[distance=..2,tag=!rot_wave_spell] run tag @s add rotting


kill @e[tag=rot_wave_spell,type=marker,scores={time=80..}]
tag @a remove use_rot_wave








# banishment orb

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..119,void_selected_spell=2},nbt={SelectedItem:{tag:{void_staff:1b}}},tag=!in_interstice,tag=knows_banishment_orb] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,void_selected_spell=2},nbt={SelectedItem:{tag:{void_staff:1b}}},tag=!in_interstice,tag=!knows_banishment_orb] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{void_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=120..,void_selected_spell=2},tag=!in_interstice,tag=knows_banishment_orb] add use_banishment_orb
effect give @a[tag=use_banishment_orb] slowness 1 3 true



execute as @a[tag=use_banishment_orb] at @s positioned ~ ~1 ~ run particle witch ^ ^ ^2 0 0 0 0.05 100 force
execute at @a[tag=use_banishment_orb] run playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
execute at @a[tag=use_banishment_orb] run playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 0.00
execute at @a[tag=use_banishment_orb] run playsound minecraft:entity.wither.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
execute at @a[tag=use_banishment_orb] run playsound minecraft:entity.ender_dragon.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
execute at @a[tag=use_banishment_orb] run playsound minecraft:entity.ender_dragon.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 0.00
execute at @a[tag=use_banishment_orb] run playsound minecraft:entity.ender_dragon.ambient ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
scoreboard players add @a[tag=use_banishment_orb] exp 5
scoreboard players remove @a[tag=use_banishment_orb] mana 120

execute as @a[tag=use_banishment_orb] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["banishment_orb"]}
execute at @e[tag=banishment_orb] run particle dust 1 0 1 0.3 ~ ~ ~ 0.3 0.3 0.3 0 15 force
execute at @e[tag=banishment_orb] run particle dust 0 0 0 1.7 ~ ~ ~ 0.1 0.1 0.1 0 15 force

scoreboard players add @e[tag=banishment_orb,type=marker] time 1
execute as @e[tag=banishment_orb,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=banishment_orb,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^3


execute as @e[tag=banishment_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.04

execute at @e[tag=banishment_orb,type=marker,scores={time=1..}] as @e[distance=..1.5,tag=!banishment_orb,limit=1,sort=nearest] run tag @s add banished
execute as @e[tag=banishment_orb,type=marker,scores={time=1..}] at @s if entity @e[distance=..1.5,tag=!banishment_orb] run kill @s

execute at @e[tag=banished] run playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 10 1
execute at @e[tag=banished] run playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 10 2
execute at @e[tag=banished] run playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 10 0
execute at @e[tag=banished] run particle dust 0 0 0 2 ~ ~1 ~ 0.4 0.5 0.4 0 100 force
execute as @e[tag=banished] at @s in raurus:abyss run tp @s ~ 2 ~
tag @e remove banished


kill @e[tag=banishment_orb,type=marker,scores={time=200..}]
tag @a remove use_banishment_orb








# blink

execute as @a[scores={void_selected_spell=3},nbt={SelectedItem:{tag:{void_staff:1b}}},tag=!in_interstice,tag=knows_blink] at @s anchored eyes run particle witch ^ ^ ^8 0 0 0 0 1 force @s

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..14,void_selected_spell=3},nbt={SelectedItem:{tag:{void_staff:1b}}},tag=!in_interstice,tag=knows_blink] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,void_selected_spell=3},nbt={SelectedItem:{tag:{void_staff:1b}}},tag=!in_interstice,tag=!knows_blink] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{void_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=15..,void_selected_spell=3},tag=!in_interstice,tag=knows_blink] add use_blink
scoreboard players remove @a[tag=use_blink] mana 15

execute as @a[tag=use_blink] at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute as @a[tag=use_blink] at @s run particle witch ~ ~1 ~ 0 0.5 0 0.03 30 force

execute as @a[tag=use_blink,nbt={Dimension:"minecraft:overworld"}] at @s anchored eyes run tp @s ^ ^ ^8
execute as @a[tag=use_blink,nbt={Dimension:"minecraft:the_nether"}] at @s anchored eyes run tp @s ^ ^ ^8

execute as @a[tag=use_blink] at @s run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute as @a[tag=use_blink] at @s run particle witch ~ ~1 ~ 0 0.5 0 0.03 30 force

execute at @a[tag=use_blink] run playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
execute at @a[tag=use_blink] run playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
execute at @a[tag=use_blink] run playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 0.7 0.00
execute at @a[tag=use_blink] run playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
execute at @a[tag=use_blink] run playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
execute at @a[tag=use_blink] run playsound minecraft:block.end_portal_frame.fill ambient @a[distance=..10] ~ ~ ~ 0.7 0.00


scoreboard players remove @a[tag=use_banishment_orb] mana 15


tag @a remove use_blink
















































##### BLOOD STAFF

execute as @a[nbt={SelectedItem:{tag:{blood_staff:1b}}}] at @s unless entity @e[tag=staff_switch_4,distance=..1] run summon interaction ~ ~ ~ {width:0.3f,Tags:["staff_switch_4"]}
execute as @e[tag=staff_switch_4] at @s run tp @s @a[limit=1,sort=nearest,distance=..1]
execute as @e[tag=staff_switch_4] at @s unless entity @a[distance=..0.1,limit=1,sort=nearest,nbt={SelectedItem:{tag:{blood_staff:1b}}}] run kill @s

execute as @e[tag=staff_switch_4,type=interaction] on attacker run scoreboard players add @s[nbt={SelectedItem:{tag:{blood_staff:1b}}}] blood_selected_spell 1
scoreboard players set @a[scores={blood_selected_spell=3..}] blood_selected_spell 1
execute as @e[tag=staff_switch_4,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{blood_staff:1b}}},scores={blood_selected_spell=1}] run tellraw @s {"text":"- Selected Life-steal ray (drains mana) -","color":"red"}
execute as @e[tag=staff_switch_4,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{blood_staff:1b}}},scores={blood_selected_spell=2}] run tellraw @s {"text":"- Selected Undead Rapture (40 mana) -","color":"red"}
execute as @e[tag=staff_switch_4,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{blood_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.00
execute as @e[tag=staff_switch_4,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{blood_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.30
execute as @e[tag=staff_switch_4,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{blood_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 0.70
execute as @e[tag=staff_switch_4,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{blood_staff:1b}}}] at @s run particle minecraft:crimson_spore ~ ~0.1 ~ 0 0 0 0 15 force





# lifesteal ray

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..5,blood_selected_spell=1},nbt={SelectedItem:{tag:{blood_staff:1b}}},tag=!in_interstice,tag=knows_lifesteal_ray] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,blood_selected_spell=1},nbt={SelectedItem:{tag:{blood_staff:1b}}},tag=!in_interstice,tag=!knows_lifesteal_ray] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{blood_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=5..,blood_selected_spell=1},tag=!in_interstice,tag=knows_lifesteal_ray] add use_lifesteal_ray
effect give @a[tag=use_lifesteal_ray] slowness 1 2 true



execute as @a[tag=use_lifesteal_ray] at @s positioned ~ ~1 ~ run particle minecraft:dripping_lava ^ ^ ^2 0.3 0.3 0.3 0.5 4 force
execute at @a[tag=use_lifesteal_ray] run playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=..10] ~ ~ ~ 0.3 2.00
execute at @a[tag=use_lifesteal_ray] run playsound minecraft:ambient.crimson_forest.mood ambient @a[distance=..10] ~ ~ ~ 0.2 1.00
scoreboard players remove @a[tag=use_lifesteal_ray] mana 3

execute as @a[tag=use_lifesteal_ray] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["lifesteal_orb"]}
execute at @e[tag=lifesteal_orb] run particle minecraft:falling_dripstone_lava ~ ~ ~ 0.2 0.2 0.2 0 5 force


scoreboard players add @e[tag=lifesteal_orb,type=marker] time 1
execute as @e[tag=lifesteal_orb,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=lifesteal_orb,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1.6
execute as @e[tag=lifesteal_orb_collect,tag=lifesteal_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^-1.6
execute as @e[tag=!lifesteal_orb_collect,tag=lifesteal_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^1.6


kill @e[tag=lifesteal_orb,type=marker,scores={time=15..}]
tag @a remove use_lifesteal_ray

execute as @e[tag=lifesteal_orb,type=marker,scores={time=1..}] at @s if entity @e[type=!arrow,type=!marker,type=!interaction,type=!armor_stand,type=!text_display,type=!block_display,type=!item,distance=..1.5,tag=!lifesteal_orb] run tag @s[tag=!lifesteal_orb_collect] add lifesteal_orb_explode
execute at @e[tag=lifesteal_orb_explode] as @e[type=!item,distance=..1.5,tag=!lifesteal_orb] run damage @s 0.2 minecraft:magic
execute at @e[tag=lifesteal_orb_explode] run particle minecraft:falling_dripstone_lava ~ ~ ~ 0.5 0.5 0.5 0 10 force
tag @e[tag=lifesteal_orb_explode] add lifesteal_orb_collect
scoreboard players set @e[tag=lifesteal_orb_explode] time -10
tag @e remove lifesteal_orb_explode

execute at @e[tag=lifesteal_orb_collect] as @a[distance=..4,limit=1] run particle crimson_spore ~ ~ ~ 0 0 0 0 10 force
execute at @e[tag=lifesteal_orb_collect] as @a[distance=..4,limit=1] run scoreboard players add @s lifesteal 1
execute as @e[tag=lifesteal_orb_collect] at @s if entity @a[distance=..4] run kill @s


execute at @e[tag=lifesteal_orb_collect] run particle crimson_spore ~ ~ ~ 0 0 0 0 1 force




scoreboard players add @a[scores={lifesteal=20..},tag=blood_demon] blood 2
effect give @a[scores={lifesteal=20..},tag=blood_demon] minecraft:saturation 1 1 true
scoreboard players add @a[scores={lifesteal=20..}] exp 1
effect give @a[scores={lifesteal=20..}] regeneration 8 0 true

execute as @a[scores={lifesteal=20..}] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 10 1
execute as @a[scores={lifesteal=20..},tag=blood_demon] at @s run playsound minecraft:entity.player.burp ambient @s ~ ~ ~ 10 1
scoreboard players set @a[scores={lifesteal=20..}] lifesteal 0








# undead Rapture

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..39,blood_selected_spell=2},nbt={SelectedItem:{tag:{blood_staff:1b}}},tag=!in_interstice,tag=knows_undead_rapture] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,blood_selected_spell=2},nbt={SelectedItem:{tag:{blood_staff:1b}}},tag=!in_interstice,tag=!knows_undead_rapture] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{blood_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=40..,blood_selected_spell=2},tag=!in_interstice,tag=knows_undead_rapture] add use_undead_rapture

scoreboard players add @a[tag=use_undead_rapture] undead_rapture_time 1

effect give @a[tag=use_undead_rapture,scores={undead_rapture_time=1..20}] slowness 1 0 true
effect give @a[tag=use_undead_rapture,scores={undead_rapture_time=20..40}] slowness 1 1 true
effect give @a[tag=use_undead_rapture,scores={undead_rapture_time=40..60}] slowness 1 2 true
effect give @a[tag=use_undead_rapture,scores={undead_rapture_time=60..80}] slowness 1 3 true
effect give @a[tag=use_undead_rapture,scores={undead_rapture_time=80..}] slowness 1 4 true

execute as @a[tag=use_undead_rapture,scores={undead_rapture_time=1}] at @s anchored eyes run particle crimson_spore ^ ^ ^2 0 0 0 0 5 force
execute as @a[tag=use_undead_rapture,scores={undead_rapture_time=20}] at @s anchored eyes run particle crimson_spore ^ ^ ^2 0 0 0 0 15 force
execute as @a[tag=use_undead_rapture,scores={undead_rapture_time=40}] at @s anchored eyes run particle crimson_spore ^ ^ ^2 0 0 0 0 20 force
execute as @a[tag=use_undead_rapture,scores={undead_rapture_time=60}] at @s anchored eyes run particle crimson_spore ^ ^ ^2 0 0 0 0 25 force
execute as @a[tag=use_undead_rapture,scores={undead_rapture_time=80}] at @s anchored eyes run particle crimson_spore ^ ^ ^2 0 0 0 0 50 force
execute as @a[tag=use_undead_rapture,scores={undead_rapture_time=80}] at @s anchored eyes run particle flash ^ ^ ^2 0 0 0 0 1 force

execute at @a[tag=use_undead_rapture,scores={undead_rapture_time=1}] run playsound minecraft:entity.blaze.ambient ambient @a[distance=..10] ~ ~ ~ 1 0.8
execute at @a[tag=use_undead_rapture,scores={undead_rapture_time=20}] run playsound minecraft:entity.blaze.ambient ambient @a[distance=..10] ~ ~ ~ 1 1
execute at @a[tag=use_undead_rapture,scores={undead_rapture_time=40}] run playsound minecraft:entity.blaze.ambient ambient @a[distance=..10] ~ ~ ~ 1 1.5
execute at @a[tag=use_undead_rapture,scores={undead_rapture_time=60}] run playsound minecraft:entity.blaze.ambient ambient @a[distance=..10] ~ ~ ~ 1 1.8
execute at @a[tag=use_undead_rapture,scores={undead_rapture_time=80}] run playsound minecraft:entity.blaze.ambient ambient @a[distance=..10] ~ ~ ~ 1 2
execute at @a[tag=use_undead_rapture,scores={undead_rapture_time=80}] run playsound minecraft:entity.blaze.ambient ambient @a[distance=..10] ~ ~ ~ 1 1
execute at @a[tag=use_undead_rapture,scores={undead_rapture_time=80}] run playsound minecraft:entity.blaze.ambient ambient @a[distance=..10] ~ ~ ~ 1 0

execute as @a[tag=use_undead_rapture,scores={undead_rapture_time=80}] at @s positioned ^ ^ ^2 run tag @e[type=!player,type=!item,type=!marker,type=!arrow,type=!interaction,distance=..2,limit=1,sort=nearest] add raptured

tag @a[scores={undead_rapture_time=80..}] remove use_undead_rapture
scoreboard players set @a[scores={undead_rapture_time=80..}] undead_rapture_time 0





execute as @e[tag=raptured,type=zombified_piglin] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=raptured,type=zombie_villager] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=raptured,type=drowned] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=raptured,type=zombie] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=raptured,type=skeleton] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=raptured,type=husk] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=raptured,type=creeper] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=raptured,type=stray] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute as @e[tag=raptured,type=wither_skeleton] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}


execute as @e[tag=raptured,type=zombie] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^0.12 ^ ^0.34 0 0 0 0 1 normal
execute as @e[tag=raptured,type=zombie] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.12 ^ ^0.34 0 0 0 0 1 normal

execute as @e[tag=raptured,type=zombie_villager] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^0.15 ^ ^0.33 0 0 0 0 1 normal
execute as @e[tag=raptured,type=zombie_villager] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.15 ^ ^0.33 0 0 0 0 1 normal

execute as @e[tag=raptured,type=drowned] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^0.1 ^ ^0.37 0 0 0 0 1 normal
execute as @e[tag=raptured,type=drowned] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.1 ^ ^0.37 0 0 0 0 1 normal

execute as @e[tag=raptured,type=zombified_piglin] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^0.15 ^ ^0.3 0 0 0 0 1 normal
execute as @e[tag=raptured,type=zombified_piglin] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.15 ^ ^0.3 0 0 0 0 1 normal

execute as @e[tag=raptured,type=skeleton] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^0.15 ^ ^0.33 0 0 0 0 1 normal
execute as @e[tag=raptured,type=skeleton] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.15 ^ ^0.33 0 0 0 0 1 normal

execute as @e[tag=raptured,type=husk] at @s positioned ~ ~0.1 ~ anchored eyes run particle dust 1 0 0 0.5 ^0.15 ^ ^0.34 0 0 0 0 1 normal
execute as @e[tag=raptured,type=husk] at @s positioned ~ ~0.1 ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.15 ^ ^0.34 0 0 0 0 1 normal

execute as @e[tag=raptured,type=creeper] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^0.1 ^ ^0.33 0 0 0 0 1 normal
execute as @e[tag=raptured,type=creeper] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.1 ^ ^0.33 0 0 0 0 1 normal

execute as @e[tag=raptured,type=stray] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^0.14 ^ ^0.32 0 0 0 0 1 normal
execute as @e[tag=raptured,type=stray] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.14 ^ ^0.32 0 0 0 0 1 normal

execute as @e[tag=raptured,type=wither_skeleton] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^0.15 ^ ^0.33 0 0 0 0 1 normal
execute as @e[tag=raptured,type=wither_skeleton] at @s positioned ~ ~ ~ anchored eyes run particle dust 1 0 0 0.5 ^-0.15 ^ ^0.33 0 0 0 0 1 normal