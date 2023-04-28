execute as @a[tag=!in_abyss,nbt={Dimension:"raurus:abyss"},tag=has_class] run title @s title {"text":"- The Void -","color":"dark_purple"}
tag @a[nbt=!{Dimension:"raurus:abyss"}] remove in_abyss
tag @a[nbt={Dimension:"raurus:abyss"}] add in_abyss

effect clear @a[nbt={Dimension:"raurus:abyss"}] night_vision

gamemode adventure @a[gamemode=survival,nbt={Dimension:"raurus:abyss"}]
execute in raurus:abyss run kill @e[type=tnt,distance=0..]
execute in raurus:abyss run kill @e[type=creeper,distance=0..]
execute in raurus:abyss run kill @e[type=fireball,distance=0..]
execute in raurus:abyss run kill @e[type=tnt_minecart,distance=0..]

forceload add -5 -20 3 -10
















####################### ABYSS WARDENS!!!

scoreboard players set @a[tag=!has_class] abyss_time 0
scoreboard players set @a[tag=!in_abyss] abyss_time 0
scoreboard players set @a[tag=!in_abyss] abyss_charge 0
execute as @a[tag=in_abyss] at @s in raurus:abyss unless entity @e[tag=abyss_warden,distance=..14] run scoreboard players add @s abyss_time 1
execute at @a[scores={abyss_time=300}] in raurus:abyss run summon marker ~ ~ ~ {Tags:["abyss_warden_spawn"]}
scoreboard players set @a[scores={abyss_time=300..}] abyss_time 0

scoreboard players add @e[tag=abyss_warden_spawn] time 1
execute as @e[tag=abyss_warden_spawn,scores={time=1}] at @s run spreadplayers ~ ~ 20 35 false @s
execute as @e[tag=abyss_warden_spawn,scores={time=1}] at @s run tp @s ~ 1 ~
execute as @e[tag=abyss_warden_spawn,scores={time=1}] at @s run setblock ~ ~ ~ light
execute at @e[tag=abyss_warden_spawn] run particle witch ~ ~1 ~ 0.3 0.5 0.3 0 2 force

execute at @e[tag=abyss_warden_spawn] if entity @a[distance=..3] run playsound minecraft:entity.dragon_fireball.explode ambient @a[distance=..10] ~ ~ ~ 1 1
execute at @e[tag=abyss_warden_spawn] if entity @a[distance=..3] run playsound minecraft:entity.dragon_fireball.explode ambient @a[distance=..10] ~ ~ ~ 1 2
execute at @e[tag=abyss_warden_spawn] if entity @a[distance=..3] run playsound minecraft:entity.dragon_fireball.explode ambient @a[distance=..10] ~ ~ ~ 1 0
execute at @e[tag=abyss_warden_spawn] if entity @a[distance=..3] run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..10] ~ ~ ~ 1 2
execute at @e[tag=abyss_warden_spawn] if entity @a[distance=..3] run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..10] ~ ~ ~ 1 1
execute at @e[tag=abyss_warden_spawn] if entity @a[distance=..3] run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..10] ~ ~ ~ 1 0
execute at @e[tag=abyss_warden_spawn] if entity @a[distance=..3] run particle witch ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force
execute at @e[tag=abyss_warden_spawn] if entity @a[distance=..3] run particle flash ~ ~1 ~ 0 0 0 0 10 force
execute as @e[tag=abyss_warden_spawn] at @s if entity @a[distance=..3] run scoreboard players set @s time 300
execute as @e[tag=abyss_warden_spawn] at @s if entity @a[distance=..3] run summon wither_skeleton ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"raurus:entities/abyss_warden",Health:38f,Tags:["abyss_warden"],CustomName:'{"text":"Abyss Warden","color":"#75008C","bold":true}',HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Abyssal Crown","color":"#B300FF"}'},SkullOwner:{Id:[I;-1728220532,1317882238,-1721097240,-1634044311],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjk2NTE2MGJiZjJmMTNhOTljNjkyZjc2ZDEyYmUxOWQ3ZGVlMGU0YTJhZDc0YTgzZTYzZTFmODM4MThmZGExZiJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],Attributes:[{Name:generic.max_health,Base:38},{Name:generic.follow_range,Base:100},{Name:generic.movement_speed,Base:0.32}]}

execute at @e[tag=abyss_warden_spawn,scores={time=300..}] run setblock ~ ~ ~ air
kill @e[tag=abyss_warden_spawn,scores={time=300..}]

execute as @e[tag=abyss_warden] at @s unless entity @a[distance=..12] run scoreboard players add @s time 1
execute as @e[tag=abyss_warden,scores={time=120..}] at @s run particle witch ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force
execute as @e[tag=abyss_warden,scores={time=120..}] at @s run particle flash ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force
execute as @e[tag=abyss_warden,scores={time=120..}] at @s run tp @s ~ -200 ~
kill @e[tag=abyss_warden,scores={time=120..}]


execute at @e[tag=abyss_warden] run particle witch ~ ~ ~ 0.3 0.1 0.3 0.01 1 force






execute as @e[tag=abyss_warden] at @s if entity @a[distance=6..12] run scoreboard players add @s time2 1
execute as @e[tag=abyss_warden] at @s if entity @a[distance=..12] run scoreboard players add @s time3 1

execute at @e[tag=abyss_warden,scores={time2=45}] run summon marker ~ ~ ~ {Tags:["abyss_chains"]}
execute at @e[tag=abyss_warden,scores={time2=45}] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 10 1.00
execute at @e[tag=abyss_warden,scores={time2=45}] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 10 2.00
execute at @e[tag=abyss_warden,scores={time2=45}] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 10 1.50
execute at @e[tag=abyss_warden,scores={time2=45}] run playsound minecraft:entity.allay.item_taken ambient @a[distance=..20] ~ ~ ~ 10 1.80
scoreboard players add @e[tag=abyss_chains] time 1
execute as @e[tag=abyss_chains,scores={time=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=abyss_warden]
execute as @e[tag=abyss_chains,scores={time=1}] at @s positioned ~ ~ ~ run tp @s ^ ^ ^5

execute as @e[tag=abyss_chains,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^1.4

execute at @e[tag=abyss_chains,type=marker,scores={time=1..}] run summon evoker_fangs

kill @e[tag=abyss_chains,type=marker,scores={time=15..}]



execute as @e[tag=abyss_warden,scores={time3=100}] at @s run particle witch ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force
execute as @e[tag=abyss_warden,scores={time3=100}] at @s run particle flash ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force
execute as @e[tag=abyss_warden,scores={time3=100}] at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 1 1
execute as @e[tag=abyss_warden,scores={time3=100}] at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 1 0
execute as @e[tag=abyss_warden,scores={time3=100}] at @s run playsound minecraft:entity.enderman.teleport ambient @a[distance=..10] ~ ~ ~ 1 2
execute as @e[tag=abyss_warden,scores={time3=100}] at @s run tp @s ^ ^ ^9
execute as @e[tag=abyss_warden,scores={time3=100}] at @s run tp @s ~ 1 ~
execute as @e[tag=abyss_warden,scores={time3=100}] at @s run particle witch ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force
execute as @e[tag=abyss_warden,scores={time3=100}] at @s run particle flash ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force





scoreboard players set @e[tag=abyss_warden,scores={time2=45..}] time2 0
scoreboard players set @e[tag=abyss_warden,scores={time3=100..}] time3 0












## ABYSS WARDEN QUESTS


tag @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{abyss_charge:1b}}}] add hear_abyss

clear @a[tag=hear_abyss] carrot_on_a_stick{abyss_charge:1b} 1
execute at @a[tag=hear_abyss] run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..4]
execute at @a[tag=hear_abyss] run particle witch ~ ~1 ~ 0.5 0.5 0.5 0 40 force
scoreboard players add @a[tag=hear_abyss] abyss_charge 1
title @a[tag=hear_abyss,scores={abyss_charge=1}] title {"text":"Three","color":"dark_purple"}
title @a[tag=hear_abyss,scores={abyss_charge=2}] title {"text":"Two","color":"dark_purple"}
title @a[tag=hear_abyss,scores={abyss_charge=3}] title {"text":"One","color":"dark_purple"}

tag @a remove hear_abyss

effect give @a[scores={abyss_charge=1..}] hunger 1 0 true
effect give @a[scores={abyss_charge=2..}] slowness 1 0 true
effect give @a[scores={abyss_charge=3..}] slowness 1 1 true

title @a[scores={abyss_charge=4..}] title {"text":"- Quest Complete -","color":"dark_purple"}
execute as @a[scores={abyss_charge=4..}] at @s run playsound minecraft:entity.ender_dragon.death ambient @a[distance=..4] ~ ~ ~ 1 2
give @a[scores={abyss_charge=4..}] popped_chorus_fruit{display:{Name:'{"text":"Abyssal Heart","color":"#3E0059","bold":true}'},abyssal_heart:1b,Enchantments:[{}]} 1
scoreboard players set @a[scores={abyss_charge=4..}] abyss_charge 0