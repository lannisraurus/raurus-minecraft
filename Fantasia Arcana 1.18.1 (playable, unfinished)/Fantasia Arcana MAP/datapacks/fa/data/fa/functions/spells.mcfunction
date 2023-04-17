################ IGNIS #################

execute as @a[tag=!protected,scores={spells1=1 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["ignis"]}

effect give @a[tag=!protected,scores={spells1=1 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] slowness 2 3 true
scoreboard players remove @a[tag=!protected,scores={spells1=1 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] mana 100

execute as @e[tag=ignis,scores={life=1}] at @s run tp @s @p
execute as @e[tag=ignis,scores={life=1}] at @s run tp @s ^ ^ ^3
execute as @e[tag=ignis,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..6] ~ ~ ~ 1 1.85
execute as @e[tag=ignis] at @s run tp ^ ^ ^0.2
execute as @e[tag=ignis] at @s run particle flame ^1 ^1 ^ 0.5 0.6 0.5 0 3 normal
execute as @e[tag=ignis] at @s run particle flame ^ ^1 ^ 0.5 0.6 0.5 0 3 normal
execute as @e[tag=ignis] at @s run particle flame ^-1 ^1 ^ 0.5 0.6 0.5 0 3 normal

scoreboard players add @e[tag=ignis] life 1
kill @e[tag=ignis,scores={life=45..}]

execute positioned as @e[tag=ignis,scores={life=2..}] at @a[distance=..3,nbt=!{Dimension:"minecraft:fa/void2"}] run fill ~ ~ ~ ~ ~ ~ fire replace air
execute at @e[tag=ignis,scores={life=2..}] as @e[distance=..3,nbt=!{Dimension:"minecraft:fa/void2"},type=!armor_stand,type=!item,type=!player] run data merge entity @s {Fire:400}



################ ELECTROS #################



tag @a[tag=!protected,scores={spells1=2 , mana=70.. ,dark_mana=20..},nbt={SelectedItem:{tag:{spellbook1:1b}}},nbt=!{Dimension:"minecraft:fa/void2"}] add electros
scoreboard players remove @a[tag=electros] mana 70
scoreboard players remove @a[tag=electros] dark_mana 20
execute as @a[tag=electros] at @s run summon lightning_bolt ^ ^ ^7
tag @a remove electros





################ LEVITEGO #################


effect give @a[tag=!protected,scores={spells1=3 , mana=40..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] levitation 10 0
execute at @a[tag=!protected,scores={spells1=3 , mana=40..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..7] ~ ~ ~ 1 0.50
execute at @a[tag=!protected,scores={spells1=3 , mana=40..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] run particle end_rod ~ ~ ~ 1 1 1 0 30 normal
scoreboard players remove @a[tag=!protected,scores={spells1=3 , mana=40..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] mana 40



################ LEVITAE #################


execute at @a[tag=!protected,scores={spells1=4 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] run effect give @e[distance=1.5..7] levitation 6 1
execute at @a[tag=!protected,scores={spells1=4 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..7] ~ ~ ~ 1 1
execute at @a[tag=!protected,scores={spells1=4 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..7] ~ ~ ~ 1 0
execute at @a[tag=!protected,scores={spells1=4 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..7] ~ ~ ~ 1 2
execute at @a[tag=!protected,scores={spells1=4 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] run particle end_rod ~ ~ ~ 1 1 1 0 30 normal
scoreboard players remove @a[tag=!protected,scores={spells1=4 , mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}}] mana 100



################ ARRO #################


tag @a[tag=!protected,scores={spells1=5 , mana=60.. ,dark_mana=20..},nbt={SelectedItem:{tag:{spellbook1:1b}}},nbt=!{Dimension:"minecraft:fa/void2"}] add arro
scoreboard players remove @a[tag=arro] mana 60
scoreboard players remove @a[tag=arro] dark_mana 20

execute as @a[tag=arro] at @s run summon armor_stand ^ ^ ^7 {Marker:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["arro_cloud"]}
scoreboard players add @e[tag=arro_cloud] life 1
kill @e[tag=arro_cloud,scores={life=120..}]

execute at @e[tag=arro_cloud] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["arro_shot"]}
execute at @e[tag=arro_cloud] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["arro_shot"]}
execute at @e[tag=arro_cloud] run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["arro_shot"]}
execute as @e[tag=arro_shot] at @s run spreadplayers ~ ~ 1 3 false @s
execute as @e[tag=arro_shot] at @s run tp @s ~ ~7 ~
execute at @e[tag=arro_shot] run summon arrow ~ ~-1 ~ {Tags:["arro_arrow"],SoundEvent:"entity.enderman.teleport"}


kill @e[tag=arro_arrow,nbt={inGround:1b}]


kill @e[tag=arro_shot]


tag @a remove arro




################ ARCANAE #################

tag @a[tag=!protected,scores={spells1=6 , mana=100.. ,dark_mana=100..},nbt={SelectedItem:{tag:{spellbook1:1b}}},nbt=!{Dimension:"minecraft:fa/void2"}] add arcanae

execute as @a[tag=arcanae] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["arcanae_bullet"]}

effect give @a[tag=arcanae] slowness 2 3 true
scoreboard players remove @a[tag=arcanae] mana 100
scoreboard players remove @a[tag=arcanae] dark_mana 100

execute as @e[tag=arcanae_bullet,scores={life=1}] at @s run tp @s @p
execute as @e[tag=arcanae_bullet,scores={life=1}] at @s run tp @s ^ ^ ^3
execute as @e[tag=arcanae_bullet,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..6] ~ ~ ~ 1 0
execute as @e[tag=arcanae_bullet,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..6] ~ ~ ~ 1 1
execute as @e[tag=arcanae_bullet,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..6] ~ ~ ~ 1 2
execute as @e[tag=arcanae_bullet,scores={life=1}] at @s run playsound minecraft:block.beacon.activate master @a[distance=..6] ~ ~ ~ 1 1
execute as @e[tag=arcanae_bullet,scores={life=1}] at @s run playsound minecraft:block.beacon.activate master @a[distance=..6] ~ ~ ~ 1 2
execute as @e[tag=arcanae_bullet] at @s run tp ^ ^ ^0.5
execute as @e[tag=arcanae_bullet,scores={life=1..}] at @s run particle soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 0 5 normal
execute as @e[tag=arcanae_bullet,scores={life=1..}] at @s run particle witch ~ ~1 ~ 0.3 0.3 0.3 0 1 normal
execute as @e[tag=arcanae_bullet,scores={life=1..}] at @s run particle enchant ~ ~1 ~ 0.3 0.3 0.3 1 5 normal


execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 10 0
execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 10 1
execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run playsound minecraft:block.beacon.deactivate master @a[distance=..20] ~ ~ ~ 10 2
execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run particle soul_fire_flame ~ ~1 ~ 0.3 0.3 0.3 1 30 normal
execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run particle flash ~ ~1 ~ 0 0 0 0 2 normal

execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run effect give @e[distance=..7,tag=!undead] instant_damage 1 1 true
execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run effect give @e[distance=..7,tag=undead] instant_health 1 2 true
execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run effect give @e[distance=..7] slowness 6 1 true
execute at @e[tag=arcanae_bullet,scores={life=1..}] if entity @e[distance=..2,type=!armor_stand] run effect give @e[distance=..7] blindness 6 1 true

execute as @e[tag=arcanae_bullet,scores={life=1..}] at @s if entity @e[distance=..2,type=!armor_stand] run kill @s

scoreboard players add @e[tag=arcanae_bullet] life 1
kill @e[tag=arcanae_bullet,scores={life=200..}]



tag @a remove arcanae








########################## SPELLS 1 CANT USE HERE

tellraw @a[tag=protected,scores={spells1=1..}] {"text":"Can't use spells in this area.","color":"dark_red","bold":"true"}


































scoreboard players set @a spells1 0