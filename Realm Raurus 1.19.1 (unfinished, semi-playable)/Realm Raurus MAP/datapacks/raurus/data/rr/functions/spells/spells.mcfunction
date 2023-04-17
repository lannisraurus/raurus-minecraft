function rr:spells/undead_spawn
function rr:spells/abyss_walking




########################################## spell 1: poison mist (poison sword) AND SPELL 1 PASSIVE: poison build up

# poison buildup

execute as @a[nbt={SelectedItem:{tag:{spell1:1b}}},scores={is_attacking=1..},team=!red,team=!blue] at @s run scoreboard players add @e[nbt={HurtTime:10s},distance=..5] poison_buildup 120
execute as @a[nbt={SelectedItem:{tag:{spell1:1b}}},scores={is_attacking=1..},team=red] at @s run scoreboard players add @e[nbt={HurtTime:10s},distance=..5,team=!red,] poison_buildup 120
execute as @a[nbt={SelectedItem:{tag:{spell1:1b}}},scores={is_attacking=1..},team=blue] at @s run scoreboard players add @e[nbt={HurtTime:10s},distance=..5,team=!blue] poison_buildup 120



# stat requirements

effect give @a[nbt={SelectedItem:{tag:{spell1:1b}}},scores={dex=..2}] mining_fatigue 1 3 true
effect give @a[nbt={SelectedItem:{tag:{spell1:1b}}},scores={dex=..2}] weakness 1 1 true


# poison mist

execute as @a[nbt={SelectedItem:{tag:{spell1:1b}}}] run scoreboard players operation @s cooldown = @s spell_cd_1
execute as @a[nbt={SelectedItem:{tag:{spell1:1b}}}] run scoreboard players set @s cooldown_max 400


scoreboard players set @a[nbt={SelectedItem:{tag:{spell1:1b}}},scores={right_click=1..}] spell 1


tellraw @a[scores={spell=1},tag=safe] {"text":"Cannot cast here!","color":"red"}
tellraw @a[scores={mana=..20, spell=1}] {"text":"Not enough mana!","color":"red"}
tellraw @a[scores={spell_cd_1=..399, spell=1}] {"text":"Ability on cooldown!","color":"red"}
scoreboard players set @a[scores={mana=..20, spell=1}] spell 0
scoreboard players set @a[scores={spell_cd_1=..399, spell=1}] spell 0
scoreboard players set @a[scores={spell=1},tag=safe] spell 0


scoreboard players set @a[scores={spell=1}] spell_cd_1 0
scoreboard players remove @a[scores={spell=1}] mana 20
tag @a[scores={spell=1}] add spell1
scoreboard players set @a[scores={spell=1}] spell 0

scoreboard players add @a[scores={spell_cd_1=..399}] spell_cd_1 1







execute as @a[tag=spell1] at @s anchored eyes positioned ^ ^-0.5 ^2 run function rr:particles/alchemy1

execute as @a[tag=spell1] at @s run playsound minecraft:block.brewing_stand.brew ambient @a[distance=..7] ~ ~ ~ 1 0
execute as @a[tag=spell1] at @s run playsound minecraft:block.brewing_stand.brew ambient @a[distance=..7] ~ ~ ~ 1 0.5
execute as @a[tag=spell1] at @s run playsound minecraft:block.brewing_stand.brew ambient @a[distance=..7] ~ ~ ~ 1 1
execute as @a[tag=spell1] at @s run playsound minecraft:block.brewing_stand.brew ambient @a[distance=..7] ~ ~ ~ 1 1.5
execute as @a[tag=spell1] at @s run playsound minecraft:block.brewing_stand.brew ambient @a[distance=..7] ~ ~ ~ 1 2


execute as @a[tag=spell1,team=!red,team=!blue] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["acid","neutral"]}
execute as @a[tag=spell1,team=red] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["acid","red"]}
execute as @a[tag=spell1,team=blue] at @s run summon armor_stand ~ ~1 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["acid","blue"]}

scoreboard players add @e[type=armor_stand,tag=acid] life 1

execute as @e[type=armor_stand,tag=acid,scores={life=1}] at @s run tp @s @p

kill @e[type=armor_stand,tag=acid,scores={life=130..}]
execute as @e[type=armor_stand,tag=acid,scores={life=..40}] at @s run tp ^ ^ ^0.1
execute as @e[type=armor_stand,tag=acid,scores={life=1}] at @s run tp ^ ^ ^2.5

execute at @e[type=armor_stand,tag=acid] run particle dust 0 0.4 0 1.5 ~ ~ ~ 1 1 1 0 5 normal
execute at @e[type=armor_stand,tag=acid] run particle dust 0.1 0.4 0 1.5 ~ ~ ~ 1 1 1 0 5 normal
execute at @e[type=armor_stand,tag=acid] run particle dust 0.3 0.4 0 1.5 ~ ~ ~ 1 1 1 0 5 normal


execute at @e[type=armor_stand,tag=acid,tag=neutral] run scoreboard players add @e[distance=..3,type=!armor_stand,type=!item] poison_buildup 16
execute at @e[type=armor_stand,tag=acid,tag=red] run scoreboard players add @e[distance=..3,team=!red,type=!armor_stand,type=!item] poison_buildup 16
execute at @e[type=armor_stand,tag=acid,tag=blue] run scoreboard players add @e[distance=..3,team=!blue,type=!armor_stand,type=!item] poison_buildup 16


tag @a remove spell1


















########################################## spell 2: wrath of the gods (HOLY SWORD)


# stat requirements

effect give @a[nbt={SelectedItem:{tag:{spell2:1b}}},scores={str=..3}] mining_fatigue 1 4 true
effect give @a[nbt={SelectedItem:{tag:{spell2:1b}}},scores={str=..3}] weakness 1 2 true
effect give @a[nbt={SelectedItem:{tag:{spell2:1b}}},scores={kno=..0}] mining_fatigue 1 4 true
effect give @a[nbt={SelectedItem:{tag:{spell2:1b}}},scores={kno=..0}] weakness 1 2 true
effect give @a[nbt={SelectedItem:{tag:{spell2:1b}}},scores={att=..0}] mining_fatigue 1 4 true
effect give @a[nbt={SelectedItem:{tag:{spell2:1b}}},scores={att=..0}] weakness 1 2 true



# spell


execute as @a[nbt={SelectedItem:{tag:{spell2:1b}}}] run scoreboard players operation @s cooldown = @s spell_cd_2
execute as @a[nbt={SelectedItem:{tag:{spell2:1b}}}] run scoreboard players set @s cooldown_max 400


scoreboard players set @a[nbt={SelectedItem:{tag:{spell2:1b}}},scores={right_click=1..}] spell 2


tellraw @a[scores={spell=2},tag=safe] {"text":"Cannot cast here!","color":"red"}
tellraw @a[scores={mana=..69, spell=2}] {"text":"Not enough mana!","color":"red"}
tellraw @a[scores={spell_cd_2=..399, spell=2}] {"text":"Ability on cooldown!","color":"red"}
scoreboard players set @a[scores={mana=..69, spell=2}] spell 0
scoreboard players set @a[scores={spell_cd_2=..399, spell=2}] spell 0
scoreboard players set @a[scores={spell=2},tag=safe] spell 0


scoreboard players set @a[scores={spell=2}] spell_cd_2 0
scoreboard players remove @a[scores={spell=2}] mana 70
tag @a[scores={spell=2}] add spell2
scoreboard players set @a[scores={spell=2}] spell 0

scoreboard players add @a[scores={spell_cd_2=..399}] spell_cd_2 1








scoreboard players add @a[tag=spell2] spell_ac_2 1
scoreboard players set @a[tag=!spell2] spell_ac_2 0

effect give @a[scores={spell_ac_2=1..59}] slowness 1 4 true
effect give @a[scores={spell_ac_2=1..}] resistance 1 0 true
effect give @a[scores={spell_ac_2=60..}] slowness 1 100 true

execute as @a[scores={spell_ac_2=1}] at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 2 0
execute as @a[scores={spell_ac_2=1}] at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 2 0.5
execute as @a[scores={spell_ac_2=1}] at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 2 1
execute as @a[scores={spell_ac_2=1}] at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 2 1.5
execute as @a[scores={spell_ac_2=1}] at @s run playsound minecraft:block.beacon.activate master @a[distance=..10] ~ ~ ~ 2 2



execute as @a[scores={spell_ac_2=1..87}] at @s run playsound minecraft:block.beacon.ambient master @a[distance=..10] ~ ~ ~ 1 0
execute as @a[scores={spell_ac_2=1..87}] at @s run playsound minecraft:block.beacon.ambient master @a[distance=..10] ~ ~ ~ 1 0.5
execute as @a[scores={spell_ac_2=1..87}] at @s run playsound minecraft:block.beacon.ambient master @a[distance=..10] ~ ~ ~ 1 1
execute as @a[scores={spell_ac_2=1..87}] at @s run playsound minecraft:block.beacon.ambient master @a[distance=..10] ~ ~ ~ 1 1.5
execute as @a[scores={spell_ac_2=1..87}] at @s run playsound minecraft:block.beacon.ambient master @a[distance=..10] ~ ~ ~ 1 2

execute at @a[scores={spell_ac_2=1..}] run particle end_rod ~ ~1 ~ 0.7 1 0.7 0.05 2 normal
execute at @a[scores={spell_ac_2=1..}] run particle enchant ~ ~1 ~ 0.7 1 0.7 0.05 2 normal


execute as @a[scores={spell_ac_2=90}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 2 0
execute as @a[scores={spell_ac_2=90}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 2 0.5
execute as @a[scores={spell_ac_2=90}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 2 1
execute as @a[scores={spell_ac_2=90}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 2 1.5
execute as @a[scores={spell_ac_2=90}] at @s run playsound minecraft:block.beacon.deactivate master @a[distance=..10] ~ ~ ~ 2 2

execute at @a[scores={spell_ac_2=88..90}] run particle end_rod ~ ~1 ~ 1 1 1 0.2 20 normal
execute at @a[scores={spell_ac_2=88..90}] run particle flash ~ ~1 ~ 4 4 4 0 90 normal
execute at @a[scores={spell_ac_2=88..90}] run particle enchant ~ ~1 ~ 4 4 4 0 90 normal



execute at @a[scores={spell_ac_2=90},team=!red,team=!blue] run scoreboard players add @a[distance=1..8] deal_magic_dmg 8
execute at @a[scores={spell_ac_2=90},team=red] run scoreboard players add @a[distance=..8,team=!red] deal_magic_dmg 8
execute at @a[scores={spell_ac_2=90},team=blue] run scoreboard players add @a[distance=..8,team=!blue] deal_magic_dmg 8

execute at @a[scores={spell_ac_2=90},team=!red,team=!blue] run effect give @e[distance=1..8,tag=undead] instant_health 1 0 true
execute at @a[scores={spell_ac_2=90},team=!red,team=!blue] run effect give @e[distance=1..8,tag=hostile] instant_damage 1 0 true
execute at @a[scores={spell_ac_2=90},team=red] run effect give @e[distance=1..8,tag=undead,team=!red] instant_health 1 0 true
execute at @a[scores={spell_ac_2=90},team=red] run effect give @e[distance=1..8,tag=hostile,team=!red] instant_damage 1 0 true
execute at @a[scores={spell_ac_2=90},team=blue] run effect give @e[distance=1..8,tag=undead,team=!blue] instant_health 1 0 true
execute at @a[scores={spell_ac_2=90},team=blue] run effect give @e[distance=1..8,tag=hostile,team=!blue] instant_damage 1 0 true

execute at @a[scores={spell_ac_2=90},team=!red,team=!blue] run tag @e[distance=1..8] add stunned
execute at @a[scores={spell_ac_2=90},team=red] run tag @e[distance=..8,team=!red] add stunned
execute at @a[scores={spell_ac_2=90},team=blue] run tag @e[distance=..8,team=!blue] add stunned


tag @a[scores={spell_ac_2=90..}] remove spell2












########################################## spell 3: roar (BLACK GSWORD)




# stat requirements

effect give @a[nbt={SelectedItem:{tag:{spell3:1b}}},scores={str=..5}] mining_fatigue 1 4 true
effect give @a[nbt={SelectedItem:{tag:{spell3:1b}}},scores={str=..5}] weakness 1 2 true








execute as @a[nbt={SelectedItem:{tag:{spell3:1b}}}] run scoreboard players operation @s cooldown = @s spell_cd_3
execute as @a[nbt={SelectedItem:{tag:{spell3:1b}}}] run scoreboard players set @s cooldown_max 200


scoreboard players set @a[nbt={SelectedItem:{tag:{spell3:1b}}},scores={right_click=1..}] spell 3


tellraw @a[scores={spell=3},tag=safe] {"text":"Cannot cast here!","color":"red"}
tellraw @a[scores={mana=..20, spell=3}] {"text":"Not enough mana!","color":"red"}
tellraw @a[scores={spell_cd_3=..199, spell=3}] {"text":"Ability on cooldown!","color":"red"}
scoreboard players set @a[scores={mana=..20, spell=3}] spell 0
scoreboard players set @a[scores={spell_cd_3=..199, spell=3}] spell 0
scoreboard players set @a[scores={spell=3},tag=safe] spell 0


scoreboard players set @a[scores={spell=3}] spell_cd_3 0
scoreboard players remove @a[scores={spell=3}] mana 20
tag @a[scores={spell=3}] add spell3
scoreboard players set @a[scores={spell=3}] spell 0

scoreboard players add @a[scores={spell_cd_3=..199}] spell_cd_3 1







scoreboard players add @a[tag=spell3] spell_ac_3 1
scoreboard players set @a[tag=!spell3] spell_ac_3 0

execute at @a[scores={spell_ac_3=1}] run particle dust 0 0 0 2 ~ ~1 ~ 1 1 1 0 50 normal
execute at @a[scores={spell_ac_3=1}] run playsound minecraft:entity.warden.angry master @a[distance=..6] ~ ~ ~ 1 2
execute at @a[scores={spell_ac_3=1}] run playsound minecraft:entity.warden.angry master @a[distance=..6] ~ ~ ~ 1 1
execute at @a[scores={spell_ac_3=1}] run playsound minecraft:entity.warden.angry master @a[distance=..6] ~ ~ ~ 1 0

effect give @a[scores={spell_ac_3=1}] slowness 2 4 true
effect give @a[scores={spell_ac_3=1}] resistance 2 1 true


execute at @a[scores={spell_ac_3=40}] run particle dust 0 0 0 2 ~ ~1 ~ 2 2 2 0.5 50 normal
execute at @a[scores={spell_ac_3=40}] run particle dust 0.3 0 0.3 2 ~ ~1 ~ 2 2 2 0.5 50 normal
execute at @a[scores={spell_ac_3=40}] run particle dust 0.5 0 0.5 2 ~ ~1 ~ 2 2 2 0.5 50 normal

execute at @a[scores={spell_ac_3=40}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..6] ~ ~ ~ 1 0
execute at @a[scores={spell_ac_3=40}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..6] ~ ~ ~ 1 0.2
execute at @a[scores={spell_ac_3=40}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..6] ~ ~ ~ 1 0.5
execute at @a[scores={spell_ac_3=40}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..6] ~ ~ ~ 1 0.7
execute at @a[scores={spell_ac_3=40}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..6] ~ ~ ~ 1 1


execute at @a[scores={spell_ac_3=40},team=!red,team=!blue] run tag @e[distance=1..6] add scared
execute at @a[scores={spell_ac_3=40},team=red] run tag @e[distance=..6,team=!red] add scared
execute at @a[scores={spell_ac_3=40},team=blue] run tag @e[distance=..6,team=!blue] add scared

effect give @a[scores={spell_ac_3=40}] speed 2 2 true


tag @a[scores={spell_ac_3=40..}] remove spell3













