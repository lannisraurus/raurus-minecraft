#endermen
execute as @e[type=enderman] run data merge entity @s {Silent:1b,Tags:["selected","soul"],CustomName:'{"text":"asdfghjklç","color":"#000000","bold":true,"italic":true,"underlined":true,"obfuscated":true}',HandItems:[{id:"minecraft:black_dye",Count:1b,tag:{display:{Name:'{"text":"Soul Fragment","color":"#7200A3"}'},soul_fragment:1b,Enchantments:[{}]}},{}],HandDropChances:[0.700F,0.085F],Attributes:[{Name:generic.max_health,Base:60},{Name:generic.movement_speed,Base:0.33}]}

#zombies

execute as @e[type=zombie,tag=!selected] run scoreboard players add zombie spawn 1
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 0..10 run tag @s add normal
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 11..16 run tag @s add speed
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 17..20 run tag @s add strength
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 21..23 run tag @s add knight
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 24..30 run tag @s add helmet
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 31..36 run tag @s add baby_jockey
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 37..45 run tag @s add husk
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 46 run tag @s add abyssal
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score zombie spawn matches 47 run tag @s add lust
tag @e[type=zombie] add selected
execute if score zombie spawn matches 48.. run scoreboard players set zombie spawn 0

effect give @e[type=zombie,tag=speed] speed 1000000 1
effect give @e[type=zombie,tag=strength] strength 1000000 0
execute as @e[type=zombie,tag=knight] run data merge entity @s {CanBreakDoors:1b,HandItems:[{id:"minecraft:iron_sword",Count:1b},{id:"minecraft:shield",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}],ActiveEffects:[{Id:2b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.knockback_resistance,Base:100}]}
execute as @e[type=zombie,tag=helmet] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:6500899},Enchantments:[{id:"minecraft:fire_protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.050F]}
execute as @e[type=zombie,tag=baby_jockey] run data merge entity @s {IsBaby:1b}
execute at @e[type=zombie,tag=husk] run summon husk
tp @e[type=zombie,tag=husk] ~ ~-1000 ~
execute as @e[type=zombie,tag=abyssal] run data merge entity @s {Tags:["selected"],Silent:1b,CustomName:'{"text":"sdfghjklçº","obfuscated":true}',ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.085F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:5},{Name:generic.follow_range,Base:80},{Name:generic.movement_speed,Base:1},{Name:generic.attack_damage,Base:1.25}]}
execute at @e[type=zombie,tag=abyssal] run effect give @a[distance=..3] blindness 5 0 true
execute at @e[type=zombie,tag=abyssal] run scoreboard players add @a[distance=..4] blindness 2
execute as @e[type=zombie,tag=lust] run data merge entity @s {Silent:1b,CanBreakDoors:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3538944},Enchantments:[{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9699328},Enchantments:[{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11206656},Enchantments:[{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:7536640},Enchantments:[{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}],Attributes:[{Name:generic.max_health,Base:30},{Name:generic.movement_speed,Base:0.3},{Name:generic.attack_damage,Base:4},{Name:generic.attack_knockback,Base:5}]}




#creeper

execute as @e[type=creeper,tag=!selected] run scoreboard players add creeper spawn 1
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score creeper spawn matches 0..10 run tag @s add normal
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score creeper spawn matches 11..18 run tag @s add large
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score creeper spawn matches 19..20 run tag @s add small
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score creeper spawn matches 21..28 run tag @s add silent
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score creeper spawn matches 29..32 run tag @s add fast_speed
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score creeper spawn matches 33..36 run tag @s add fast_trigger
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score creeper spawn matches 37 run tag @s add poison
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score creeper spawn matches 38 run tag @s add slowness
tag @e[type=creeper] add selected
execute if score creeper spawn matches 39.. run scoreboard players set creeper spawn 0

execute as @e[type=creeper,tag=large] run data merge entity @s {ExplosionRadius:6b,Fuse:45}
execute at @e[type=creeper,tag=large] run particle smoke ~ ~1.5 ~ 0 0 0 0 2 force
execute as @e[type=creeper,tag=small] run data merge entity @s {ExplosionRadius:1.5b,Fuse:20}
execute at @e[type=creeper,tag=small] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 0 2 force
execute as @e[type=creeper,tag=silent] run data merge entity @s {Silent:1b}
execute at @e[type=creeper,tag=silent] run particle cloud ~ ~ ~ 0 0 0 0 2 force
execute as @e[type=creeper,tag=fast_speed] run data merge entity @s {Attributes:[{Name:generic.movement_speed,Base:0.35}]}
execute at @e[type=creeper,tag=fast_speed] run particle dust 0 0 1 1 ~ ~ ~ 0.2 0 0.2 0 2 force
execute as @e[type=creeper,tag=fast_trigger] run data merge entity @s {Fuse:10}
execute at @e[type=creeper,tag=fast_trigger] run particle dust 1 0 0 1 ~ ~ ~ 0.2 0 0.2 0 2 force
execute as @e[type=creeper,tag=poison] run data merge entity @s {Invulnerable:1b,ExplosionRadius:0b,Fuse:1,Attributes:[{Name:generic.movement_speed,Base:0.5}]}
effect give @e[type=creeper,tag=poison] poison 10 0
execute as @e[type=creeper,tag=slowness] run data merge entity @s {Invulnerable:1b,ExplosionRadius:0b,Fuse:1,Attributes:[{Name:generic.movement_speed,Base:0.5}]}
effect give @e[type=creeper,tag=slowness] slowness 10 0





#skeleton

execute as @e[type=skeleton,tag=!selected] run scoreboard players add skeleton spawn 1
execute as @e[type=skeleton,limit=1,sort=random,tag=!selected] if score skeleton spawn matches 0..10 run tag @s add normal
execute as @e[type=skeleton,limit=1,sort=random,tag=!selected] if score skeleton spawn matches 11..19 run tag @s add assassin
execute as @e[type=skeleton,limit=1,sort=random,tag=!selected] if score skeleton spawn matches 20..21 run tag @s add wither
execute as @e[type=skeleton,limit=1,sort=random,tag=!selected] if score skeleton spawn matches 22..27 run tag @s add poison
execute as @e[type=skeleton,limit=1,sort=random,tag=!selected] if score skeleton spawn matches 28..30 run tag @s add stray
tag @e[type=skeleton] add selected
execute if score skeleton spawn matches 31.. run scoreboard players set skeleton spawn 0

execute at @e[type=skeleton,tag=assassin] run summon skeleton ~ ~ ~ {Tags:["selected"],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;1721458800,488262889,-1626527931,1510231090],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:100,Operation:0,UUID:[I;-1130072842,-432585657,-1402662726,-206268838],Slot:"mainhand"}]}},{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]}}]}
tp @e[type=skeleton,tag=assassin] ~ ~-1000 ~
execute at @e[type=skeleton,tag=wither] run summon wither_skeleton
tp @e[type=skeleton,tag=wither] ~ ~-1000 ~
execute at @e[type=skeleton,tag=poison] run summon skeleton ~ ~ ~ {Tags:["selected"],HandItems:[{id:"minecraft:bow",Count:1b},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'{"text":"Poison Arrow","color":"#51AD13"}'},CustomPotionEffects:[{Id:19b,Amplifier:1b,Duration:120}],CustomPotionColor:4039465}}],HandDropChances:[0.085F,0.500F]}
tp @e[type=skeleton,tag=poison] ~ ~-1000 ~
execute at @e[type=skeleton,tag=stray] run summon stray
tp @e[type=skeleton,tag=stray] ~ ~-1000 ~


#spider

execute as @e[type=spider,tag=!selected] run scoreboard players add spider spawn 1
execute as @e[type=spider,limit=1,sort=random,tag=!selected] if score spider spawn matches 0..20 run tag @s add normal
execute as @e[type=spider,limit=1,sort=random,tag=!selected] if score spider spawn matches 21 run tag @s add small_phantom
execute as @e[type=spider,limit=1,sort=random,tag=!selected] if score spider spawn matches 22 run tag @s add normal
execute as @e[type=spider,limit=1,sort=random,tag=!selected] if score spider spawn matches 23 run tag @s add normal
execute as @e[type=spider,limit=1,sort=random,tag=!selected] if score spider spawn matches 24..29 run tag @s add cave_spider
tag @e[type=spider] add selected
execute if score spider spawn matches 30.. run scoreboard players set spider spawn 0

execute at @e[type=spider,tag=small_phantom] run summon phantom ~ 100 ~ {Size:1}
tp @e[type=spider,tag=small_phantom] ~ ~-1000 ~
execute at @e[type=spider,tag=cave_spider] run summon cave_spider
tp @e[type=spider,tag=cave_spider] ~ ~-1000 ~



























