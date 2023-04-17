#overworld spawn protection
execute positioned 10106 56 9964 in minecraft:overworld run tag @a[distance=..60] add in_spawn
execute positioned 10106 56 9964 in minecraft:overworld run tag @a[distance=61..] remove in_spawn
execute positioned 10106 56 9964 in minecraft:overworld run gamemode adventure @a[distance=..60,gamemode=survival]
execute positioned 10106 56 9964 in minecraft:overworld run gamemode survival @a[distance=61..,gamemode=adventure,tag=!in_sky_castle]
execute positioned 10106 56 9964 in minecraft:overworld run effect give @a[distance=..60,gamemode=adventure] resistance 1 100 true
execute positioned 10106 56 9964 in minecraft:overworld run effect give @a[distance=..60,gamemode=adventure] weakness 1 100 true
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=creeper] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=zombie] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=spider] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=skeleton,tag=!friendly] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=cave_spider] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=enderman] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=witch] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=bat] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=zombie_villager] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=phantom] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=pillager] ~ -1000 ~
execute positioned 10106 56 9964 in minecraft:overworld run tp @e[distance=..61,type=tnt] ~ -1000 ~
bossbar set minecraft:hello players @a[tag=in_spawn]

#sky castle spawn protection
execute as @a[nbt={Dimension:"minecraft:hardcore_dimensions/void"}] in minecraft:hardcore_dimensions/void at @s positioned ~ 70 ~ run particle cloud ~ ~ ~ 1 0 1 0 10 force
execute as @a[nbt={Dimension:"minecraft:hardcore_dimensions/void"}] in minecraft:hardcore_dimensions/void at @s positioned ~ 70 ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["return_sky_castle"]}
execute at @e[type=armor_stand,tag=return_sky_castle] run tag @a[distance=..2] add return_to_spawn
kill @e[type=armor_stand,tag=return_sky_castle]
gamemode adventure @a[nbt={Dimension:"minecraft:hardcore_dimensions/void"},gamemode=survival]


execute as @a[tag=return_to_spawn] in minecraft:overworld run tp @s 10077 105 9984
tellraw @a[tag=return_to_spawn] {"text":"A celestial presence dismisses you...","italic":"true","color":"#F8E3FF"}
execute as @a[tag=return_to_spawn] at @s run playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 10 1.00
effect give @a[tag=return_to_spawn] blindness 3 100 true
effect give @a[tag=return_to_spawn] slowness 6 100 true
effect give @a[tag=return_to_spawn] nausea 8 100 true
effect give @a[tag=return_to_spawn] slow_falling 4 0 true
tag @a remove return_to_spawn

bossbar set minecraft:sky_castle players @a[nbt={Dimension:"minecraft:hardcore_dimensions/void"}]


#nether

execute in minecraft:the_nether positioned 1290 97 1090 run tag @a[distance=..15] add in_spawn
execute in minecraft:the_nether positioned 1290 97 1090 run tag @a[distance=15..] remove in_spawn

#end

execute in minecraft:the_end positioned 131 73 -24 run effect give @a[distance=..48] minecraft:night_vision 12 0 true
execute in minecraft:the_end positioned 131 73 -24 run tag @a[distance=..60] add in_spawn
execute in minecraft:the_end positioned 131 73 -24 run tag @a[distance=61..] remove in_spawn
execute in minecraft:the_end positioned 131 73 -24 run gamemode adventure @a[gamemode=survival,distance=..60]
execute in minecraft:the_end positioned 131 73 -24 run gamemode adventure @a[gamemode=survival,distance=61..80]
execute in minecraft:the_end positioned 131 73 -24 run tp @e[type=enderman,distance=..60] ~ ~-1000 ~



#abyss
gamemode adventure @a[gamemode=survival,nbt={Dimension:"minecraft:hardcore_dimensions/abyss"}]
tag @a[nbt={Dimension:"minecraft:hardcore_dimensions/abyss"}] remove in_spawn
effect clear @a[nbt={Dimension:"minecraft:hardcore_dimensions/abyss"},gamemode=!creative] night_vision
effect give @a[nbt={Dimension:"minecraft:hardcore_dimensions/abyss"},gamemode=!creative] weakness 1 100 true
effect give @a[nbt={Dimension:"minecraft:hardcore_dimensions/abyss"},gamemode=!creative] resistance 1 100 true




















