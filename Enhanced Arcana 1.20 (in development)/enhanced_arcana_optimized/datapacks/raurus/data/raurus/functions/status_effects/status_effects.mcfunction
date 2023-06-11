# SCARED
execute as @a[tag=scared] at @s run function raurus:status_effects/scared


# BLEEDING
execute as @a[tag=bleeding,scores={bleed_time=..0}] at @s run function raurus:status_effects/proc_bleed
scoreboard players set @a[tag=bleeding] bleed_time 100
execute as @a[scores={bleed_time=1..}] at @s run function raurus:status_effects/bleed


# POISON BUILDUP
scoreboard players remove @e[scores={poison_buildup=1..}] poison_buildup 1
tag @e[scores={poison_buildup=400..}] add poisoned
scoreboard players set @e[scores={poison_buildup=400..}] poison_buildup 0


# POISONED
execute as @a[tag=poisoned,scores={poison_time=..0}] at @s run function raurus:status_effects/proc_poison
scoreboard players set @e[tag=poisoned] poison_time 400
execute at @e[scores={poison_time=1..}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.3 0.5 0.3 0 1 normal
effect give @e[tag=poisoned] wither 20 0 true
scoreboard players remove @e[scores={poison_time=1..}] poison_time 1


# BURNING
execute as @a[tag=burning,scores={burn_time=..0}] at @s run function raurus:status_effects/proc_burning
scoreboard players set @a[tag=burning] burn_time 120
execute as @a[scores={burn_time=1..}] at @s run function raurus:status_effects/burn



#ROOTED
execute as @a[tag=rooted,scores={root_time=..0}] at @s run function raurus:status_effects/proc_root
scoreboard players set @e[tag=rooted] root_time 150
scoreboard players remove @e[scores={root_time=1..}] root_time 1
effect give @e[scores={root_time=1..}] slowness 1 3 true
execute at @e[scores={root_time=1..}] run particle ash ~ ~0.3 ~ 0.3 0 0.3 0 3 normal



#BLINDED
execute as @a[tag=blinded,scores={blind_time=..0}] at @s run function raurus:status_effects/proc_blind
scoreboard players set @a[tag=blinded,scores={blind_time=..0}] blind_time 400
scoreboard players remove @a[scores={blind_time=1..}] blind_time 1
effect give @a[scores={blind_time=1..}] darkness 1 0 true
execute at @a[scores={blind_time=1..}] run particle ash ~ ~2.3 ~ 0.3 0.3 0.3 0.005 1 normal



#ROTTING
execute as @a[tag=rotting,scores={rot_time=..0}] at @s run function raurus:status_effects/proc_rot
scoreboard players set @e[tag=rotting] rot_time 200
effect give @e[scores={rot_time=200}] wither 10 1 true
scoreboard players remove @e[scores={rot_time=1..}] rot_time 1
execute at @e[scores={rot_time=1..}] run particle minecraft:sculk_charge 0 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal




# MANA DRAIN
execute as @a[tag=mana_drain,scores={mana_drain_time=..0}] at @s run function raurus:status_effects/proc_mana_drain
scoreboard players set @a[tag=mana_drain,scores={mana_drain_time=..0}] mana_drain_time 200
scoreboard players remove @a[scores={mana_drain_time=1..}] mana_drain_time 1
scoreboard players add @a[scores={mana_drain_time=1..}] mana_drain_tick 1
scoreboard players set @a[scores={mana_drain_time=1..}] mana_tick 0
scoreboard players remove @a[scores={mana_drain_tick=3..}] mana 1
scoreboard players set @a[scores={mana_drain_tick=3..}] mana_drain_tick 0
execute at @a[scores={mana_drain_time=1..}] run particle soul_fire_flame ~ ~1 ~ 0.4 0.5 0.4 0 1 normal





# REGENERATING
execute as @a[tag=regen,scores={regen_time=..0}] at @s run function raurus:status_effects/proc_regen
effect give @a[tag=regen,scores={regen_time=..10}] regeneration 20 0 true
scoreboard players set @a[tag=regen,scores={regen_time=..10}] regen_time 400
execute at @a[scores={regen_time=1..}] run particle happy_villager ~ ~1 ~ 0.4 0.5 0.4 0 1 normal
scoreboard players remove @a[scores={regen_time=1..}] regen_time 1



# CURE
execute as @a[tag=cured] at @s run function raurus:status_effects/cure





## break legs
scoreboard players set @a[tag=!seraph_cleric,scores={fall=1400.., broken_bones_time=..0}] broken_bones_time 2400
execute as @a[scores={broken_bones_time=2400..}] at @s run function raurus:status_effects/break_bones
effect give @a[scores={broken_bones_time=0..}] slowness 1 1 true
scoreboard players remove @a[scores={broken_bones_time=0..}] broken_bones_time 1
scoreboard players set @a fall 0