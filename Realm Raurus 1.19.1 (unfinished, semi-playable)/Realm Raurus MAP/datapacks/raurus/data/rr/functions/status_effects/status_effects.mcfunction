# SATURATION
effect give @a saturation 3 0 true



# SCARED
title @a[tag=scared] times 20 20 20
title @a[tag=scared] subtitle {"text":"You are scared!","color":"#B40082"}
title @a[tag=scared] title {"text":""}

execute as @a[tag=scared] at @s run playsound minecraft:entity.ghast.hurt ambient @s ~ ~ ~ 1 0.50
execute as @a[tag=scared] at @s run playsound minecraft:entity.ghast.hurt ambient @s ~ ~ ~ 1 0.00
execute as @a[tag=scared] at @s run playsound minecraft:entity.ghast.hurt ambient @s ~ ~ ~ 1 1.50

effect give @e[tag=scared] blindness 3 0 true
effect give @e[tag=scared] slowness 5 1 true
effect give @e[tag=scared] nausea 8 0 true



# STUNNED
title @a[tag=stunned,scores={stun_time=..0}] times 20 20 20
title @a[tag=stunned,scores={stun_time=..0}] subtitle {"text":"You are stunned!","color":"#E9BB00"}
title @a[tag=stunned,scores={stun_time=..0}] title {"text":""}

execute as @a[tag=stunned,scores={stun_time=..0}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.4 2.00
execute as @a[tag=stunned,scores={stun_time=..0}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.4 1.50
execute as @a[tag=stunned,scores={stun_time=..0}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.4 1.60
execute as @a[tag=stunned,scores={stun_time=..0}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.4 1.70
execute as @a[tag=stunned,scores={stun_time=..0}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.4 1.80
execute as @a[tag=stunned,scores={stun_time=..0}] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @s ~ ~ ~ 0.4 1.90

execute at @e[scores={stun_time=1..}] run particle end_rod ~ ~1 ~ 0.2 0.6 0.2 0.01 1 normal

scoreboard players set @e[tag=stunned] stun_time 60

execute as @a[scores={stun_time=60}] at @s run summon armor_stand ~ ~ ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["stun"]}

scoreboard players remove @e[scores={stun_time=1..}] stun_time 1

scoreboard players add @e[tag=stun,type=armor_stand] life 1

scoreboard players add @a[scores={stun_time=1..}] stun_tick 1
execute as @e[scores={stun_tick=3..}] at @s positioned as @e[tag=stun,type=armor_stand,sort=nearest,limit=1] run tp @s ~ ~ ~
scoreboard players set @a[scores={stun_tick=3..}] stun_tick 0

effect give @e[scores={stun_time=1..}] slowness 1 128 true
effect give @a[scores={stun_time=1..}] jump_boost 1 128 true

effect clear @a[scores={stun_time=1}] slowness
effect clear @a[scores={stun_time=1}] jump_boost

kill @e[tag=stun,type=armor_stand,scores={life=60..}]












# BLEEDING
title @a[tag=bleeding,scores={bleed_time=..0}] times 20 20 20
title @a[tag=bleeding,scores={bleed_time=..0}] subtitle {"text":"You are bleeding!","color":"dark_red"}
title @a[tag=bleeding,scores={bleed_time=..0}] title {"text":""}

execute as @a[tag=bleeding,scores={bleed_time=..0}] at @s run playsound minecraft:block.wart_block.place ambient @s ~ ~ ~ 1 2.00
execute as @a[tag=bleeding,scores={bleed_time=..0}] at @s run playsound minecraft:block.wart_block.place ambient @s ~ ~ ~ 1 0.00
execute as @a[tag=bleeding,scores={bleed_time=..0}] at @s run playsound minecraft:block.wart_block.place ambient @s ~ ~ ~ 1 1.00
execute as @a[tag=bleeding,scores={bleed_time=..0}] at @s run playsound minecraft:block.wart_block.place ambient @s ~ ~ ~ 1 1.50
execute as @a[tag=bleeding,scores={bleed_time=..0}] at @s run playsound minecraft:block.wart_block.place ambient @s ~ ~ ~ 1 0.50

effect give @a[scores={bleed_time=..0},tag=bleeding] instant_damage 1 0 true

scoreboard players set @a[tag=bleeding] bleed_time 100

scoreboard players set @a[scores={bleed_time=1..}] stamina_tick -20
scoreboard players add @a[scores={bleed_time=1..}] bleed_tick 1
scoreboard players remove @a[scores={bleed_tick=4..}] stamina 1
scoreboard players set @a[scores={bleed_tick=4..}] bleed_tick 0

effect give @a[scores={bleed_time=1..}] slowness 1 0 true
execute at @a[scores={bleed_time=1..}] run particle minecraft:falling_dripstone_lava ~ ~1 ~ 0.2 0.3 0.2 0 1 normal

scoreboard players remove @a[scores={bleed_time=1..}] bleed_time 1



# POISON BUILDUP

scoreboard players remove @e[scores={poison_buildup=1..}] poison_buildup 1
execute at @e[scores={poison_buildup=1..}] run particle dust 0 0.5 0 0.5 ~ ~ ~ 0.6 0.6 0.6 0 1 normal
tag @e[scores={poison_buildup=400..}] add poisoned
scoreboard players set @e[scores={poison_buildup=400..}] poison_buildup 0


# POISONED
title @a[tag=poisoned,scores={poison_time=..0}] times 20 20 20
title @a[tag=poisoned,scores={poison_time=..0}] subtitle {"text":"You are poisoned!","color":"#4F8F00"}
title @a[tag=poisoned,scores={poison_time=..0}] title {"text":""}

execute as @a[tag=poisoned,scores={poison_time=..0}] at @s run playsound minecraft:block.brewing_stand.brew ambient @s ~ ~ ~ 0.6 2.00
execute as @a[tag=poisoned,scores={poison_time=..0}] at @s run playsound minecraft:block.brewing_stand.brew ambient @s ~ ~ ~ 0.6 1.80
execute as @a[tag=poisoned,scores={poison_time=..0}] at @s run playsound minecraft:block.brewing_stand.brew ambient @s ~ ~ ~ 0.6 1.60
execute as @a[tag=poisoned,scores={poison_time=..0}] at @s run playsound minecraft:block.brewing_stand.brew ambient @s ~ ~ ~ 0.6 1.40
execute as @a[tag=poisoned,scores={poison_time=..0}] at @s run playsound minecraft:block.brewing_stand.brew ambient @s ~ ~ ~ 0.6 1.20
execute as @a[tag=poisoned,scores={poison_time=..0}] at @s run playsound minecraft:block.brewing_stand.brew ambient @s ~ ~ ~ 0.6 1.00

scoreboard players set @e[tag=poisoned] poison_time 400

execute at @e[scores={poison_time=1..}] run particle minecraft:sculk_charge_pop ~ ~1 ~ 0.3 0.5 0.3 0 1 normal

effect give @a[tag=poisoned] wither 20 0 true
effect give @e[tag=poisoned,type=!player] wither 20 0 true

scoreboard players remove @a[scores={poison_time=1..}] poison_time 1









# BURNING
title @a[tag=burning,scores={burn_time=..0}] times 20 20 20
title @a[tag=burning,scores={burn_time=..0}] subtitle {"text":"You are burning!","color":"#FF8C00"}
title @a[tag=burning,scores={burn_time=..0}] title {"text":""}

execute as @a[tag=burning,scores={burn_time=..0}] at @s run playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 2.00
execute as @a[tag=burning,scores={burn_time=..0}] at @s run playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 1.00
execute as @a[tag=burning,scores={burn_time=..0}] at @s run playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 1.50

scoreboard players add @a[scores={burn_time=1..}] burn_tick 1
execute as @a[scores={burn_tick=10..}] at @s run playsound minecraft:entity.player.hurt_on_fire ambient @s ~ ~ ~ 1 1.00
scoreboard players set @a[scores={burn_tick=10..}] burn_tick 0

scoreboard players set @a[tag=burning] burn_time 120

effect clear @a[scores={burn_time=1..}] wither
effect give @a[scores={burn_time=1..}] wither 2 0 true
execute at @a[scores={burn_time=1..}] run particle flame ~ ~1 ~ 0.2 0.3 0.2 0 1 normal

scoreboard players remove @a[scores={burn_time=1..}] burn_time 1

execute as @a[scores={burn_time=1..}] at @s if block ~ ~ ~ water run playsound minecraft:block.lava.extinguish ambient @s ~ ~ ~ 1 1.00
execute as @a[scores={burn_time=1..}] at @s if block ~ ~ ~ water run scoreboard players set @p burn_time 0


#ROOTED
title @a[tag=rooted,scores={root_time=..0}] times 20 20 20
title @a[tag=rooted,scores={root_time=..0}] subtitle {"text":"You are rooted!","color":"gray"}
title @a[tag=rooted,scores={root_time=..0}] title {"text":""}

execute as @a[tag=rooted,scores={root_time=..0}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 0.5 0.00
execute as @a[tag=rooted,scores={root_time=..0}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 0.5 1.00
execute as @a[tag=rooted,scores={root_time=..0}] at @s run playsound minecraft:entity.iron_golem.repair ambient @s ~ ~ ~ 0.5 0.50

scoreboard players set @a[tag=rooted] root_time 150

scoreboard players remove @a[scores={root_time=1..}] root_time 1

effect give @a[scores={root_time=1..},tag=movement_speed_3] slowness 1 3 true
effect give @a[scores={root_time=1..},tag=movement_speed_4] slowness 1 3 true
effect give @a[scores={root_time=1..},tag=movement_speed_2] slowness 1 4 true
effect give @a[scores={root_time=1..},tag=movement_speed_1] slowness 1 5 true
effect give @a[scores={root_time=1..},tag=movement_speed_0] slowness 1 6 true

execute at @a[scores={root_time=1..}] run particle ash ~ ~0.3 ~ 0.3 0 0.3 0 3 normal



#BLINDED
title @a[tag=blinded,scores={blind_time=..0}] times 20 20 20
title @a[tag=blinded,scores={blind_time=..0}] subtitle {"text":"You are blinded!","color":"#603E5F"}
title @a[tag=blinded,scores={blind_time=..0}] title {"text":""}

execute as @a[tag=blinded,scores={blind_time=..0}] at @s run playsound minecraft:entity.blaze.ambient ambient @s ~ ~ ~ 0.5 0.00
execute as @a[tag=blinded,scores={blind_time=..0}] at @s run playsound minecraft:entity.blaze.ambient ambient @s ~ ~ ~ 0.5 0.50
execute as @a[tag=blinded,scores={blind_time=..0}] at @s run playsound minecraft:entity.blaze.ambient ambient @s ~ ~ ~ 0.5 1.00

scoreboard players set @a[tag=blinded,scores={blind_time=..0}] blind_time 400

scoreboard players remove @a[scores={blind_time=1..}] blind_time 1

effect give @a[scores={blind_time=1..}] darkness 1 0 true

execute at @a[scores={blind_time=1..}] run particle ash ~ ~2.3 ~ 0.3 0.3 0.3 0.005 1 normal



#ROTTING
title @a[tag=rotting,scores={rot_time=..0}] times 20 20 20
title @a[tag=rotting,scores={rot_time=..0}] subtitle {"text":"You are rotting!","color":"#07006F"}
title @a[tag=rotting,scores={rot_time=..0}] title {"text":""}

execute as @a[tag=rotting,scores={rot_time=..0}] at @s run playsound minecraft:entity.wither.ambient ambient @s ~ ~ ~ 0.2 0.00
execute as @a[tag=rotting,scores={rot_time=..0}] at @s run playsound minecraft:entity.wither.ambient ambient @s ~ ~ ~ 0.2 0.20
execute as @a[tag=rotting,scores={rot_time=..0}] at @s run playsound minecraft:entity.wither.ambient ambient @s ~ ~ ~ 0.2 0.50
execute as @a[tag=rotting,scores={rot_time=..0}] at @s run playsound minecraft:entity.wither.ambient ambient @s ~ ~ ~ 0.2 1.00

scoreboard players set @a[tag=rotting,scores={rot_time=..0}] rot_time 200

effect give @a[scores={rot_time=200}] wither 10 1 true

scoreboard players remove @a[scores={rot_time=1..}] rot_time 1

execute at @a[scores={rot_time=1..}] run particle minecraft:sculk_charge 0 ~ ~1 ~ 0.3 0.5 0.3 0 1 normal




# MANA DRAIN
title @a[tag=mana_drain,scores={mana_drain_time=..0}] times 20 20 20
title @a[tag=mana_drain,scores={mana_drain_time=..0}] subtitle {"text":"Your mana is draining!","color":"#00BAFF"}
title @a[tag=mana_drain,scores={mana_drain_time=..0}] title {"text":""}

execute as @a[tag=mana_drain,scores={mana_drain_time=..0}] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 1 1.00
execute as @a[tag=mana_drain,scores={mana_drain_time=..0}] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 1 0.00
execute as @a[tag=mana_drain,scores={mana_drain_time=..0}] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 1 0.50
execute as @a[tag=mana_drain,scores={mana_drain_time=..0}] at @s run playsound minecraft:entity.allay.ambient_without_item ambient @s ~ ~ ~ 1 1.50

scoreboard players set @a[tag=mana_drain,scores={mana_drain_time=..0}] mana_drain_time 200

scoreboard players remove @a[scores={mana_drain_time=1..}] mana_drain_time 1

scoreboard players add @a[scores={mana_drain_time=1..}] mana_drain_tick 1
scoreboard players set @a[scores={mana_drain_time=1..}] mana_tick 0
scoreboard players remove @a[scores={mana_drain_tick=3..}] mana 1
scoreboard players set @a[scores={mana_drain_tick=3..}] mana_drain_tick 0

execute at @a[scores={mana_drain_time=1..}] run particle soul_fire_flame ~ ~1 ~ 0.4 0.5 0.4 0 1 normal





# REGENERATING
title @a[tag=regen,scores={regen_time=..0}] times 20 20 20
title @a[tag=regen,scores={regen_time=..0}] subtitle {"text":"You are regenerating.","color":"#8FE1FF"}
title @a[tag=regen,scores={regen_time=..0}] title {"text":""}

execute as @a[tag=regen,scores={regen_time=..0}] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 1.00
execute as @a[tag=regen,scores={regen_time=..0}] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 2.00
execute as @a[tag=regen,scores={regen_time=..0}] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 0.00

effect give @a[tag=regen,scores={regen_time=..10}] regeneration 20 1 true
scoreboard players set @a[tag=regen,scores={regen_time=..10}] regen_time 400

execute at @a[scores={regen_time=1..}] run particle happy_villager ~ ~1 ~ 0.4 0.5 0.4 0 1 normal

scoreboard players remove @a[scores={regen_time=1..}] regen_time 1



# CLOAK
title @a[tag=cloaked,scores={cloak_time=..0}] times 20 20 20
title @a[tag=cloaked,scores={cloak_time=..0}] subtitle {"text":"You are cloaked.","color":"#BBE3FF"}
title @a[tag=cloaked,scores={cloak_time=..0}] title {"text":""}

execute as @a[tag=cloaked,scores={cloak_time=..0}] at @s run playsound minecraft:entity.phantom.ambient ambient @s ~ ~ ~ 1 0.00
execute as @a[tag=cloaked,scores={cloak_time=..0}] at @s run playsound minecraft:entity.phantom.ambient ambient @s ~ ~ ~ 1 2.00
execute as @a[tag=cloaked,scores={cloak_time=..0}] at @s run playsound minecraft:entity.phantom.ambient ambient @s ~ ~ ~ 1 1.00

scoreboard players set @a[tag=cloaked] cloak_time 100
effect give @a[scores={cloak_time=1..}] invisibility 1 0 true


item replace entity @a[scores={cloak_time=1..}] armor.head with air 1
item replace entity @a[scores={cloak_time=1..}] armor.chest with air 1
item replace entity @a[scores={cloak_time=1..}] armor.legs with air 1
item replace entity @a[scores={cloak_time=1..}] armor.feet with air 1

scoreboard players set @a[scores={is_hurting=1..}] cloak_time 0

scoreboard players remove @a[scores={cloak_time=1..}] cloak_time 1



# CURE
title @a[tag=cured] times 20 20 20
title @a[tag=cured] subtitle {"text":"You were cured.","color":"#BBE3FF"}
title @a[tag=cured] title {"text":""}

execute as @a[tag=cured] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 1.00
execute as @a[tag=cured] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 2.00
execute as @a[tag=cured] at @s run playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 0.00

scoreboard players set @a[tag=cured] mana_drain_time 0
scoreboard players set @a[tag=cured] stun_time 0
scoreboard players set @a[tag=cured] bleed_time 0
scoreboard players set @a[tag=cured] poison_time 0
scoreboard players set @a[tag=cured] burn_time 0
scoreboard players set @a[tag=cured] root_time 0
scoreboard players set @a[tag=cured] blind_time 0
scoreboard players set @a[tag=cured] rot_time 0
effect clear @a[tag=cured] poison
effect clear @a[tag=cured] wither
effect clear @a[tag=cured] slowness
effect clear @a[tag=cured] blindness
effect clear @a[tag=cured] weakness
effect clear @a[tag=cured] nausea








































