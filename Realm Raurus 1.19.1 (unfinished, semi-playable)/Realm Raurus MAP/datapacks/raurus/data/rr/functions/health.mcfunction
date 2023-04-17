
tag @a[tag=health_restore] add update_player




execute as @a store result score @s health run data get entity @s Health

execute as @a run scoreboard players operation @s health_calc = @s health
execute as @a run scoreboard players operation @s health_calc -= @s deal_dmg




execute as @a[scores={health_calc=39 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 39
execute as @a[scores={health_calc=38 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 38
execute as @a[scores={health_calc=37 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 37
execute as @a[scores={health_calc=36 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 36
execute as @a[scores={health_calc=35 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 35
execute as @a[scores={health_calc=34 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 34
execute as @a[scores={health_calc=33 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 33
execute as @a[scores={health_calc=32 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 32
execute as @a[scores={health_calc=31 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 31
execute as @a[scores={health_calc=30 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 30

execute as @a[scores={health_calc=29 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 29
execute as @a[scores={health_calc=28 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 28
execute as @a[scores={health_calc=27 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 27
execute as @a[scores={health_calc=26 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 26
execute as @a[scores={health_calc=25 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 25
execute as @a[scores={health_calc=24 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 24
execute as @a[scores={health_calc=23 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 23
execute as @a[scores={health_calc=22 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 22
execute as @a[scores={health_calc=21 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 21
execute as @a[scores={health_calc=20 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 20

execute as @a[scores={health_calc=19 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 19
execute as @a[scores={health_calc=18 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 18
execute as @a[scores={health_calc=17 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 17
execute as @a[scores={health_calc=16 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 16
execute as @a[scores={health_calc=15 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 15
execute as @a[scores={health_calc=14 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 14
execute as @a[scores={health_calc=13 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 13
execute as @a[scores={health_calc=12 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 12
execute as @a[scores={health_calc=11 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 11
execute as @a[scores={health_calc=10 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 10

execute as @a[scores={health_calc=9 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 9
execute as @a[scores={health_calc=8 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 8
execute as @a[scores={health_calc=7 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 7
execute as @a[scores={health_calc=6 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 6
execute as @a[scores={health_calc=5 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 5
execute as @a[scores={health_calc=4 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 4
execute as @a[scores={health_calc=3 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 3
execute as @a[scores={health_calc=2 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 2
execute as @a[scores={health_calc=1 , deal_dmg=1..}] run attribute @s minecraft:generic.max_health base set 1

execute as @a[scores={health_calc=..0}] run kill @s






execute as @a[scores={deal_dmg=1..}] run effect give @s wither 1 1 true
#execute as @a[tag=health_restore,tag=update_player] run effect give @s regeneration 1 1 true




tag @a[scores={deal_dmg=1..},tag=!update_player] add health_restore
tag @a[tag=health_restore,tag=update_player] remove health_restore



scoreboard players set @a deal_dmg 0






