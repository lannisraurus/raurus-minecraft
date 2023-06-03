execute as @a[tag=!in_overworld,nbt={Dimension:"minecraft:overworld"}] run title @s title {"text":"- The Overworld -","color":"green"}
tag @a[nbt=!{Dimension:"minecraft:overworld"}] remove in_overworld
tag @a[nbt={Dimension:"minecraft:overworld"}] add in_overworld

gamemode survival @a[gamemode=adventure,tag=!safe_zone,nbt={Dimension:"minecraft:overworld"}]
gamemode adventure @a[gamemode=survival,tag=safe_zone,nbt={Dimension:"minecraft:overworld"}]



########################################################################################    HOVER


execute as @e[tag=hover,type=boat] at @s unless block ~ ~-2.5 ~ air run tp @s ~ ~1 ~
execute as @e[tag=hover,type=boat] at @s if block ~ ~-2.5 ~ air run tp @s ~ ~-0.1 ~



########################################################################################     CUSTOM MOBS


##### CREEPERS
execute at @e[tag=silent_creeper] run particle cloud ~ ~ ~ 0.3 0.1 0.3 0 1 normal
execute at @e[tag=strong_creeper] run particle smoke ~ ~ ~ 0.3 0.1 0.3 0 10 normal
execute at @e[tag=fast_creeper] run particle flame ~ ~ ~ 0.3 0.1 0.3 0 1 normal

execute in minecraft:overworld as @e[distance=0..,type=creeper,tag=!selected] run scoreboard players add creeper spawn 1

execute in minecraft:overworld if score creeper spawn matches 1 as @e[type=creeper,tag=!selected] run data merge entity @s {Silent:1b,Tags:["silent_creeper"]}
execute in minecraft:overworld if score creeper spawn matches 2 as @e[type=creeper,tag=!selected] run data merge entity @s {ExplosionRadius:4b,Tags:["strong_creeper"]}
execute in minecraft:overworld if score creeper spawn matches 3 as @e[type=creeper,tag=!selected] run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.35}],ExplosionRadius:2b,Fuse:15,Tags:["fast_creeper"]}

tag @e[type=creeper] add selected
execute if score creeper spawn matches 7.. run scoreboard players set creeper spawn 0




####################### ZOMBIE

execute in minecraft:overworld as @e[distance=0..,type=zombie,tag=!selected] run scoreboard players add zombie spawn 1

execute in minecraft:overworld if score zombie spawn matches 1 as @e[type=zombie,tag=!selected,distance=0..] run data merge entity @s {IsBaby:0b,CustomNameVisible:0b,DeathLootTable:"raurus:entities/magic_iron",Health:30f,CustomName:'{"text":"Zombified Knight"}',HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Patterns:[{Color:3,Pattern:"cs"},{Color:4,Pattern:"tt"}]}}}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Knight\'s Helmet","color":"#FFEE00"}'},SkullOwner:{Id:[I;150415001,-996979922,-1461351264,1551112017],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQ3YjBmZGQxODg1NDNmNDU1MjM1OTc1MTcxNmQwMGRmYzc2NDA3ZDBlMTFlZTY3YjE2MmZmYjJkZjkyNTUyMyJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:30}]}
execute in minecraft:overworld if score zombie spawn matches 2 as @e[type=zombie,tag=!selected,distance=0..] run data merge entity @s {Silent:1b,CustomNameVisible:0b,DeathLootTable:"raurus:entities/low_level_mage",Health:30f,IsBaby:0b,Tags:["zombified_mage"],CustomName:'{"text":"Zombified Mage"}',HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3347299}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3347299}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:3347299}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Corrupted Sorcerer\'s Hood","color":"#FFEE00"}'},SkullOwner:{Id:[I;973333367,849496186,-1253831848,-612160692],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjkzMTk1MjU4MjVmMWYzMDcyN2ViOTQwZDNhMDY0MjZiYzRjZWMwN2ZiZDgwYWY1Y2QxNDZlM2ViMzg3OWY2OCJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:30}]}
execute in minecraft:overworld if score zombie spawn matches 3 as @e[type=zombie,tag=!selected,distance=0..] at @s if biome ~ ~ ~ minecraft:forest run data merge entity @s {Silent:1b,CustomNameVisible:0b,DeathLootTable:"raurus:entities/evil_druid",Health:45f,IsBaby:0b,Tags:["zombified_druid"],CustomName:'{"text":"Evil Druid"}',HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7902264}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7902264}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7902264}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Corrupted Druid\'s Helmet","color":"#FFEE00"}'},SkullOwner:{Id:[I;-1779915210,-1927788222,-1556852215,-1028581008],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGM2ZjI3MmZjMzI0MDU1NzUxMGQ2ZTQ2MzRhZmEzNzRjZTZjMDJmOThiYjU2YmE2MzEyMjk5ZTU1MWM3Nzg1YSJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:45}]}
execute in minecraft:overworld if score zombie spawn matches 3 as @e[type=zombie,tag=!selected,distance=0..] at @s if biome ~ ~ ~ minecraft:swamp run data merge entity @s {Silent:1b,CustomNameVisible:0b,DeathLootTable:"raurus:entities/abyss_mob",Health:50f,IsBaby:0b,Tags:["dark_mage"],CustomName:'{"text":"Dark Mage"}',HandItems:[{id:"minecraft:air",Count:1b},{id:"minecraft:air",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2697513}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2697513}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2697513}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Corrupted Dark Mage\'s Hood","color":"#FFEE00"}'},SkullOwner:{Id:[I;-2080566389,-798342769,-1292961636,1846698123],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWI3M2NkNDEzZDgxZThjM2NlZTQ2ZmU4YTgzMjI1MjY1MmRjMzM1ODRkZGU0ZGRkZjNjYTgzNmRjZDE3NGUifX19"}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:50}]}
execute in minecraft:overworld if score zombie spawn matches 3..4 as @e[type=zombie,tag=!selected,distance=0..] at @s if biome ~ ~ ~ minecraft:plains run tag @s add spawn_slime
execute at @e[tag=spawn_slime] run summon slime
execute as @e[tag=spawn_slime] at @s run tp @s ~ -200 ~
kill @e[tag=spawn_slime]
execute in minecraft:overworld if score zombie spawn matches 5..6 as @e[type=zombie,tag=!selected,distance=0..] at @s run tag @s add spawn_abyss_minion
execute as @e[tag=spawn_abyss_minion,tag=!selected] at @s run summon marker ~ -64 ~ {Tags:["abyss_spawn_check"]}
execute as @e[tag=spawn_abyss_minion,tag=!selected] at @s if entity @e[tag=abyss_spawn_check,distance=..96] run data merge entity @s {Silent:1b,CustomNameVisible:0b,DeathLootTable:"raurus:entities/abyss_minion",Health:30f,IsBaby:1b,CanBreakDoors:1b,CustomName:'{"text":"Abyssal Minion","color":"#C300FF"}',HandItems:[{id:"minecraft:stone_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2236984}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2236984}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2236984}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Abyssal Minion Skull"}'},SkullOwner:{Id:[I;-2083241867,246173322,-1740539436,1613473605],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjYzZTliYTMzYzA1MmI1ZGU3MTU3NjM4MjNmMjJlZjMxNzcwM2ZiYjZmYzJmNzA4YThjYzlhMTI0ZDEzY2FhNSJ9fX0="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:30}]}
kill @e[tag=abyss_spawn_check]


tag @e[type=zombie] add selected
execute if score zombie spawn matches 7.. run scoreboard players set zombie spawn 0







# zombified mage
execute as @e[tag=zombified_mage] at @s if entity @a[distance=..12] run scoreboard players add @s time 1

execute at @e[tag=zombified_mage,scores={time=45}] run function raurus:overworld/zombified_mage_orb

scoreboard players add @e[tag=zombified_orb] time 1
execute as @e[tag=zombified_orb,scores={time=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=zombified_mage]
execute as @e[tag=zombified_orb,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

execute as @e[tag=zombified_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.45
execute as @e[tag=zombified_orb,type=marker,scores={time=1..}] at @s run particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.009 1 normal

execute at @e[tag=zombified_orb,type=marker,scores={time=1..}] as @a[distance=..2] run function raurus:overworld/zombified_orb_explode
execute as @e[tag=zombified_orb,type=marker,scores={time=1..}] at @s if entity @a[distance=..2] run kill @s


kill @e[tag=zombified_orb,type=marker,scores={time=100..}]

scoreboard players set @e[tag=zombified_mage,scores={time=45..}] time 15






# evil druid
execute as @e[tag=zombified_druid] at @s if entity @a[distance=..12] run scoreboard players add @s time 1
execute as @e[tag=zombified_druid] at @s if entity @a[distance=..8] run scoreboard players add @s time2 1

execute as @e[tag=zombified_druid,scores={time=45}] at @s run function raurus:overworld/evil_druid_orb
scoreboard players add @e[tag=druid_orb] time 1
execute as @e[tag=druid_orb,scores={time=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=zombified_druid]
execute as @e[tag=druid_orb,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

execute as @e[tag=druid_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.45
execute as @e[tag=druid_orb,type=marker,scores={time=1..}] at @s run particle minecraft:happy_villager ~ ~ ~ 0.1 0.1 0.1 0.009 1 normal

execute at @e[tag=druid_orb,type=marker,scores={time=1..}] as @a[distance=..2] run function raurus:overworld/evil_druid_orb_explode
execute as @e[tag=druid_orb,type=marker,scores={time=1..}] at @s if entity @a[distance=..2] run kill @s

kill @e[tag=druid_orb,type=marker,scores={time=100..}]


execute at @e[tag=zombified_druid,scores={time2=45}] run summon marker ~ ~ ~ {Tags:["druid_legion"]}


scoreboard players add @e[tag=druid_legion] time 1

execute as @e[tag=druid_legion,scores={time=1}] at @s run spreadplayers ~ ~ 1 5 false @s

execute at @e[tag=druid_legion] run particle minecraft:block dirt ~ ~ ~ 0 0 0 0 2 normal

execute as @e[tag=druid_legion,type=marker,scores={time=70..}] at @s run function raurus:overworld/evil_druid_legion


scoreboard players set @e[tag=zombified_druid,scores={time=45..}] time 0
scoreboard players set @e[tag=zombified_druid,scores={time2=100..}] time2 0




# dark mage

execute at @e[tag=dark_mage] run tag @a[distance=..3] add blinded
execute as @e[tag=dark_mage] at @s if entity @a[distance=..12] run scoreboard players add @s time 1


execute as @e[tag=dark_mage,scores={time=45}] at @s run function raurus:overworld/dark_mage_orb
scoreboard players add @e[tag=dark_orb] time 1


execute as @e[tag=dark_orb,scores={time=1}] at @s run tp @s @e[limit=1,sort=nearest,tag=dark_mage]
execute as @e[tag=dark_orb,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^1

execute as @e[tag=dark_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^0.28

execute as @e[tag=dark_orb,type=marker,scores={time=1..}] at @s run particle ash ~ ~ ~ 0.1 0.1 0.1 0.009 10 normal

execute at @e[tag=dark_orb,type=marker,scores={time=1..}] as @a[distance=..2] run function raurus:overworld/dark_mage_orb_explode

execute as @e[tag=dark_orb,type=marker,scores={time=1..}] at @s if entity @a[distance=..2] run kill @s

kill @e[tag=dark_orb,type=marker,scores={time=100..}]

scoreboard players set @e[tag=dark_mage,scores={time=45..}] time 0




###################### HUSK

execute in minecraft:overworld as @e[distance=0..,type=husk,tag=!selected] run scoreboard players add husk spawn 1

execute in minecraft:overworld if score husk spawn matches 1..20 as @e[type=husk,tag=!selected,distance=0..] at @s run data merge entity @s {Silent:1b,Tags:["selected"],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:2829099}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2829099}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2829099}}},{}],Attributes:[{Name:generic.movement_speed,Base:0.28}]}
execute in minecraft:overworld if score husk spawn matches 21..30 as @e[type=husk,tag=!selected,distance=0..] at @s run summon skeleton ~ ~ ~ {Silent:1b,DeathLootTable:"raurus:entities/fire_sprite",Health:35f,Tags:["selected","fire_sprite"],ActiveEffects:[{Id:1,Amplifier:1b,Duration:1000000,ShowParticles:0b},{Id:12,Amplifier:1b,Duration:1000000,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35}]}
execute in minecraft:overworld if score husk spawn matches 21..30 as @e[type=husk,tag=!selected,distance=0..] run tp @s ~ -200 ~
execute in minecraft:overworld if score husk spawn matches 21..30 as @e[type=husk,tag=!selected,distance=0..] run kill @s


execute in minecraft:overworld if score husk spawn matches 51 as @e[type=husk,tag=!selected,distance=0..] at @s if biome ~ ~ ~ desert run summon phantom ~ ~30 ~ {ActiveEffects:[{Id:12,Amplifier:1b,Duration:1000000,ShowParticles:1b}],Silent:1b,CustomNameVisible:1b,DeathLootTable:"raurus:entities/electric_phantom",PersistenceRequired:1b,Health:40f,Size:14,Tags:["electric_phantom"],CustomName:'{"text":"Electric Phantom","color":"#FFE600","bold":true}',Attributes:[{Name:generic.max_health,Base:40}]}
execute in minecraft:overworld if score husk spawn matches 51 as @e[type=husk,tag=!selected,distance=0..] at @s if biome ~ ~ ~ desert run tp @s ~ -200 ~
execute in minecraft:overworld if score husk spawn matches 51 as @e[type=husk,tag=!selected,distance=0..] at @s if biome ~ ~ ~ desert run kill @s


tag @e[type=husk] add selected
execute if score husk spawn matches 70.. run scoreboard players set husk spawn 0



# electric phantom

execute at @e[tag=electric_phantom] run particle end_rod ^3 ^ ^ 0.3 0.4 0.3 0 5 force
execute at @e[tag=electric_phantom] run particle end_rod ^-3 ^ ^ 0.3 0.4 0.3 0 5 force
execute if score time time matches 23600.. as @e[tag=electric_phantom] at @s run summon lightning_bolt
execute if score time time matches 23600.. as @e[tag=electric_phantom] at @s run tp @s ~ -200 ~
execute if score time time matches 23600.. as @e[tag=electric_phantom] at @s run kill @s

execute as @e[tag=electric_phantom] at @s if entity @a[distance=..45] run scoreboard players add @s time 1
execute as @e[tag=electric_phantom,scores={time=80..}] at @s run function raurus:overworld/phantom_charge


scoreboard players add @e[tag=summon_lightning_bolt] time 1
execute as @e[tag=summon_lightning_bolt,scores={time=1}] at @s run tp @s @a[sort=nearest,limit=1,distance=..45]
execute as @e[tag=summon_lightning_bolt,scores={time=1}] at @s run spreadplayers ~ ~ 1 6 false @s
execute at @e[tag=summon_lightning_bolt] run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.2 0.5 0 10 force
execute at @e[tag=summon_lightning_bolt] run particle witch ~ ~ ~ 0.5 0.2 0.5 0 10 force
execute at @e[tag=summon_lightning_bolt,scores={time=35..}] run summon lightning_bolt
kill @e[tag=summon_lightning_bolt,scores={time=35..}]

execute at @e[tag=electric_phantom] run kill @e[tag=summon_lightning_bolt,distance=..10]

execute as @e[tag=electric_phantom] run data merge entity @s {Fire:-20}




####################### SKELETON
execute in minecraft:overworld as @e[type=skeleton,tag=!selected,distance=0..] at @s if biome ~ ~ ~ minecraft:dark_forest run data merge entity @s {Tags:["selected"],HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:40},{Id:19,Amplifier:0b,Duration:100}],CustomPotionColor:2256896}}]}


execute in minecraft:overworld as @e[distance=0..,type=skeleton,tag=!selected] run scoreboard players add skeleton spawn 1

execute in minecraft:overworld if score skeleton spawn matches 3..50 as @e[type=skeleton,tag=!selected,distance=0..] at @s run summon skeleton ~ ~ ~ {Tags:["selected","dual_skeleton","dual_skeleton_mode_2"]}
execute in minecraft:overworld if score skeleton spawn matches 3..50 as @e[type=skeleton,tag=!selected,distance=0..] run tp @s ~ -200 ~
execute in minecraft:overworld if score skeleton spawn matches 3..50 as @e[type=skeleton,tag=!selected,distance=0..] run kill @s

tag @e[type=skeleton] add selected
execute if score skeleton spawn matches 70.. run scoreboard players set skeleton spawn 0


execute as @e[tag=dual_skeleton,type=skeleton,tag=dual_skeleton_mode_2] at @s if entity @a[distance=..6] run data merge entity @s {Tags:["selected","dual_skeleton","dual_skeleton_mode_1"],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}]}
execute as @e[tag=dual_skeleton,type=skeleton,tag=dual_skeleton_mode_2] at @s if entity @a[distance=..6] run tag @s remove dual_skeleton_mode_1
execute as @e[tag=dual_skeleton,type=skeleton,tag=dual_skeleton_mode_1] at @s unless entity @a[distance=..6] run data merge entity @s {Tags:["selected","dual_skeleton","dual_skeleton_mode_2"],HandItems:[{id:"minecraft:bow",Count:1b},{}]}
execute as @e[tag=dual_skeleton,type=skeleton,tag=dual_skeleton_mode_1] at @s unless entity @a[distance=..6] run tag @s remove dual_skeleton_mode_2


####################### FLOWER FARIE

execute as @a at @s if biome ~ ~ ~ minecraft:flower_forest run scoreboard players add @s flower_time 1
execute as @a at @s if biome ~ ~ ~ minecraft:meadow run scoreboard players add @s flower_time 1

execute as @a[scores={flower_time=80..}] at @s run summon bat ~ -100 ~ {Silent:1b,DeathLootTable:"raurus:entities/magic_orb",Tags:["magic_essence_orb"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
scoreboard players add @e[tag=magic_essence_orb] time 1
execute as @e[tag=magic_essence_orb,scores={time=1}] at @s run spreadplayers ~ ~ 7 20 false @s
execute as @e[tag=magic_essence_orb,scores={time=500..}] at @s run tp @s ~ -200 ~
kill @e[tag=magic_essence_orb,scores={time=500..}]

execute at @e[tag=magic_essence_orb] run particle dust 0 0.7 1 1.3 ~ ~ ~ 0 0 0 0 3 force

scoreboard players set @a[scores={flower_time=80..}] flower_time 0











