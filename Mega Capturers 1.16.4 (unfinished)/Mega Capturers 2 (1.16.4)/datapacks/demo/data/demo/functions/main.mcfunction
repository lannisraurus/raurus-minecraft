execute at @e[team=1] run particle dust 1 0 0 1 ^ ^2.8 ^ 0 0 0 0 1 force
execute at @e[team=2] run particle dust 0 0 1 1 ^ ^2.8 ^ 0 0 0 0 1 force
scoreboard players add @a point_switch_cd 1
scoreboard players add @a[scores={point_switch_cd=100..}] point_switch 1
scoreboard players set @a[scores={point_switch=2..}] point_switch 0
bossbar set minecraft:1 players @a[scores={point_switch=0}]
bossbar set minecraft:2 players @a[scores={point_switch=1}]
scoreboard players set @a[scores={point_switch_cd=100..}] point_switch_cd 0

execute store result bossbar minecraft:1 value run scoreboard players get RedTeam points
execute store result bossbar minecraft:2 value run scoreboard players get BlueTeam points


tag @a[tag=!crossbow] remove rocket_roll
tag @a[tag=!crossbow] remove trusty_crossbow
tag @a[tag=!crossbow] remove cb_rocket
scoreboard players set @a[tag=!viking] viking_switch 1
scoreboard players set @a[tag=!crossbow] cb_rocket_cd 0
scoreboard players set @a[tag=!crossbow] rocket_roll_cd 0
scoreboard players set @a[tag=!crossbow] pillager_cd 0



tag @a[x=-301,y=83,z=-286,distance=..290] add in_map_1
tag @a[x=0,y=74,z=0,distance=..50] add in_lobby

scoreboard players set @a[tag=in_map_1,team=1] in_map_1 0
scoreboard players set @a[tag=in_map_1,team=2] in_map_1 1
scoreboard players reset @a[tag=!in_map_1] in_map_1





























function demo:tags
function demo:stands
function demo:rightclickvillager
function demo:map_1

function demo:crossbow
function demo:void_fighter
#function demo:viking



tag @a[tag=in_map_1] remove in_map_1
tag @a[tag=in_lobby] remove in_lobby


kill @e[type=item,nbt={Item:{id:"minecraft:firework_rocket"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:arrow"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_leggings"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_boots"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:leather_chestplate"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_sword"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_axe"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_torch"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:stone_sword"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

scoreboard players set @a[scores={use_ability=1..}] use_ability 0