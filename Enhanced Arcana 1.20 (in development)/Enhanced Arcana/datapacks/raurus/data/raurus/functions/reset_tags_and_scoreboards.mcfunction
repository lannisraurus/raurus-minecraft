# kill mobs










# lvl up system
scoreboard players set @a[scores={ lvl_agi=1.. }] lvl_agi 0
scoreboard players set @a[scores={ lvl_str=1.. }] lvl_str 0
scoreboard players set @a[scores={ lvl_dex=1.. }] lvl_dex 0
scoreboard players set @a[scores={ lvl_att=1.. }] lvl_att 0
scoreboard players set @a[scores={ lvl_kno=1.. }] lvl_kno 0
scoreboard players set @a[scores={ lvl_vit=1.. }] lvl_vit 0
scoreboard players set @a[scores={ lvl_end=1.. }] lvl_end 0
scoreboard players set @a[scores={lvl_up=..0}] lvl_up 0


# status effects
tag @e remove scared
tag @a remove bleeding
tag @e remove poisoned
tag @a remove burning
tag @a remove rooted
tag @a remove blinded
tag @a remove rotting
tag @a remove mana_bound
tag @a remove mana_drain
tag @a remove regen
tag @a remove cured


#safe zones
tag @a remove safe_zone


# magic
tag @a remove update_player
scoreboard players set @a[scores={blood=..0}] blood 0
scoreboard players set @a[scores={mana=..0}] mana 0
scoreboard players set @a[scores={lvl_up=..0}] lvl_up 0

# ritual tp
tag @a remove tp_abyss
tag @a remove tp_overworld

# use scores
scoreboard players set @a exp_kill 0
scoreboard players set @a is_sneaking 0
scoreboard players set @a use_carrot_on_a_stick 0
scoreboard players set @a use_bow 0
scoreboard players set @a walk 0
scoreboard players set @a run 0
scoreboard players set @a jump 0
scoreboard players set @a hurt 0
scoreboard players set @a move 0
scoreboard players set @a warp 0

#reset npcs for lag control
execute as @a[scores={leave=1..}] run kill @e[tag=kill_npc]
scoreboard players set @a leave 0

#total worldwide deaths
execute as @a[scores={die=1..}] run scoreboard players add deaths deaths 1
scoreboard players set @a die 0

