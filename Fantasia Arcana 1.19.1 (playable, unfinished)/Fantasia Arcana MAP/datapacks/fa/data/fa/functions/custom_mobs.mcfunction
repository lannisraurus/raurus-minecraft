######################################################## MOB LOOT ########################################################






















######################################################## ARCANE LIGHTS ########################################################

execute as @e[tag=arcane_light,scores={life=1}] at @s run spreadplayers ~ ~ 3 16 false @s
scoreboard players add @e[tag=arcane_light] life 1
execute as @e[tag=arcane_light,scores={life=1000..}] at @s run tp @s ~ -200 ~
kill @e[tag=arcane_light,scores={life=1000..}]
execute at @e[tag=arcane_light,scores={life=2..}] run particle dust 0.4 1 1 1.3 ~ ~ ~ 0 0 0 0 5 normal

scoreboard players add ARCANE_LIGHT life 1
execute if score ARCANE_LIGHT life matches 100.. in minecraft:overworld positioned 151 188 159 run summon bat ~ ~ ~ {Silent:1b,Invulnerable:0b,Tags:["arcane_light"],ArmorItems:[{},{},{id:"minecraft:light_blue_dye",Count:1b,tag:{display:{Name:'{"text":"Magic Essence","color":"#00E5FF"}'},magic_essence:1b}},{}],ArmorDropChances:[0.085F,0.085F,2.000F,0.085F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}

execute if score ARCANE_LIGHT life matches 100.. run scoreboard players set ARCANE_LIGHT life 0





###################################################### INSANITY MOBS #########################################################
execute as @e[tag=insanity_mob_1] at @s run spreadplayers ~ ~ 6 10 false @s
execute as @e[tag=insanity_mob_2] at @s run spreadplayers ~ ~ 8 12 false @s


execute at @e[tag=insanity_mob_1] run summon husk ~ ~ ~ {DeathLootTable:"empty",HasVisualFire:0b,Silent:1b,Invulnerable:0b,Health:8f,Tags:["selected","insanity1"],ArmorItems:[{},{},{id:"minecraft:gray_dye",Count:1b,tag:{display:{Name:'{"text":"Insanity Essence","color":"#545454","bold":true,"underlined":true}'},insanity_essence:1b}},{}],ArmorDropChances:[0.085F,0.085F,0.800F,0.085F],ActiveEffects:[{Id:12b,Amplifier:1b,Duration:20000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.attack_damage,Base:-10},{Name:generic.follow_range,Base:80}]}
execute at @e[tag=insanity_mob_2] run summon husk ~ ~ ~ {DeathLootTable:"empty",HasVisualFire:0b,Silent:1b,Invulnerable:1b,Health:8f,Tags:["selected","insanity2"],ActiveEffects:[{Id:12b,Amplifier:1b,Duration:20000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:8},{Name:generic.movement_speed,Base:0.7},{Name:generic.attack_damage,Base:-10},{Name:generic.follow_range,Base:80}]}




kill @e[tag=insanity_mob_1]
kill @e[tag=insanity_mob_2]



scoreboard players add @e[tag=insanity1] life 1
scoreboard players add @e[tag=insanity2] life 1

execute as @e[tag=insanity1] at @s run particle dust 0 0 0 1.5 ~ ~1 ~ 0.1 0.6 0.1 0 6 force @a[tag=insane]
execute as @e[tag=insanity2] at @s run particle dust 0 0 0 1.5 ~ ~1 ~ 0.1 0.6 0.1 0 6 force @a[tag=insane]

execute as @e[tag=insanity1] at @s run particle dust 1 1 1 0.3 ~ ~1 ~ 0.3 0.6 0.3 0 1 force @a[tag=insane]
execute as @e[tag=insanity2] at @s run particle dust 1 1 1 0.3 ~ ~1 ~ 0.3 0.6 0.3 0 1 force @a[tag=insane]

execute as @e[tag=insanity1] at @s run particle dust 1 1 1 0.5 ^0.2 ^1.6 ^0.3 0 0 0 0 1 force @a[tag=insane]
execute as @e[tag=insanity2] at @s run particle dust 1 1 1 0.5 ^0.2 ^1.6 ^0.3 0 0 0 0 1 force @a[tag=insane]
execute as @e[tag=insanity1] at @s run particle dust 1 1 1 0.5 ^-0.2 ^1.6 ^0.3 0 0 0 0 1 force @a[tag=insane]
execute as @e[tag=insanity2] at @s run particle dust 1 1 1 0.5 ^-0.2 ^1.6 ^0.3 0 0 0 0 1 force @a[tag=insane]

execute as @e[tag=insanity1] at @s run particle dust 1 1 1 0.5 ^0.2 ^1.7 ^0.3 0 0 0 0 1 force @a[tag=insane]
execute as @e[tag=insanity2] at @s run particle dust 1 1 1 0.5 ^0.2 ^1.7 ^0.3 0 0 0 0 1 force @a[tag=insane]
execute as @e[tag=insanity1] at @s run particle dust 1 1 1 0.5 ^-0.2 ^1.7 ^0.3 0 0 0 0 1 force @a[tag=insane]
execute as @e[tag=insanity2] at @s run particle dust 1 1 1 0.5 ^-0.2 ^1.7 ^0.3 0 0 0 0 1 force @a[tag=insane]


tp @e[tag=insanity1,scores={life=500..}] ~ -200 ~
tp @e[tag=insanity2,scores={life=500..}] ~ -200 ~
kill @e[tag=insanity1,scores={life=500..}]
kill @e[tag=insanity2,scores={life=500..}]

execute at @e[tag=insanity1] run effect give @a[tag=insane,distance=..6] blindness 5 0 true
execute at @e[tag=insanity1] run effect give @a[tag=insane,distance=..4] wither 1 1 true
execute at @e[tag=insanity1] run playsound minecraft:entity.wither.ambient master @a[distance=..4,tag=insane] ~ ~ ~ 0.5 0.00

execute at @e[tag=insanity2] run tag @a[tag=insane,distance=..3] add insane_scare
execute as @e[tag=insanity2] at @s if entity @a[tag=insane,distance=..3] run scoreboard players set @s life 500


effect give @a[tag=insane_scare] wither 1 0 true
effect give @a[tag=insane_scare] blindness 9 0 true
effect give @a[tag=insane_scare] slowness 9 0 true
title @a[tag=insane_scare] title {"text":":)","bold":"true"}
execute as @a[tag=insane_scare] at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1 0.00
execute as @a[tag=insane_scare] at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1 1.00
execute as @a[tag=insane_scare] at @s run playsound minecraft:entity.wither.ambient master @s ~ ~ ~ 1 2.00
execute as @a[tag=insane_scare] at @s run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 1 0.00
execute as @a[tag=insane_scare] at @s run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 1 1.00
execute as @a[tag=insane_scare] at @s run playsound minecraft:entity.enderman.death master @s ~ ~ ~ 1 2.00

tag @a remove insane_scare











######################################################## PIGS (ARCANA KNIGHTS/MAGES) ########################################################


execute at @e[type=pig] run summon zombified_piglin ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"fa:entities/high_level_mage",LeftHanded:1b,PersistenceRequired:1b,Health:40f,Tags:["selected","magic_knight1","magic_knight"],CustomName:'{"text":"Arcana Knight","color":"#00BBFF"}',HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;-662231357,1220102494,-1666511917,-1188458601],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Arcana Helmet","color":"#0F8FFF","bold":true}'},SkullOwner:{Id:[I;-142995363,-1677900920,-1702195651,-1324779803],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDkzNmJiMWNjNGFiNmVjY2U2NWI2NDI5ODM5NGZhZmM1ZmUzZjc4NzZkN2M5NDFkMDVhOTI5NGZhMzkyYjdjIn19fQ=="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.300F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.attack_damage,Base:5}]}
execute at @e[type=pig] run summon zombified_piglin ~ ~ ~ {Silent:1b,CustomNameVisible:0b,DeathLootTable:"fa:entities/high_level_mage",LeftHanded:1b,PersistenceRequired:1b,Health:40f,Tags:["selected","magic_knight2","magic_knight"],CustomName:'{"text":"Arcana Mage","color":"#00BBFF"}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1,Enchantments:[{id:"minecraft:knockback",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:0,Operation:0,UUID:[I;1252448635,463293762,-1281294438,-1342706081],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,-327.670F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Arcana Helmet","color":"#0F8FFF","bold":true}'},SkullOwner:{Id:[I;-142995363,-1677900920,-1702195651,-1324779803],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDkzNmJiMWNjNGFiNmVjY2U2NWI2NDI5ODM5NGZhZmM1ZmUzZjc4NzZkN2M5NDFkMDVhOTI5NGZhMzkyYjdjIn19fQ=="}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,0.300F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.attack_damage,Base:5}]}
tp @e[type=pig] 0 -200 0
kill @e[type=pig]


execute positioned as @e[tag=magic_knight] as @e[type=armor_stand,tag=!knight_bullet,distance=..6.5] at @s run particle flash ~ ~ ~ 0 0 0 0 1 force
execute positioned as @e[tag=magic_knight] as @e[type=armor_stand,tag=!knight_bullet,distance=..6.5] at @s run tp @s ~ ~ ~ ~180 ~







execute as @e[tag=magic_knight2,scores={anger=1..}] at @s if entity @a[distance=..8] run effect give @s slowness 1 100 true
execute as @e[tag=magic_knight2] at @s if entity @a[distance=..8] run scoreboard players add @s life 1

execute as @e[type=minecraft:zombified_piglin] store result score @s anger run data get entity @s AngerTime

execute at @e[tag=magic_knight2,scores={life=60.. , anger=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["knight_bullet"]}
execute as @e[tag=knight_bullet,scores={life=1}] at @s run tp @s @e[sort=nearest,tag=magic_knight2,limit=1]
execute as @e[tag=knight_bullet,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..16] ~ ~ ~ 5 0
execute as @e[tag=knight_bullet] at @s run tp ^ ^ ^0.25
execute at @e[tag=knight_bullet] run particle dust 0 0.5 1 1 ~ ~1 ~ 0.05 0.05 0.05 0 3 normal

scoreboard players add @e[tag=knight_bullet] life 1
kill @e[tag=knight_bullet,scores={life=60..}]

execute at @e[tag=knight_bullet] run effect give @a[distance=..2] instant_damage 1 0
execute at @e[tag=knight_bullet] run effect give @a[distance=..2] slowness 1 2

execute as @e[tag=knight_bullet] at @s if entity @a[distance=..2] run kill @s

scoreboard players set @e[tag=magic_knight2,scores={life=60..}] life 0












######################################################## ENDERMAN ########################################################

execute at @e[type=enderman] run particle witch ~ ~ ~ 0.3 0.8 0.3 0 5 normal

######################################################## WITCH ########################################################

execute at @e[type=witch] run particle witch ~ ~ ~ 0.3 0.8 0.3 0 5 normal



######################################################## ZOMBIES ########################################################

execute as @e[type=zombie,tag=!selected] run scoreboard players add ZOMBIE custom_mob 1

execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 0..15 run tag @s add normal
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 16 run tag @s add horde
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 17 run tag @s add slime
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 18..22 run tag @s add jockey
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 23 run tag @s add baby
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 28..29 run tag @s add dark_mage
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 30 run tag @s add corrupted
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 31..32 run tag @s add abyss_portal
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 33..40 run tag @s add normal
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 24 run tag @s add corrupted
execute as @e[type=zombie,limit=1,sort=random,tag=!selected] if score ZOMBIE custom_mob matches 25..27 run tag @s add normal

tag @e[type=zombie] add selected
execute if score ZOMBIE custom_mob matches 40.. run scoreboard players set ZOMBIE custom_mob 0






# horde

execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:15f,Tags:["selected"],CustomName:'{"text":"Zombie Trooper"}'}
execute at @e[type=zombie,tag=horde] run summon zombie ~ ~ ~ {CustomNameVisible:0b,Health:40f,Tags:["selected"],CustomName:'{"text":"Zombie Captain"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Enchantments:[{}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,-327.670F],Attributes:[{Name:generic.max_health,Base:40}]}
tp @e[tag=horde,type=zombie] 0 -200 0
kill @e[tag=horde,type=zombie]


# slime

execute at @e[type=zombie,tag=slime] run summon slime ~ ~ ~
execute at @e[type=zombie,tag=slime] run summon slime ~ ~ ~
tp @e[tag=slime,type=zombie] 0 -200 0
kill @e[tag=slime,type=zombie]



# jockey

execute at @e[type=zombie,tag=jockey] run summon zombie ~ ~ ~ {Health:50f,Tags:["selected"],Passengers:[{id:"minecraft:zombie",Health:15f,IsBaby:1b,Tags:["selected"],Attributes:[{Name:generic.max_health,Base:15}]}],HandItems:[{id:"minecraft:iron_shovel",Count:1b},{}],HandDropChances:[-327.670F,0.085F],Attributes:[{Name:generic.max_health,Base:50}]}
tp @e[tag=jockey,type=zombie] 0 -200 0
kill @e[tag=jockey,type=zombie]



# baby

execute at @e[type=zombie,tag=baby] run summon zombie ~ ~ ~ {IsBaby:1b,Tags:["selected"]}
tp @e[tag=baby,type=zombie] 0 -200 0
kill @e[tag=baby,type=zombie]





# dark mage

execute at @e[type=zombie,tag=dark_mage] run summon wither_skeleton ~ ~ ~ {DeathLootTable:"fa:entities/abyss_mob",Silent:1b,CustomNameVisible:0b,Health:40f,Tags:["selected","dark_mage_a"],CustomName:'{"text":"Dark Mage","color":"#A61784"}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:'minecraft:leather_boots',Count:1b,tag:{display:{Name:'{"text":"Dark Mage Boots","color":"#130021"}',color:720914},Unbreakable:1b}},{id:'minecraft:leather_leggings',Count:1b,tag:{display:{Name:'{"text":"Dark Mage Leggings","color":"#130021"}',color:720914},Unbreakable:1b}},{id:'minecraft:leather_chestplate',Count:1b,tag:{display:{Name:'{"text":"Dark Mage Robe","color":"#130021"}',color:0},Unbreakable:1b}},{id:'minecraft:player_head',Count:1b,tag:{display:{Name:'{"text":"Black Hood","color":"#424242","bold":true}'},SkullOwner:{Id:[I;442952248,1510818817,-1309899874,834921025],Properties:{textures:[{Value:'eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWI5ZTZiMzI1NTRmN2U0OTVjNjU0OTZmZmVlNGEyMDliZDk1ZmEwZDM0Y2Q1YTQxNjk2YjE1M2UxYjg2NWYifX19'}]}}}}],ArmorDropChances:[0.200F,0.200F,0.200F,0.400F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.attack_damage,Base:-10}]}
tp @e[tag=dark_mage,type=zombie] 0 -200 0
kill @e[tag=dark_mage,type=zombie]

execute as @e[tag=dark_mage_a] at @s if entity @a[distance=..8] run effect give @s slowness 1 100 true
execute as @e[tag=dark_mage_a] at @s if entity @a[distance=..8] run scoreboard players add @s life 1



execute at @e[tag=dark_mage_a,scores={life=30..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["dark_mage_bullet"]}
execute as @e[tag=dark_mage_bullet,scores={life=1}] at @s run tp @s @e[sort=nearest,tag=dark_mage_a,limit=1]
execute as @e[tag=dark_mage_bullet,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..16] ~ ~ ~ 1 2
execute as @e[tag=dark_mage_bullet] at @s run tp ^ ^ ^0.4
execute at @e[tag=dark_mage_bullet] run particle witch ~ ~1 ~ 0.05 0.05 0.05 0 3 normal

scoreboard players add @e[tag=dark_mage_bullet] life 1
kill @e[tag=dark_mage_bullet,scores={life=30..}]

execute at @e[tag=dark_mage_bullet] run effect give @a[distance=..2] wither 5 1
execute at @e[tag=dark_mage_bullet] run effect give @a[distance=..2] blindness 5 0
execute at @e[tag=dark_mage_bullet] run effect give @a[distance=..2] slowness 5 0

scoreboard players set @e[tag=dark_mage_a,scores={life=30..}] life 0





# corrupted

execute at @e[type=zombie,tag=corrupted] run summon zombie ~ ~ ~ {DeathLootTable:"fa:entities/abyss_mob",Silent:1b,CustomNameVisible:0b,Health:35f,IsBaby:0b,Tags:["selected","corrupted_a"],CustomName:'{"text":"aaaaaa","color":"#080000","bold":true,"italic":true,"underlined":true,"strikethrough":true,"obfuscated":true}',ArmorItems:[{id:"minecraft:black_dye",Count:1b,tag:{display:{Name:'{"text":"Shadow Essence","color":"#450073"}'},shadow_essence:1b,Enchantments:[{}]}},{id:"minecraft:black_dye",Count:1b,tag:{display:{Name:'{"text":"Shadow Essence","color":"#450073"}'},shadow_essence:1b,Enchantments:[{}]}},{id:"minecraft:black_dye",Count:1b,tag:{display:{Name:'{"text":"Shadow Essence","color":"#450073"}'},shadow_essence:1b,Enchantments:[{}]}},{}],ArmorDropChances:[0.100F,0.100F,0.100F,0.085F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:35},{Name:generic.movement_speed,Base:0.4},{Name:generic.attack_damage,Base:2}]}
tp @e[tag=corrupted,type=zombie] 0 -200 0
kill @e[tag=corrupted,type=zombie]

execute at @e[tag=corrupted_a,type=zombie] run particle dust 0 0 0 1.5 ~ ~1.5 ~ 0.1 0.8 0.1 0 10 normal
execute at @e[tag=corrupted_a,type=zombie] run particle dust 0 0 0 0.8 ~ ~1.5 ~ 0.3 0.9 0.3 0 10 normal
execute at @e[tag=corrupted_a,type=zombie] run particle dust 0.1 0 0.1 0.4 ~ ~1.5 ~ 0.3 0.9 0.3 0 10 normal
execute at @e[tag=corrupted_a,type=zombie] run particle dust 0.4 0 0.4 0.4 ~ ~1.5 ~ 0.3 0.9 0.3 0 10 normal

execute at @e[tag=corrupted_a,type=zombie] run effect give @a[distance=..3] blindness 5 0 true





# abyss portal

execute at @e[type=zombie,tag=abyss_portal] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["abyss_portal_a"]}
tp @e[tag=abyss_portal,type=zombie] 0 -200 0
kill @e[tag=abyss_portal,type=zombie]

scoreboard players add @e[tag=abyss_portal_a] life 1
kill @e[tag=abyss_portal_a,scores={life=1800..}]

execute at @e[tag=abyss_portal_a] run particle dust 0 0 0 1.5 ~ ~ ~ 0.3 0.06 0.3 0 10 force
execute at @e[tag=abyss_portal_a] run particle dust 0.6 0 0.6 0.6 ~ ~ ~ 0.5 0.06 0.5 0 10 force


execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run playsound minecraft:entity.ender_dragon.growl ambient @a[distance=..12] ~ ~ ~ 10 1.00
execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run particle flash ~ ~ ~ 0 0 0 0 4 normal
execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run effect give @a[distance=..8] slowness 5 1 true
execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run effect give @a[distance=..8] blindness 5 0 true

execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run summon zombie ~ ~ ~ {DeathLootTable:"fa:entities/abyss_mob",Silent:1b,CustomNameVisible:0b,Health:24f,IsBaby:1b,Tags:["selected","abyss_minion"],CustomName:'{"text":"aaaaaa","color":"#080000","bold":true,"italic":true,"underlined":true,"strikethrough":true,"obfuscated":true}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1826128185,862340733,-1292307501,-2091794617],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzUyNzRkZDc3MmExYWJmZDVmZTZlNjNmZGE5ZmEyOWNhNzQ0OWFkZmE2MmM0NWQzOWE3NjhkNjhjNzFiYjYifX19"}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:24},{Name:generic.movement_speed,Base:0.32},{Name:generic.attack_damage,Base:2}]}
execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run summon zombie ~ ~ ~ {DeathLootTable:"fa:entities/abyss_mob",Silent:1b,CustomNameVisible:0b,Health:24f,IsBaby:1b,Tags:["selected","abyss_minion"],CustomName:'{"text":"aaaaaa","color":"#080000","bold":true,"italic":true,"underlined":true,"strikethrough":true,"obfuscated":true}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1826128185,862340733,-1292307501,-2091794617],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzUyNzRkZDc3MmExYWJmZDVmZTZlNjNmZGE5ZmEyOWNhNzQ0OWFkZmE2MmM0NWQzOWE3NjhkNjhjNzFiYjYifX19"}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:24},{Name:generic.movement_speed,Base:0.32},{Name:generic.attack_damage,Base:2}]}
execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run summon zombie ~ ~ ~ {DeathLootTable:"fa:entities/abyss_mob",Silent:1b,CustomNameVisible:0b,Health:24f,IsBaby:1b,Tags:["selected","abyss_minion"],CustomName:'{"text":"aaaaaa","color":"#080000","bold":true,"italic":true,"underlined":true,"strikethrough":true,"obfuscated":true}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1826128185,862340733,-1292307501,-2091794617],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzUyNzRkZDc3MmExYWJmZDVmZTZlNjNmZGE5ZmEyOWNhNzQ0OWFkZmE2MmM0NWQzOWE3NjhkNjhjNzFiYjYifX19"}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:24},{Name:generic.movement_speed,Base:0.32},{Name:generic.attack_damage,Base:2}]}
execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run summon zombie ~ ~ ~ {DeathLootTable:"fa:entities/abyss_mob",Silent:1b,CustomNameVisible:0b,Health:24f,IsBaby:1b,Tags:["selected","abyss_minion"],CustomName:'{"text":"aaaaaa","color":"#080000","bold":true,"italic":true,"underlined":true,"strikethrough":true,"obfuscated":true}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1826128185,862340733,-1292307501,-2091794617],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzUyNzRkZDc3MmExYWJmZDVmZTZlNjNmZGE5ZmEyOWNhNzQ0OWFkZmE2MmM0NWQzOWE3NjhkNjhjNzFiYjYifX19"}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:24},{Name:generic.movement_speed,Base:0.32},{Name:generic.attack_damage,Base:2}]}
execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run summon zombie ~ ~ ~ {DeathLootTable:"fa:entities/abyss_mob",Silent:1b,CustomNameVisible:0b,Health:24f,IsBaby:1b,Tags:["selected","abyss_minion"],CustomName:'{"text":"aaaaaa","color":"#080000","bold":true,"italic":true,"underlined":true,"strikethrough":true,"obfuscated":true}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1826128185,862340733,-1292307501,-2091794617],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzUyNzRkZDc3MmExYWJmZDVmZTZlNjNmZGE5ZmEyOWNhNzQ0OWFkZmE2MmM0NWQzOWE3NjhkNjhjNzFiYjYifX19"}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:24},{Name:generic.movement_speed,Base:0.32},{Name:generic.attack_damage,Base:2}]}
execute at @e[tag=abyss_portal_a] if entity @a[distance=..4] run summon zombie ~ ~ ~ {DeathLootTable:"fa:entities/abyss_mob",Silent:1b,CustomNameVisible:0b,Health:24f,IsBaby:1b,Tags:["selected","abyss_minion"],CustomName:'{"text":"aaaaaa","color":"#080000","bold":true,"italic":true,"underlined":true,"strikethrough":true,"obfuscated":true}',HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1826128185,862340733,-1292307501,-2091794617],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzUyNzRkZDc3MmExYWJmZDVmZTZlNjNmZGE5ZmEyOWNhNzQ0OWFkZmE2MmM0NWQzOWE3NjhkNjhjNzFiYjYifX19"}]}}}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:24},{Name:generic.movement_speed,Base:0.32},{Name:generic.attack_damage,Base:2}]}

execute as @e[tag=abyss_portal_a] at @s if entity @a[distance=..4] run kill @s

scoreboard players add @e[tag=abyss_minion] life 1
execute as @e[tag=abyss_minion,scores={life=100..}] at @s run spreadplayers ~ ~ 1 8 false @s
scoreboard players set @e[tag=abyss_minion,scores={life=100..}] life 0




















######################################################## CREEPER ########################################################

execute as @e[type=creeper,tag=!selected] run scoreboard players add CREEPER custom_mob 1

execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score CREEPER custom_mob matches 0..15 run tag @s add normal
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score CREEPER custom_mob matches 16..18 run tag @s add silent
execute as @e[type=creeper,limit=1,sort=random,tag=!selected] if score CREEPER custom_mob matches 19..20 run tag @s add power

tag @e[type=creeper] add selected
execute if score CREEPER custom_mob matches 20.. run scoreboard players set CREEPER custom_mob 0



#silent

execute as @e[type=creeper,tag=silent] run data merge entity @s {Silent:1b,Tags:["selected","silent_a"]}
execute at @e[tag=silent_a,type=creeper] run particle cloud ~ ~ ~ 0.3 0.5 0.3 0 2 normal


#power

execute as @e[type=creeper,tag=power] run data merge entity @s {ExplosionRadius:5b,Tags:["selected","power_a"]}
execute at @e[tag=power_a,type=creeper] run particle smoke ~ ~ ~ 0.3 0.5 0.3 0 1 normal















######################################################## SKELETON ########################################################

execute as @e[type=skeleton,tag=!selected] run scoreboard players add SKELETON custom_mob 1

execute as @e[type=skeleton,limit=1,sort=random,tag=!selected] if score SKELETON custom_mob matches 0..15 run tag @s add normal
execute as @e[type=skeleton,limit=1,sort=random,tag=!selected] if score SKELETON custom_mob matches 16..20 run tag @s add stray

tag @e[type=skeleton] add selected
execute if score SKELETON custom_mob matches 20.. run scoreboard players set SKELETON custom_mob 0



#stray

execute at @e[type=skeleton,tag=stray] run summon stray ~ ~ ~ {Tags:["selected"]}
tp @e[type=skeleton,tag=stray] 0 -200 0
kill @e[type=skeleton,tag=stray]


















































































