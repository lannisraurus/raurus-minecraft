#angel room
execute positioned 10094.00 44.54 9979.75 in minecraft:overworld run effect give @a[distance=..10] minecraft:night_vision 15 1 true
execute positioned 10094.00 44.54 9979.75 in minecraft:overworld run particle dust 1 1 1 10 ~ ~4.5 ~ 5 1 5 0 1 normal
execute positioned 10094.00 44.54 9979.75 in minecraft:overworld run particle minecraft:end_rod ~ ~4.5 ~ 5 1 5 0.04 1 normal
execute positioned 10094.00 44.54 9979.75 in minecraft:overworld run particle minecraft:enchant ~ ~4.5 ~ 5 1 5 0.04 1 normal

#end room
execute in minecraft:the_end unless entity @e[tag=complete_stand] run summon armor_stand 125.0 76 -9 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["complete_stand"],CustomName:'{"text":"Complete all Achievements to open...","color":"#FFFFFF","bold":true}'}

#wilderness
execute in minecraft:overworld unless entity @e[tag=select_stand] run summon armor_stand 10130 80 9948 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["select_stand"],CustomName:'{"text":"Wilderness","color":"dark_green","bold":true}'}
execute in minecraft:overworld unless entity @e[tag=select_stand2] run summon armor_stand 10130 79.8 9948 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["select_stand2"],CustomName:'{"text":"Jump down to be teleported","color":"green"}'}
particle minecraft:happy_villager 10130 79.8 9948 2 2 2 0 1 normal

#sky castle
execute in minecraft:hardcore_dimensions/void positioned 580 255 520 run particle cloud ~ ~ ~ 3 1 3 0 100 force
execute in minecraft:hardcore_dimensions/void positioned 580 123 520 run effect give @a[distance=..5] slow_falling 1 0 true


#sky castle invisible blocks
execute in minecraft:hardcore_dimensions/void run summon falling_block 558 131 590 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 558 131 591 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 558 131 592 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 558 132 590 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 558 132 591 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 558 132 592 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}

execute in minecraft:hardcore_dimensions/void run summon falling_block 563 131 590 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 563 131 591 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 563 131 592 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 563 132 590 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 563 132 591 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}
execute in minecraft:hardcore_dimensions/void run summon falling_block 563 132 592 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}

execute in minecraft:hardcore_dimensions/void run summon falling_block 578 137 596 {BlockState:{Name:"minecraft:smooth_quartz"},NoGravity:1b,Time:1,HurtEntities:0b,Tags:["invisible_block"]}


kill @e[type=falling_block,tag=invisible_block]


#new moon altar particles

execute if score time time matches 13000..23000 positioned 10077 97 9984 run particle dust 1 1 1 2 ~ ~1 ~ 0.1 0 0.1 0 1 normal
execute if score time time matches 23000.. positioned 10077 97 9984 run particle dust 0 0 0 2 ~ ~1 ~ 0.1 0 0.1 0 1 normal
execute if score time time matches 0..13000 positioned 10077 97 9984 run particle dust 0 0 0 2 ~ ~1 ~ 0.1 0 0.1 0 1 normal
execute positioned 10077 97 9984 run particle dust 0.8 0.8 0.8 0.4 ~ ~1 ~ 0.4 0.4 0.4 0 1 normal
execute positioned 10077 97 9984 run particle dust 0.2 0.2 0.2 0.4 ~ ~1 ~ 0.4 0.4 0.4 0 1 normal
execute positioned 10077 97 9984 run particle enchant ~ ~1.5 ~ 0.4 0.2 0.4 0.6 1 normal
execute positioned 10077 97 9984 run playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..8] ~ ~ ~ 0.2 0.00

execute positioned 10077 97 9984 if score time time matches 23000.. run playsound minecraft:ambient.soul_sand_valley.mood ambient @a[distance=..8] ~ ~ ~ 0.2 2.00
execute positioned 10077 97 9984 if score time time matches 23000.. run particle flame ~ ~1 ~ 0.4 0.4 0.4 0.05 1 normal
execute positioned 10077 97 9984 if score time time matches 23000.. run particle dust 0.8 0.4 0 2 ~ ~1 ~ 0 200 0 0 100 force
execute positioned 10077 97 9984 if score time time matches 23000.. run particle enchant ~ ~1 ~ 0.4 0.4 0.4 1 1 normal

execute positioned 10077 97 9984 if score time time matches 13000..14000 run playsound minecraft:block.beacon.ambient ambient @a[distance=..8] ~ ~ ~ 100 0.00
execute positioned 10077 97 9984 if score time time matches 13000..14000 run playsound minecraft:block.beacon.ambient ambient @a[distance=..8] ~ ~ ~ 100 1.00
execute positioned 10077 97 9984 if score time time matches 13000..14000 run playsound minecraft:block.beacon.ambient ambient @a[distance=..8] ~ ~ ~ 100 2.00
execute positioned 10077 97 9984 if score time time matches 13000..14000 run particle soul_fire_flame ~ ~1 ~ 0.4 0.4 0.4 0.05 1 normal
execute positioned 10077 97 9984 if score time time matches 13000..14000 run particle dust 0.5 0.8 1 2 ~ ~1 ~ 0 200 0 0 100 force
execute positioned 10077 97 9984 if score time time matches 13000..14000 run particle enchant ~ ~1 ~ 0.4 0.4 0.4 1 1 normal



execute positioned 10077 97 9984 if score time time matches 13000..14000 run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 soul_torch replace torch
execute positioned 10077 97 9984 if score time time matches 14000..23000 run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 torch replace soul_torch
execute positioned 10077 97 9984 if score time time matches 23000.. run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 redstone_torch replace torch
execute positioned 10077 97 9984 if score time time matches 0..13000 run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 torch replace redstone_torch















