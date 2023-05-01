###### GENERAL

tellraw @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{magic_item:1b}}},tag=in_interstice] {"text":"- Cannot cast spells here -","color":"red"}

######################################################################################################### SOUL STAFF

execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s unless entity @e[tag=staff_switch_1,distance=..1] run summon interaction ~ ~ ~ {width:0.3f,Tags:["staff_switch_1"]}
execute as @e[tag=staff_switch_1] at @s run tp @s @a[limit=1,sort=nearest,distance=..1]
execute as @e[tag=staff_switch_1] at @s unless entity @a[distance=..0.1,limit=1,sort=nearest,nbt={SelectedItem:{tag:{magic_item:1b}}}] run kill @s

execute as @e[tag=staff_switch_1,type=interaction] on attacker run scoreboard players add @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] soul_selected_spell 1
scoreboard players set @a[scores={soul_selected_spell=4..}] soul_selected_spell 1
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=1}] run tellraw @s {"text":"- Selected Soul Pellet (20 mana) -","color":"blue"}
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=2}] run tellraw @s {"text":"- Selected Soul Arrows (50 mana) -","color":"blue"}
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={soul_selected_spell=3}] run tellraw @s {"text":"- Selected Soul Orb (70 mana) -","color":"blue"}
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.00
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.30
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 0.70
execute as @e[tag=staff_switch_1,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{soul_staff:1b}}}] at @s run particle soul_fire_flame ~ ~0.5 ~ 0.1 0.1 0.1 0.03 9 force



# soul pellet scroll
execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["soul_pellet"]}
tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..19,soul_selected_spell=1},nbt={SelectedItem:{tag:{soul_staff:1b}}},tag=!in_interstice,tag=knows_soul_pellet] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,soul_selected_spell=1},nbt={SelectedItem:{tag:{soul_staff:1b}}},tag=!in_interstice,tag=!knows_soul_pellet] {"text":"- You do not know this spell -","color":"red"}
effect give @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] slowness 2 1 true
execute as @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] at @s positioned ~ ~1 ~ run particle soul_fire_flame ^ ^ ^2 0.5 0.5 0.5 0.06 10 force
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 1.00
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 2.00
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.00
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 1.50
execute at @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..10] ~ ~ ~ 3 0.50
scoreboard players add @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] exp 2
scoreboard players remove @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,soul_selected_spell=1},tag=!in_interstice,tag=knows_soul_pellet] mana 20

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


# soul arrows
tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..49,soul_selected_spell=2},nbt={SelectedItem:{tag:{soul_staff:1b}}},tag=!in_interstice,tag=knows_soul_arrows] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,soul_selected_spell=2},nbt={SelectedItem:{tag:{soul_staff:1b}}},tag=!in_interstice,tag=!knows_soul_arrows] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=50..,soul_selected_spell=2},tag=!in_interstice,tag=knows_soul_arrows] add use_soul_arrows
effect give @a[tag=use_soul_arrows] slowness 2 2 true



execute as @a[tag=use_soul_arrows] at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^2 0.5 0.5 0.5 0.06 10 force
execute at @a[tag=use_soul_arrows] run playsound minecraft:entity.vex.hurt ambient @a[distance=..10] ~ ~ ~ 2 1.00
execute at @a[tag=use_soul_arrows] run playsound minecraft:entity.vex.hurt ambient @a[distance=..10] ~ ~ ~ 2 0.80
execute at @a[tag=use_soul_arrows] run playsound minecraft:entity.vex.hurt ambient @a[distance=..10] ~ ~ ~ 2 1.20
execute at @a[tag=use_soul_arrows] run playsound minecraft:entity.vex.hurt ambient @a[distance=..10] ~ ~ ~ 2 0.00
scoreboard players add @a[tag=use_soul_arrows] exp 4
scoreboard players remove @a[tag=use_soul_arrows] mana 50

execute as @a[tag=use_soul_arrows] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["soul_arrows"]}

scoreboard players add @e[tag=soul_arrows,type=marker] time 1
execute as @e[tag=soul_arrows,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=soul_arrows,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^10
execute as @e[tag=soul_arrows,type=marker] at @s run tp @s ~ ~ ~ facing entity @e[type=!item,limit=1,sort=nearest,distance=..4,tag=!soul_arrows,type=!arrow]
execute as @e[tag=soul_arrows,type=marker,scores={time=1..}] at @s if entity @e[type=!item,limit=1,sort=nearest,distance=..5,tag=!soul_arrows,type=!arrow] run tp ^ ^ ^0.1
execute as @e[tag=soul_arrows,type=marker,scores={time=1..}] at @s if entity @e[type=!item,limit=1,sort=nearest,distance=..4,tag=!soul_arrows,type=!arrow] run tp ^ ^ ^0.1
execute as @e[tag=soul_arrows,type=marker,scores={time=1..}] at @s if entity @e[type=!item,limit=1,sort=nearest,distance=..3,tag=!soul_arrows,type=!arrow] run tp ^ ^ ^0.1
execute as @e[tag=soul_arrows,type=marker,scores={time=1..}] at @s if entity @e[type=!item,limit=1,sort=nearest,distance=..2,tag=!soul_arrows,type=!arrow] run tp ^ ^ ^0.1

execute as @e[tag=soul_arrows,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.05

execute at @e[tag=soul_arrows,type=marker,scores={time=1..}] run summon marker ~ -100 ~ {Tags:["soul_arrows_active"]} 

execute at @e[tag=soul_arrows_active] run summon arrow ~ ~ ~ {PierceLevel:100b,Tags:["soul_arrow"],SoundEvent:"entity.enderman.teleport"}
execute at @e[tag=soul_arrows_active] run summon arrow ~ ~ ~ {PierceLevel:100b,Tags:["soul_arrow"],SoundEvent:"entity.enderman.teleport"}
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] at @s run spreadplayers ~ ~ 0 3 false @s
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] at @s run tp @s ~ ~7 ~
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] at @s run particle dust 0.5 0.5 1 3 ~ ~ ~ 0.3 0.1 0.3 0 3 force
execute as @e[tag=soul_arrow,tag=!soul_arrow_selected] run data merge entity @s {Motion:[0.0,-1.0,0.0]}

tag @e[tag=soul_arrow] add soul_arrow_selected
kill @e[type=arrow,tag=soul_arrow,nbt={inGround:1b}]

kill @e[tag=soul_arrows,type=marker,scores={time=180..}]
kill @e[tag=soul_arrows_active]

tag @a remove use_soul_arrows








# mana orb

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..69,soul_selected_spell=3},nbt={SelectedItem:{tag:{soul_staff:1b}}},tag=!in_interstice,tag=knows_soul_orb] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,soul_selected_spell=3},nbt={SelectedItem:{tag:{soul_staff:1b}}},tag=!in_interstice,tag=!knows_soul_orb] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{soul_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=70..,soul_selected_spell=3},tag=!in_interstice,tag=knows_soul_orb] add use_soul_orb
effect give @a[tag=use_soul_orb] slowness 2 3 true



execute as @a[tag=use_soul_orb] at @s positioned ~ ~1 ~ run particle minecraft:sonic_boom ^ ^ ^2 0 0 0 0 2 force
execute at @a[tag=use_soul_orb] run playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
execute at @a[tag=use_soul_orb] run playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 1.75
execute at @a[tag=use_soul_orb] run playsound minecraft:entity.warden.sonic_boom ambient @a[distance=..10] ~ ~ ~ 0.7 1.00
scoreboard players add @a[tag=use_soul_orb] exp 5
scoreboard players remove @a[tag=use_soul_orb] mana 70

execute as @a[tag=use_soul_orb] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["soul_orb"]}
execute at @e[tag=soul_orb] run particle minecraft:glow ~ ~ ~ 0.2 0.2 0.2 0 10 force
execute at @e[tag=soul_orb] run particle minecraft:glow_squid_ink ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=soul_orb] run particle minecraft:warped_spore ~ ~ ~ 0 0 0 0 1 force

scoreboard players add @e[tag=soul_orb,type=marker] time 1
execute as @e[tag=soul_orb,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=soul_orb,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^3
execute as @e[tag=soul_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.13


kill @e[tag=soul_orb,type=marker,scores={time=500..}]
tag @a remove use_soul_orb

execute as @e[tag=soul_orb,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2.6,tag=!soul_orb] run tag @s add soul_orb_explode
execute at @e[tag=soul_orb_explode] as @e[type=!item,distance=..6.5,tag=!soul_orb] run damage @s 14 minecraft:magic
execute at @e[tag=soul_orb_explode] run tag @e[type=!item,distance=..6.5,tag=!soul_orb] add rooted
execute at @e[tag=soul_orb_explode] run particle flash ~ ~ ~ 0.1 0.1 0.1 0 10 force
execute at @e[tag=soul_orb_explode] run particle glow ~ ~ ~ 0.2 0.2 0.2 0.01 20 force
execute at @e[tag=soul_orb_explode] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 0.50
execute at @e[tag=soul_orb_explode] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 0.00
execute at @e[tag=soul_orb_explode] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 0.80
execute at @e[tag=soul_orb_explode] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 1.20

kill @e[tag=soul_orb_explode]


















######################################################################################################### LIFE STAFF

# life orb

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..19,is_sneaking=0},nbt={SelectedItem:{tag:{life_staff:1b}}}] {"text":"- Not enough mana -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{life_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,is_sneaking=0}] add use_life_orb
effect give @a[tag=use_life_orb] slowness 2 0 true



execute as @a[tag=use_life_orb] at @s positioned ~ ~1.3 ~ run particle minecraft:happy_villager ^ ^ ^2 0.2 0.2 0.2 400 6 force
execute at @a[tag=use_life_orb] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 0.3 2.00
execute at @a[tag=use_life_orb] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 0.3 1.75
execute at @a[tag=use_life_orb] run playsound minecraft:entity.allay.hurt ambient @a[distance=..10] ~ ~ ~ 0.3 1.00
scoreboard players add @a[tag=use_life_orb] exp 2
scoreboard players remove @a[tag=use_life_orb] mana 20

execute as @a[tag=use_life_orb] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["life_orb"]}



scoreboard players add @e[tag=life_orb,type=marker] time 1
execute as @e[tag=life_orb,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=life_orb,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^2.8
execute at @e[tag=life_orb,type=marker,scores={time=1..}] run particle minecraft:spore_blossom_air ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
execute at @e[tag=life_orb,type=marker,scores={time=1..}] run particle happy_villager ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
execute as @e[tag=life_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.7
kill @e[tag=life_orb,type=marker,scores={time=120..}]


execute as @e[tag=life_orb,type=marker,scores={time=1..}] at @s if entity @a[distance=..2,limit=1,sort=nearest] run tag @s add life_orb_explode
execute at @e[tag=life_orb_explode] run effect give @a[distance=..2,limit=1,sort=nearest] instant_health 1 0 true
execute at @e[tag=life_orb_explode] run particle happy_villager ~ ~ ~ 1 1 1 0.006 10 force
execute at @e[tag=life_orb_explode] run particle flash ~ ~ ~ 0.1 0.1 0.1 0 3 force
execute at @e[tag=life_orb_explode] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.20
kill @e[tag=life_orb_explode]

tag @a remove use_life_orb


# regen aura

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..19,is_sneaking=1..},nbt={SelectedItem:{tag:{life_staff:1b}}}] {"text":"- Not enough mana -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{life_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,is_sneaking=1..}] add use_life_regen
scoreboard players add @a[nbt={SelectedItem:{tag:{life_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,is_sneaking=1..}] exp 3
scoreboard players remove @a[nbt={SelectedItem:{tag:{life_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..,is_sneaking=1..}] mana 20

scoreboard players add @a[tag=use_life_regen] use_life_regen 1
effect give @a[scores={use_life_regen=1..20}] slowness 1 1 true
effect give @a[scores={use_life_regen=20..40}] slowness 1 2 true
effect give @a[scores={use_life_regen=40..60}] slowness 1 3 true

execute at @a[scores={use_life_regen=1..}] run particle happy_villager ~ ~ ~ 0.5 0 0.5 0.006 2 force

execute at @a[scores={use_life_regen=60..}] run particle happy_villager ~ ~ ~ 1.5 1.5 1.5 0.006 50 force
execute at @a[scores={use_life_regen=60..}] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.20
execute at @a[scores={use_life_regen=60..}] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.00
execute at @a[scores={use_life_regen=60..}] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 0.8
execute at @a[scores={use_life_regen=60..}] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.4
execute at @a[scores={use_life_regen=60..}] run tag @a[distance=..5] add regen
tag @a[scores={use_life_regen=60..}] remove use_life_regen
scoreboard players set @a[scores={use_life_regen=60..}] use_life_regen 0





####################################### mana potion

scoreboard players add @a[scores={drink=1..},nbt={SelectedItem:{tag:{mana_potion:1b}}}] mana 70





####################################### celeritas talisman

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..19},nbt={SelectedItem:{tag:{celeritas_talisman:1b}}}] {"text":"- Not enough mana -","color":"red"}
effect give @a[nbt={SelectedItem:{tag:{celeritas_talisman:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..}] speed 5 2 true
execute at @a[nbt={SelectedItem:{tag:{celeritas_talisman:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..}] run playsound minecraft:entity.enderman.teleport ambient @a[distance=..5] ~ ~ ~ 0.7 2
execute at @a[nbt={SelectedItem:{tag:{celeritas_talisman:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..}] run playsound minecraft:entity.enderman.teleport ambient @a[distance=..5] ~ ~ ~ 0.7 1.75
execute at @a[nbt={SelectedItem:{tag:{celeritas_talisman:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..}] run playsound minecraft:entity.enderman.teleport ambient @a[distance=..5] ~ ~ ~ 0.7 1.5
execute at @a[nbt={SelectedItem:{tag:{celeritas_talisman:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..}] run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 20 normal
scoreboard players remove @a[nbt={SelectedItem:{tag:{celeritas_talisman:1b}}},scores={use_carrot_on_a_stick=1..,mana=20..}] mana 20








































####################### LIGHT STAFF


execute as @a[nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s unless entity @e[tag=staff_switch_2,distance=..1] run summon interaction ~ ~ ~ {width:0.3f,Tags:["staff_switch_2"]}
execute as @e[tag=staff_switch_2] at @s run tp @s @a[limit=1,sort=nearest,distance=..1]
execute as @e[tag=staff_switch_2] at @s unless entity @a[distance=..0.1,limit=1,sort=nearest,nbt={SelectedItem:{tag:{magic_item:1b}}}] run kill @s

execute as @e[tag=staff_switch_2,type=interaction] on attacker run scoreboard players add @s[nbt={SelectedItem:{tag:{light_staff:1b}}}] light_selected_spell 1
scoreboard players set @a[scores={light_selected_spell=4..}] light_selected_spell 1
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={light_selected_spell=1}] run tellraw @s {"text":"- Selected Electros (30 mana) -","color":"yellow"}
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={light_selected_spell=2}] run tellraw @s {"text":"- Selected Levitae (15 mana) -","color":"yellow"}
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={light_selected_spell=3}] run tellraw @s {"text":"- Selected Levitation Orb (45 mana) -","color":"yellow"}
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.00
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 1.30
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s run playsound minecraft:block.dispenser.dispense ambient @a[distance=..4] ~ ~ ~ 1 0.70
execute as @e[tag=staff_switch_2,type=interaction] on attacker as @s[nbt={SelectedItem:{tag:{light_staff:1b}}}] at @s run particle end_rod ~ ~0.5 ~ 0.1 0.1 0.1 0.03 9 force




## electros

execute as @a[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={light_selected_spell=1}] at @s anchored eyes run particle minecraft:instant_effect ^ ^ ^7 0 0 0 0 1 force @s

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..29,light_selected_spell=1},nbt={SelectedItem:{tag:{light_staff:1b}}},tag=!in_interstice,tag=knows_electros] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,light_selected_spell=1},nbt={SelectedItem:{tag:{light_staff:1b}}},tag=!in_interstice,tag=!knows_electros] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=30..,light_selected_spell=1,is_sneaking=0},tag=!in_interstice,tag=knows_electros] add use_electros
tag @a[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=30..,light_selected_spell=1,is_sneaking=1..},tag=!in_interstice,tag=knows_electros] add use_electros_2
effect give @a[tag=use_electros] slowness 2 0 true
effect give @a[tag=use_electros_2] slowness 2 1 true
scoreboard players remove @a[tag=use_electros] mana 30
scoreboard players remove @a[tag=use_electros_2] mana 30

scoreboard players add @a[tag=use_electros] exp 2
scoreboard players add @a[tag=use_electros_2] exp 2

execute at @a[tag=use_electros] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 2
execute at @a[tag=use_electros] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 1
execute at @a[tag=use_electros] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 0
execute at @a[tag=use_electros_2] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 2
execute at @a[tag=use_electros_2] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 1
execute at @a[tag=use_electros_2] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..8] ~ ~ ~ 1 0

execute as @a[tag=use_electros] at @s anchored eyes run summon marker ^ ^ ^7 {Tags:["electros_bolt"]}
execute at @e[tag=electros_bolt] run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 0.07 2 force
execute at @e[tag=electros_bolt] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.07 1 force

scoreboard players add @e[tag=electros_bolt] time 1

execute at @e[tag=electros_bolt,scores={time=30..}] run summon lightning_bolt
kill @e[tag=electros_bolt,scores={time=30..}]





execute as @a[tag=use_electros_2] at @s anchored eyes run summon marker ^ ^ ^7 {Tags:["electros_bolt_2"]}
execute at @e[tag=electros_bolt_2] run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 0.006 1 force
execute at @e[tag=electros_bolt_2,scores={time=70..}] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.01 1 force

scoreboard players add @e[tag=electros_bolt_2] time 1

execute as @e[tag=electros_bolt_2,scores={time=70..}] at @s if entity @e[distance=..1.6,tag=!electros_bolt_2] run summon lightning_bolt
execute as @e[tag=electros_bolt_2,scores={time=70..}] at @s if entity @e[distance=..1.6,tag=!electros_bolt_2] run kill @s

kill @e[tag=electros_bolt_2,scores={time=1000..}]


tag @a remove use_electros
tag @a remove use_electros_2







## levitae

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..14,light_selected_spell=2},nbt={SelectedItem:{tag:{light_staff:1b}}},tag=!in_interstice,tag=knows_levitae] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,light_selected_spell=2},nbt={SelectedItem:{tag:{light_staff:1b}}},tag=!in_interstice,tag=!knows_levitae] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=15..,light_selected_spell=2},tag=!in_interstice,tag=knows_levitae] add use_levitae
effect give @a[tag=use_levitae] levitation 1 2 true
scoreboard players remove @a[tag=use_levitae] mana 15
execute at @a[tag=use_levitae] run particle end_rod ~ ~1 ~ 0.3 0.3 0.3 0.08 6 force
execute at @a[tag=use_levitae] run playsound minecraft:block.beacon.power_select ambient @a[distance=..6] ~ ~ ~ 1 2
tag @a remove use_levitae












# levitation orb

tellraw @a[scores={use_carrot_on_a_stick=1..,mana=..44,light_selected_spell=3},nbt={SelectedItem:{tag:{light_staff:1b}}},tag=!in_interstice,tag=knows_levitation_orb] {"text":"- Not enough mana -","color":"red"}
tellraw @a[scores={use_carrot_on_a_stick=1..,light_selected_spell=3},nbt={SelectedItem:{tag:{light_staff:1b}}},tag=!in_interstice,tag=!knows_levitation_orb] {"text":"- You do not know this spell -","color":"red"}
tag @a[nbt={SelectedItem:{tag:{light_staff:1b}}},scores={use_carrot_on_a_stick=1..,mana=45..,light_selected_spell=3},tag=!in_interstice,tag=knows_levitation_orb] add use_levitation_orb
effect give @a[tag=use_levitation_orb] slowness 1 1 true



execute as @a[tag=use_levitation_orb] at @s positioned ~ ~1 ~ run particle end_rod ^ ^ ^2 0 0 0 0.05 10 force
execute at @a[tag=use_levitation_orb] run playsound minecraft:block.beacon.activate ambient @a[distance=..10] ~ ~ ~ 0.7 2.00
scoreboard players add @a[tag=use_levitation_orb] exp 5
scoreboard players remove @a[tag=use_levitation_orb] mana 45

execute as @a[tag=use_levitation_orb] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["levitation_orb"]}
execute at @e[tag=levitation_orb] run particle crit ~ ~ ~ 0.2 0.2 0.2 0 10 force
execute at @e[tag=levitation_orb] run particle end_rod ~ ~ ~ 0.3 0.3 0.3 0 1 force
execute at @e[tag=levitation_orb] run particle enchanted_hit ~ ~ ~ 0.2 0.2 0.2 0 2 force

scoreboard players add @e[tag=levitation_orb,type=marker] time 1
execute as @e[tag=levitation_orb,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=levitation_orb,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^3
execute as @e[tag=levitation_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.35


kill @e[tag=levitation_orb,type=marker,scores={time=70..}]
tag @a remove use_levitation_orb

execute as @e[tag=levitation_orb,type=marker,scores={time=1..}] at @s if entity @e[type=!item,distance=..2.6,tag=!levitation_orb] run tag @s add levitation_orb_explode
execute at @e[tag=levitation_orb_explode] as @e[type=!item,distance=..6.5,tag=!levitation_orb] run damage @s 2 minecraft:magic
execute at @e[tag=levitation_orb_explode] run effect give @e[type=!item,distance=..6.5,tag=!soul_orb] levitation 10 0 true
execute at @e[tag=levitation_orb_explode] run particle flash ~ ~ ~ 0.1 0.1 0.1 0 10 force
execute at @e[tag=levitation_orb_explode] run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.01 20 force
execute at @e[tag=levitation_orb_explode] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 2
execute at @e[tag=levitation_orb_explode] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 3 1.6
execute at @e[tag=levitation_orb_explode] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 2
execute at @e[tag=levitation_orb_explode] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..20] ~ ~ ~ 3 1.7

kill @e[tag=levitation_orb_explode]















































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