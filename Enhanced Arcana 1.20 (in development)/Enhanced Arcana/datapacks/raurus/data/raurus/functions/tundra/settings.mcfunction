execute as @a[tag=!in_tundra,nbt={Dimension:"minecraft:the_nether"}] run title @s title {"text":"- Lannis's Tundra -","color":"blue"}
tag @a[nbt=!{Dimension:"minecraft:the_nether"}] remove in_tundra
tag @a[nbt={Dimension:"minecraft:the_nether"}] add in_tundra

gamemode adventure @a[gamemode=survival,nbt={Dimension:"minecraft:the_nether"}]


#execute as @a[tag=in_tundra] at @s run summon marker ~ -100 ~ {Tags:["snow_vfx"]}
#execute as @a[tag=in_tundra] at @s run summon marker ~ -100 ~ {Tags:["snow_vfx"]}
#execute as @a[tag=in_tundra] at @s run summon marker ~ -100 ~ {Tags:["snow_vfx"]}
#execute as @e[tag=snow_vfx] at @s run spreadplayers ~ ~ 0 20 false @s
#execute as @e[tag=snow_vfx] at @s run tp @s ~ ~5 ~
#execute at @e[tag=snow_vfx] run particle minecraft:falling_dust minecraft:snow ~ ~ ~ 0 0 0 0 2 normal
#execute at @e[tag=snow_vfx] run particle minecraft:falling_dust minecraft:snow ~ ~6 ~ 0 0 0 0 1 normal
#kill @e[tag=snow_vfx]



# MISSING FEATURES:
# CUSTOM MOBS
# CUSTOM VILLAGERS
# CUSTOM LOOT
# WATER DAMAGE
# BONFIRE MECHANIC
# TUNDRA PICKAXE
# COLD MECHANIC
# WARM CLOTHING MECHANIC


### custom mobs

execute in minecraft:the_nether run execute as @e[distance=0..,type=villager] at @s run summon minecraft:piglin
execute in minecraft:the_nether run execute as @e[distance=0..,type=villager] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,type=villager] at @s run kill @s

execute in minecraft:the_nether run execute as @e[distance=0..,type=iron_golem] at @s run summon minecraft:piglin_brute
execute in minecraft:the_nether run execute as @e[distance=0..,type=iron_golem] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,type=iron_golem] at @s run kill @s

execute in minecraft:the_nether run execute as @e[distance=0..,type=pig] at @s run summon hoglin
execute in minecraft:the_nether run execute as @e[distance=0..,type=pig] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,type=pig] at @s run kill @s

execute in minecraft:the_nether run execute as @e[distance=0..,type=cow] at @s run summon hoglin
execute in minecraft:the_nether run execute as @e[distance=0..,type=cow] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,type=cow] at @s run kill @s

execute in minecraft:the_nether run execute as @e[distance=0..,type=sheep] at @s run summon hoglin
execute in minecraft:the_nether run execute as @e[distance=0..,type=sheep] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,type=sheep] at @s run kill @s


execute in minecraft:the_nether if score time time matches 13000..23000 run tag @e[distance=0..,type=spider] add tundra_phantom
execute as @e[tag=tundra_phantom] run scoreboard players add tundra_phantom spawn 1
execute as @e[tag=tundra_phantom] at @s if score tundra_phantom spawn matches 1..2 run summon phantom ~ ~55 ~ {Size:14}
execute as @e[tag=tundra_phantom] at @s if score tundra_phantom spawn matches 3 run summon phantom ~ ~55 ~ {Size:30}
execute if score tundra_phantom spawn matches 15.. run scoreboard players set tundra_phantom spawn 0
execute in minecraft:the_nether run execute as @e[distance=0..,tag=tundra_phantom] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,tag=tundra_phantom] at @s run kill @s


execute in minecraft:the_nether run execute as @e[distance=0..,type=drowned] at @s run summon wither_skeleton
execute in minecraft:the_nether run execute as @e[distance=0..,type=drowned] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,type=drowned] at @s run kill @s

execute in minecraft:the_nether run execute as @e[distance=0..,type=horse] at @s run summon skeleton_horse
execute in minecraft:the_nether run execute as @e[distance=0..,type=horse] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,type=horse] at @s run kill @s




# fire sprites


execute in minecraft:the_nether if score time time matches 13000..23000 run tag @e[distance=0..,type=stray,tag=!selected] add fire_sprite_select
execute as @e[tag=fire_sprite_select,tag=!selected] run scoreboard players add fire_sprite spawn 1

execute as @e[tag=fire_sprite_select,tag=!selected] at @s if score fire_sprite spawn matches 1 run summon skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"raurus:entities/fire_sprite",Health:35f,Tags:["selected","fire_sprite"],ActiveEffects:[{Id:1,Amplifier:1b,Duration:1000000,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35}]}
execute as @e[tag=fire_sprite_select] at @s if score fire_sprite spawn matches 2..30 run tag @s add selected

execute if score fire_sprite spawn matches 30.. run scoreboard players set fire_sprite spawn 0
execute in minecraft:the_nether run execute as @e[distance=0..,tag=fire_sprite_select,tag=!selected] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,tag=fire_sprite_select,tag=!selected] at @s run kill @s

execute at @e[tag=fire_sprite] run particle flame ~ ~1 ~ 0.1 0.7 0.1 0.008 4 force

execute as @e[tag=fire_sprite] at @s if entity @a[distance=..2.4] run effect give @s slowness 1 100 true

execute as @e[tag=fire_sprite] at @s if entity @a[distance=..6.5] run scoreboard players add @s time 1
execute as @e[tag=fire_sprite] at @s if entity @a[distance=..4] run scoreboard players add @s time2 1




execute at @e[tag=fire_sprite,scores={time=45}] run summon marker ~ ~ ~ {Tags:["fire_wave"]}
execute at @e[tag=fire_sprite,scores={time=45}] run playsound minecraft:entity.blaze.shoot ambient @a[distance=..10]
scoreboard players add @e[tag=fire_wave] time 1
execute as @e[tag=fire_wave,scores={time=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=fire_sprite]
execute as @e[tag=fire_wave,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

execute as @e[tag=fire_wave,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.08

execute as @e[tag=fire_wave,type=marker,scores={time=1..}] at @s run particle flame ^1 ^ ^ 0.2 0.5 0.2 0.009 10 normal
execute as @e[tag=fire_wave,type=marker,scores={time=1..}] at @s run particle flame ^ ^ ^ 0.2 0.5 0.2 0.009 10 normal
execute as @e[tag=fire_wave,type=marker,scores={time=1..}] at @s run particle flame ^-1 ^ ^ 0.2 0.5 0.2 0.009 10 normal

execute as @e[tag=fire_wave,type=marker,scores={time=1..}] at @s run tag @a[distance=..2] add burning

kill @e[tag=fire_wave,type=marker,scores={time=100..}]


execute at @e[tag=fire_sprite,scores={time2=45}] run playsound minecraft:entity.blaze.shoot ambient @a[distance=..10]
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~2 ~12 ~ {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~3 ~12 ~1 {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~-1 ~12 ~ {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~-2 ~12 ~ {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~ ~12 ~2 {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~ ~5 ~-2 {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~1.45 ~12 ~-1.45 {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~1.45 ~12 ~1.45 {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~-1.45 ~12 ~-1.45 {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~-1.45 ~12 ~1.45 {life:0,power:[0.0,-0.01,0.0]}
execute at @e[tag=fire_sprite,scores={time2=45}] run summon small_fireball ~-1.4 ~12 ~1 {life:0,power:[0.0,-0.01,0.0]}






scoreboard players set @e[tag=fire_sprite,scores={time=65..}] time 0
scoreboard players set @e[tag=fire_sprite,scores={time2=80..}] time2 0

execute as @e[tag=fire_sprite] at @s if block ~ ~ ~ water run playsound minecraft:block.fire.extinguish ambient @a[distance=..10]
execute as @e[tag=fire_sprite] at @s if block ~ ~ ~ water run particle poof ~ ~ ~ 0.3 0.3 0.3 0.1 100 normal
execute as @e[tag=fire_sprite] at @s if block ~ ~ ~ water run tp @s ~ -200 ~




#rot wizard
execute in minecraft:the_nether if score time time matches 13000..23000 run tag @e[distance=0..,type=wither_skeleton,tag=!selected] add rot_wizard_select
execute as @e[tag=rot_wizard_select,tag=!selected] run scoreboard players add rot_wizard spawn 1

execute as @e[tag=rot_wizard_select,tag=!selected] at @s if score rot_wizard spawn matches 1 run summon wither_skeleton ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"raurus:entities/rot_wizard",Health:70f,Tags:["rot_wizard","selected"],CustomName:'{"text":"Rot Wizard"}',ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{}],Attributes:[{Name:generic.max_health,Base:70}]}
execute as @e[tag=rot_wizard_select] at @s if score rot_wizard spawn matches 2..30 run tag @s add selected

execute if score rot_wizard spawn matches 30.. run scoreboard players set rot_wizard spawn 0
execute in minecraft:the_nether run execute as @e[distance=0..,tag=rot_wizard_select,tag=!selected] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,tag=rot_wizard_select,tag=!selected] at @s run kill @s





execute as @e[tag=rot_wizard] at @s if entity @a[distance=..4] run effect give @s slowness 1 100 true





execute as @e[tag=rot_wizard] at @s if entity @a[distance=..6.5] run scoreboard players add @s time 1
execute as @e[tag=rot_wizard] at @s if entity @a[distance=..6.5] run scoreboard players add @s time2 1
execute as @e[tag=rot_wizard] at @s if entity @a[distance=..4] run scoreboard players add @s time3 1






execute at @e[tag=rot_wizard,scores={time=45}] run summon marker ~ ~ ~ {Tags:["rot_wave"]}
scoreboard players add @e[tag=rot_wave] time 1
execute as @e[tag=rot_wave,scores={time=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=rot_wizard]
execute as @e[tag=rot_wave,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

execute as @e[tag=rot_wave,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.08

execute as @e[tag=rot_wave,type=marker,scores={time=1..}] at @s run particle ash ^1 ^ ^ 0.2 0.5 0.2 0 10 normal
execute as @e[tag=rot_wave,type=marker,scores={time=1..}] at @s run particle ash ^ ^ ^ 0.2 0.5 0.2 0 10 normal
execute as @e[tag=rot_wave,type=marker,scores={time=1..}] at @s run particle ash ^-1 ^ ^ 0.2 0.5 0.2 0 10 normal

execute as @e[tag=rot_wave,type=marker,scores={time=1..}] at @s run tag @a[distance=..2] add rotting

kill @e[tag=rot_wave,type=marker,scores={time=100..}]





execute at @e[tag=rot_wizard,scores={time2=45}] run summon marker ~ ~ ~ {Tags:["rot_legion"]}
execute at @e[tag=rot_wizard,scores={time2=45}] run summon marker ~ ~ ~ {Tags:["rot_legion"]}
execute at @e[tag=rot_wizard,scores={time2=45}] run summon marker ~ ~ ~ {Tags:["rot_legion"]}

scoreboard players add @e[tag=rot_legion] time 1

execute as @e[tag=rot_legion,scores={time=1}] at @s run spreadplayers ~ ~ 1 5 false @s

execute at @e[tag=rot_legion] run particle soul ~ ~ ~ 0.5 0.2 0.5 0 2 normal

execute at @e[tag=rot_legion,type=marker,scores={time=70..}] run playsound minecraft:entity.wither.spawn ambient @a[distance=..10] ~ ~ ~ 0.6 1
execute at @e[tag=rot_legion,type=marker,scores={time=70..}] run playsound minecraft:entity.wither.spawn ambient @a[distance=..10] ~ ~ ~ 0.6 1.5
execute at @e[tag=rot_legion,type=marker,scores={time=70..}] run playsound minecraft:entity.wither.spawn ambient @a[distance=..10] ~ ~ ~ 0.6 2
execute at @e[tag=rot_legion,type=marker,scores={time=70..}] run particle flash ~ ~ ~ 0 0 0 0 10 normal
execute at @e[tag=rot_legion,type=marker,scores={time=70..}] run summon wither_skeleton ~ ~ ~ {Tags:["selected"]}
kill @e[tag=rot_legion,type=marker,scores={time=70..}]







execute at @e[tag=rot_wizard,scores={time3=45}] run summon evoker_fangs ~2 ~ ~
execute at @e[tag=rot_wizard,scores={time3=45}] run summon evoker_fangs ~-2 ~ ~
execute at @e[tag=rot_wizard,scores={time3=45}] run summon evoker_fangs ~ ~ ~2
execute at @e[tag=rot_wizard,scores={time3=45}] run summon evoker_fangs ~ ~ ~-2
execute at @e[tag=rot_wizard,scores={time3=45}] run summon evoker_fangs ~1.45 ~ ~-1.45
execute at @e[tag=rot_wizard,scores={time3=45}] run summon evoker_fangs ~1.45 ~ ~1.45
execute at @e[tag=rot_wizard,scores={time3=45}] run summon evoker_fangs ~-1.45 ~ ~-1.45
execute at @e[tag=rot_wizard,scores={time3=45}] run summon evoker_fangs ~-1.45 ~ ~1.45








scoreboard players set @e[tag=rot_wizard,scores={time=65..}] time 0
scoreboard players set @e[tag=rot_wizard,scores={time2=200..}] time2 0
scoreboard players set @e[tag=rot_wizard,scores={time3=60..}] time3 0


# nether echo
execute in minecraft:the_nether run execute as @e[distance=0..,type=zombie,tag=!selected] at @s run summon zombie ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"raurus:entities/nether_echo",Health:10f,Tags:["selected"],CustomName:'{"text":"Nether Echo","color":"#FF5E45"}',HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Nether Echo Skull"}'},SkullOwner:{Id:[I;-2106201984,1604208352,-1745804555,-2118990914],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGJhMGQ3OTAzY2E3Mjc4ZTZhOTQ4MmI1YzIyYzBhNjMyYjg3Y2YxNTgyMGQ0NDg5NTYyMWUyNDEwZDUzM2Q4MyJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:10},{Name:generic.movement_speed,Base:0.2}]}
execute in minecraft:the_nether run execute as @e[distance=0..,type=zombie,tag=!selected] at @s run tp @s ~ ~-200 ~
execute in minecraft:the_nether run execute as @e[distance=0..,type=zombie,tag=!selected] at @s run kill @s






# freeze

scoreboard players set @a[nbt=!{Dimension:"minecraft:the_nether"}] freeze 0
scoreboard players add @a[nbt={Dimension:"minecraft:the_nether"}] freeze 7
scoreboard players remove @a[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] freeze 1
scoreboard players remove @a[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] freeze 1
scoreboard players remove @a[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] freeze 1
scoreboard players remove @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] freeze 1

effect give @a[scores={freeze=7000..14000}] slowness 1 0 true
effect give @a[scores={freeze=14000..30000}] slowness 1 1 true
effect give @a[scores={freeze=30000..}] slowness 1 2 true

tag @a[scores={freeze=30000..}] add get_freeze
title @a[tag=!freezing,tag=get_freeze] title {"text":"You are freezing!","color":"aqua"}
tag @a[tag=get_freeze] add freezing
tag @a[tag=get_freeze] remove get_freeze
tag @a[scores={freeze=..30000}] remove freezing

execute as @a[tag=freezing] run damage @s 1 minecraft:freeze

scoreboard players set @a[scores={freeze=31000..}] freeze 31000
scoreboard players set @a[scores={freeze=..-8000}] freeze -8000

execute at @e[tag=warm_up] run scoreboard players remove @a[distance=..9] freeze 90


# water freeze

execute as @a[nbt={Dimension:"minecraft:the_nether"}] at @s if block ~ ~ ~ water run scoreboard players add @s freeze 400

# bonfire

execute at @e[type=item,nbt={Item:{tag:{spawn_bonfire:1b}}}] run particle flame ~ ~0.07 ~ 0 0.1 0 0.004 1 normal

execute in minecraft:the_nether at @e[distance=0..,type=item,nbt={OnGround:1b,Item:{tag:{spawn_bonfire:1b}}}] run title @a[distance=..9] title {"text":"- Bonfire Lit -","color":"gold"}
execute in minecraft:the_nether at @e[distance=0..,type=item,nbt={OnGround:1b,Item:{tag:{spawn_bonfire:1b}}}] run setblock ~ ~ ~ campfire
execute in minecraft:the_nether at @e[distance=0..,type=item,nbt={OnGround:1b,Item:{tag:{spawn_bonfire:1b}}}] run particle flash ~ ~ ~ 0 0 0 0 5 force
execute in minecraft:the_nether at @e[distance=0..,type=item,nbt={OnGround:1b,Item:{tag:{spawn_bonfire:1b}}}] run particle poof ~ ~ ~ 0.2 0.2 0.2 0.06 50 force
execute in minecraft:the_nether at @e[distance=0..,type=item,nbt={OnGround:1b,Item:{tag:{spawn_bonfire:1b}}}] run summon marker ~ ~ ~ {OnGround:0b,Tags:["warm_up"]}
execute in minecraft:the_nether run kill @e[distance=0..,type=item,nbt={OnGround:1b,Item:{tag:{spawn_bonfire:1b}}}]

execute at @e[tag=warm_up] run particle flame ~ ~ ~ 0 0 0 0.04 2 normal

execute as @e[tag=warm_up] at @s unless block ~ ~ ~ campfire run kill @s

scoreboard players add @e[tag=warm_up] time 1
execute at @e[tag=warm_up,scores={time=6000..}] run particle poof ~ ~ ~ 0.2 0.2 0.2 0.06 50 force
execute at @e[tag=warm_up,scores={time=6000..}] run setblock ~ ~ ~ campfire[lit=false]
kill @e[tag=warm_up,scores={time=6000..}]



















