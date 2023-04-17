scoreboard players set @a is_running 0
scoreboard players set @a is_attacking 0
scoreboard players set @a is_jumping 0
scoreboard players set @a is_sneaking 0
scoreboard players set @a is_walking 0
scoreboard players set @a is_crouching 0
scoreboard players set @a[scores={is_hurt=1..}] cloak_time 0
scoreboard players set @a is_hurt 0
scoreboard players set @a talk 0
scoreboard players set @a right_click 0
scoreboard players set @a death1tick 0
scoreboard players set @a killmob1tick 0
scoreboard players set @a killplayer1tick 0
scoreboard players set @a leave_game 0
scoreboard players set @a drop_spell 0
scoreboard players set @a head_change 0


scoreboard players set @a[scores={ lvl_agi=1.. }] lvl_agi 0
scoreboard players set @a[scores={ lvl_str=1.. }] lvl_str 0
scoreboard players set @a[scores={ lvl_dex=1.. }] lvl_dex 0
scoreboard players set @a[scores={ lvl_att=1.. }] lvl_att 0
scoreboard players set @a[scores={ lvl_kno=1.. }] lvl_kno 0
scoreboard players set @a[scores={ lvl_vit=1.. }] lvl_vit 0
scoreboard players set @a[scores={ lvl_end=1.. }] lvl_end 0
scoreboard players set @a[scores={lvl_up=..0}] lvl_up 0



scoreboard players set @a power_slots 0
scoreboard players set @a count_power 0


tag @a remove update_player

tag @a remove melee1
tag @a remove melee2
tag @a remove melee3
tag @a remove melee4
tag @a remove melee5


tag @a remove magic_defense_0
tag @a remove magic_defense_1
tag @a remove magic_defense_2
tag @a remove magic_defense_3


tag @a remove movement_speed_0
tag @a remove movement_speed_1
tag @a remove movement_speed_2
tag @a remove movement_speed_3
tag @a remove movement_speed_4




tag @a[nbt={SelectedItem:{tag:{melee2:1b}}}] add melee2
tag @a[nbt={SelectedItem:{tag:{melee3:1b}}}] add melee3
tag @a[nbt={SelectedItem:{tag:{melee4:1b}}}] add melee4
tag @a[nbt={SelectedItem:{tag:{melee5:1b}}}] add melee5
tag @a[tag=!melee2,tag=!melee3,tag=!melee4,tag=!melee5] add melee1


tag @e remove scared
tag @e remove stunned
tag @a remove bleeding
tag @e remove poisoned
tag @a remove burning
tag @a remove rooted
tag @a remove insane
tag @a remove broken_leg
tag @a remove blinded
tag @a remove rotting
tag @a remove mana_bound
tag @a remove mana_drain
tag @a remove regen
tag @a remove cloaked
tag @a remove cured
tag @a remove burdened



tag @a remove no_capture
tag @a remove capturing
tag @a[tag=!in_game] remove customized



tag @a remove go_to_spawn
tag @a remove menu2





execute as @a[tag=undead_spawn] unless entity @a[scores={armour=4},distance=..8] run tag @s remove undead_spawn





scoreboard players set EXP_SUM num 60
scoreboard players set 1 num 1
scoreboard players set 2 num 2
scoreboard players set 3 num 3
scoreboard players set 4 num 4
scoreboard players set 5 num 5
scoreboard players set 6 num 6
scoreboard players set 7 num 7
scoreboard players set 8 num 8
scoreboard players set 9 num 9
scoreboard players set 10 num 10





tag @a remove safe
tag @a[tag=base] add safe
tag @a remove base



tag @a remove no_cast






tag @a remove tp_abyss
tag @a remove tp_overworld