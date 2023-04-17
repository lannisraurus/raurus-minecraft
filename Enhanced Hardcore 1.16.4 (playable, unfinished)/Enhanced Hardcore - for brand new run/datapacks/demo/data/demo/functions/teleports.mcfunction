execute unless entity @e[tag=abyss1] run summon armor_stand 10084 74 9986 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["abyss1"],CustomName:'{"text":"abyss","color":"#000000","obfuscated":true}'}
execute at @e[tag=abyss1] as @a[distance=..1.8] in minecraft:hardcore_dimensions/abyss run tp 3 1 0

execute unless entity @e[tag=1,tag=return] in minecraft:hardcore_dimensions/abyss run summon armor_stand 0 2.5 0 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["return","1"],CustomName:'{"text":"Lobby","color":"aqua"}'}
execute at @e[tag=return] as @a[distance=..1.5] in minecraft:overworld run tp 10084 73 9982
execute unless entity @e[tag=2,tag=return] in minecraft:the_nether run summon armor_stand 1290 98 1087 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["return","2"],CustomName:'{"text":"Lobby","color":"#FF6105"}'}
execute in minecraft:the_end unless entity @e[tag=3,tag=return] run summon armor_stand 122 75 -34 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["return","3"],CustomName:'{"text":"Lobby","color":"#FF6105"}'}

execute unless entity @e[tag=nether] run summon armor_stand 10081 74 9986 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["nether"],CustomName:'{"text":"Nether","color":"#DE0F00"}'}
execute at @e[tag=nether] as @a[distance=..1.5] in minecraft:the_nether run tp 1290 97 1090

execute unless entity @e[tag=end] run summon armor_stand 10087 74 9986 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["end"],CustomName:'{"text":"The End","color":"#FFF7CF"}'}
execute at @e[tag=end] as @a[distance=..1.5] in minecraft:the_end run tp 122 74 -30
























