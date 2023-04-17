
scoreboard players set red scores 25000
scoreboard players set blue scores 25000
scoreboard players set towers_game_end towers_game_end 0



execute in dim:interstice as @e[type=!player] at @s run tp @s ~ -100 ~
execute in minecraft:overworld positioned -30 -6 -35 as @e[type=!player] at @s run tp @s ~ -100 ~

execute in dim:interstice run kill @e[type=!player]
execute in minecraft:overworld positioned -30 -6 -35 run kill @e[type=!player]

#### click to start villager
execute in dim:interstice positioned 0 101 -11 run summon villager ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["game_start"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
#### click to start armor stand info
execute in dim:interstice positioned 0 102.6 -11 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text1"],CustomName:'{"text":"Click here to play!","color":"#087500","bold":true}'}
execute in dim:interstice positioned 0 102.3 -11 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text2"],CustomName:'{"text":"Voting in progress...","color":"#087500"}'}








##### towers
execute in minecraft:overworld positioned 16 83 -18 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["tower"]}
execute in minecraft:overworld positioned 82 86 74 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["tower"]}
execute in minecraft:overworld positioned 169 79 126 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["tower"]}
execute in minecraft:overworld positioned 0 78 187 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["tower"]}
execute in minecraft:overworld positioned 189 79 -76 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["tower"]}


##### click to leave in customize
execute in dim:interstice positioned -28 101 0 run summon villager ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["game_leave"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
#### click to leave armor stand info
execute in dim:interstice positioned -28 102.3 0 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text3"],CustomName:'{"text":"Click here to leave match.","color":"#087500","bold":true}'}



##### click to ready in customize
execute in dim:interstice positioned -42 101 0 run summon villager ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["game_ready"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
#### click to leave armor stand info
execute in dim:interstice positioned -42 102.3 0 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text4"],CustomName:'{"text":"Click here to ready up!","color":"#087500","bold":true}'}




#### Text Armor stands


execute in dim:interstice positioned 0 102.5 12 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text5"],CustomName:'{"text":"Free Arena","color":"#087500","bold":true}'}



















#### knockbackers minigame
execute in dim:interstice positioned -11 101 -1 run summon villager ~ ~ ~ {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["join_knockbackers"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
execute in dim:interstice positioned -11 102.6 -1 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text6"],CustomName:'{"text":"Click here to play","color":"#087500","bold":true}'}
execute in dim:interstice positioned -11 102.3 -1 run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["text7"],CustomName:'{"text":"The Knockbackers!","color":"#087500"}'}



execute in dim:interstice positioned -67 91 -68 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["knockbackers_tower"]}
execute in dim:interstice positioned -57 83 -83 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["knockbackers_tower"]}
execute in dim:interstice positioned -39 85 -65 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["knockbackers_tower"]}
execute in dim:interstice positioned -32 85 -78 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["knockbackers_tower"]}
execute in dim:interstice positioned -36 88 -103 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["knockbackers_tower"]}






