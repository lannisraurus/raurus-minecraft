
############ LOBBY SETTINGS ############



effect give @a[nbt={Dimension:"minecraft:fa/void2"}] weakness 5 100 true
effect give @a[nbt={Dimension:"minecraft:fa/void2"}] resistance 5 100 true
effect give @a[nbt={Dimension:"minecraft:fa/void2"}] speed 5 1 true

tag @e[nbt={Dimension:"minecraft:fa/void2"}] add protected

execute as @a[nbt={Dimension:"minecraft:fa/void2"}] at @s positioned ~ 96 ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["save_cloud"]}
execute at @e[tag=save_cloud] run tp @a[distance=..2,gamemode=adventure] 0 101 0
kill @e[tag=save_cloud]


############ SPLASH SCREENS ############
scoreboard players add @a[nbt={Dimension:"minecraft:fa/void2"}] fantasia_time 1
scoreboard players add @a[nbt={Dimension:"minecraft:fa/abyss"}] abyss_title 1
scoreboard players add @a[nbt={Dimension:"minecraft:overworld"}] overworld_time 1

scoreboard players set @a[nbt=!{Dimension:"minecraft:fa/void2"}] fantasia_time 0
scoreboard players set @a[nbt=!{Dimension:"minecraft:fa/abyss"}] abyss_title 0
scoreboard players set @a[nbt=!{Dimension:"minecraft:overworld"}] overworld_time 0

title @a[scores={fantasia_time=2}] title {"text":"- Fantasia -","color":"#F8C700"}
title @a[scores={overworld_time=2}] title {"text":"- Overworld -","color":"#099800"}
title @a[scores={abyss_title=2},tag=!purgatory] title {"text":"- The Abyss -","color":"#49004A"}







scoreboard players add @a[tag=arcana_time] arcana_time 1
title @a[scores={arcana_time=2}] title {"text":"- Arcana Tower -","color":"#0655BD"}
scoreboard players set @a[tag=!arcana_time] arcana_time 0
tag @a remove arcana_time


execute in minecraft:overworld positioned 161 72 -28 run tag @a[distance=..40] add arcana_village
scoreboard players add @a[tag=arcana_village] arcana_village 1
title @a[scores={arcana_village=2}] title {"text":"- Arcana Village -","color":"#0655BD"}
scoreboard players set @a[tag=!arcana_village] arcana_village 0
tag @a remove arcana_village




execute in minecraft:overworld positioned 393 94 -127 run tag @a[distance=..35] add arcana_crater
execute in minecraft:overworld positioned 393 94 -127 run tag @e[distance=..55] add adventure_protected
scoreboard players add @a[tag=arcana_crater] arcana_crater 1
title @a[scores={arcana_crater=2}] title {"text":"- Arcana Crater -","color":"#0655BD"}
scoreboard players set @a[tag=!arcana_crater] arcana_crater 0
tag @a remove arcana_crater



execute in minecraft:overworld positioned 412 69 -86 run tag @a[distance=..22] add nature_time
execute in minecraft:overworld positioned 412 69 -86 run effect give @a[distance=..22] resistance 1 100 true
execute in minecraft:overworld positioned 412 69 -86 run tag @e[distance=..30] add protected
scoreboard players add @a[tag=nature_time] nature_time 1
title @a[scores={nature_time=2}] title {"text":"- Overgrown Cave -","color":"green"}
scoreboard players set @a[tag=!nature_time] nature_time 0
tag @a remove nature_time




execute in minecraft:overworld positioned 136 131 -239 run tag @e[distance=..25] add protected



############ MUSIC ############


scoreboard players add MUSIC life 1
execute if score MUSIC life matches 400.. in minecraft:fa/void2 run setblock -9 98 -4 redstone_block
execute if score MUSIC life matches 400.. in minecraft:fa/void2 run setblock -9 98 -4 air
execute if score MUSIC life matches 400.. run scoreboard players set MUSIC life 0







######### PROTECTED AREAS ########

execute as @e[tag=protected,type=zombie] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=spider] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=tnt] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=fireball] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=creeper] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=skeleton] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=enderman] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=witch] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=slime] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=zombie_villager] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=lightning_bolt] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=stray] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=husk] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=zombified_piglin] at @s run tp @s ~ -200 ~
execute as @e[tag=protected,type=zombie_villager] at @s run tp @s ~ -200 ~





################# SEMI PROTECTED AREAS ##################

execute as @e[tag=semi_protected,type=zombie] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=spider] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=tnt] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=fireball] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=creeper] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=skeleton] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=enderman] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=witch] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=slime] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=zombie_villager] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=lightning_bolt] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=stray] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=husk] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=zombified_piglin] at @s run tp @s ~ -200 ~
execute as @e[tag=semi_protected,type=zombie_villager] at @s run tp @s ~ -200 ~






################# ADVENTURE PROTECTED AREAS ##################

execute as @e[tag=adventure_protected,type=tnt] at @s run tp @s ~ -200 ~
execute as @e[tag=adventure_protected,type=creeper] at @s run tp @s ~ -200 ~
execute as @e[tag=adventure_protected,type=fireball] at @s run tp @s ~ -200 ~
execute as @e[tag=adventure_protected,type=enderman] at @s run tp @s ~ -200 ~




##################################### SET GAMEMODESSS

gamemode adventure @a[nbt={Dimension:"minecraft:fa/void2"},gamemode=survival]
gamemode adventure @a[tag=protected,gamemode=survival]
gamemode adventure @a[tag=semi_protected,gamemode=survival]
gamemode adventure @a[tag=adventure_protected,gamemode=survival]
gamemode survival @a[nbt={Dimension:"minecraft:overworld"},gamemode=adventure,tag=!protected,tag=!semi_protected,tag=!adventure_protected]
gamemode survival @a[nbt={Dimension:"minecraft:the_nether"},gamemode=adventure]






############ LOBBY VFX ############




#bossbar
bossbar set minecraft:1 players @a[nbt={Dimension:"minecraft:fa/void2"}]



#arcane crafting benches
execute in minecraft:fa/void2 positioned 7 101 27 run particle enchant ~ ~ ~ 0.1 0.1 0.1 0.5 3 force
execute in minecraft:fa/void2 positioned 7 101 24 run particle enchant ~ ~ ~ 0.1 0.1 0.1 0.5 3 force



#portal colours
execute in minecraft:fa/void2 positioned 23 100 24 run particle dust 0 0.6 0 1.5 ~ ~ ~ 0.3 0.05 0.3 0 5 force
execute in minecraft:fa/void2 positioned 23 100 26 run particle dust 0 0 0.8 1.5 ~ ~ ~ 0.3 0.05 0.3 0 5 force
execute in minecraft:fa/void2 positioned 23 100 28 run particle dust 0.5 0.1 0 1.5 ~ ~ ~ 0.3 0.05 0.3 0 5 force
execute in minecraft:fa/void2 positioned 23 100 30 run particle dust 1 1 0.7 1.5 ~ ~ ~ 0.3 0.05 0.3 0 5 force
execute in minecraft:fa/void2 positioned 23 100 32 run particle dust 0.5 0.8 1 1.5 ~ ~ ~ 0.3 0.05 0.3 0 5 force
execute in minecraft:fa/void2 positioned 23 100 34 run particle dust 0.01 0 0.01 1.5 ~ ~ ~ 0.3 0.05 0.3 0 5 force

execute in minecraft:fa/void2 positioned 23 100 24 run particle dust 0.5 1 0.5 0.35 ~ ~0.3 ~ 0.4 0.05 0.4 0 5 force
execute in minecraft:fa/void2 positioned 23 100 26 run particle dust 0.3 0.3 1 0.35 ~ ~0.3 ~ 0.4 0.05 0.4 0 5 force
execute in minecraft:fa/void2 positioned 23 100 28 run particle dust 1 0.5 0.2 0.35 ~ ~0.3 ~ 0.4 0.05 0.4 0 5 force
execute in minecraft:fa/void2 positioned 23 100 30 run particle dust 1 1 0.9 0.35 ~ ~0.3 ~ 0.4 0.05 0.4 0 5 force
execute in minecraft:fa/void2 positioned 23 100 32 run particle dust 0.8 0.9 1 0.35 ~ ~0.3 ~ 0.4 0.05 0.4 0 5 force
execute in minecraft:fa/void2 positioned 23 100 34 run particle dust 0.1 0 0.1 0.35 ~ ~0.3 ~ 0.4 0.05 0.4 0 5 force

















############ INVISIBLE WALLS ############



#execute in minecraft:fa/void2 run summon falling_block 3 100 47 {Time:-20000000000,BlockState:{Name:"minecraft:stone_bricks"},NoGravity:1b,Silent:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["invisible_wall"]}
#execute in minecraft:fa/void2 run summon falling_block 3 101 47 {Time:-20000000000,BlockState:{Name:"minecraft:stone_bricks"},NoGravity:1b,Silent:1b,Time:1,DropItem:0b,HurtEntities:0b,Tags:["invisible_wall"]}
#kill @e[tag=invisible_wall]