execute positioned 4 75.5 1 unless entity @e[tag=stand_1] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_1"],CustomName:"{\"text\":\"Welcome to\",\"color\":\"white\",\"bold\":true}"}
execute positioned 4 75.2 1 unless entity @e[tag=stand_2] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_2"],CustomName:"{\"text\":\"Universal Merge\",\"color\":\"red\",\"bold\":false}"}
execute positioned 10 75.5 1 unless entity @e[tag=stand_3] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_3"],CustomName:"{\"text\":\"Information\",\"color\":\"dark_green\",\"bold\":true}"}
execute positioned 10 75.2 1 unless entity @e[tag=stand_4] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_4"],CustomName:"{\"text\":\"<----->\",\"color\":\"green\",\"bold\":false}"}
execute positioned 16 75.5 1 unless entity @e[tag=stand_5] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_5"],CustomName:"{\"text\":\"Classes\",\"color\":\"yellow\",\"bold\":true}"}
execute positioned 28 75.5 1 unless entity @e[tag=stand_6] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_6"],CustomName:"{\"text\":\"Start\",\"color\":\"gold\",\"bold\":true}"}
execute positioned 28 75.2 1 unless entity @e[tag=stand_7] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_7"],CustomName:"{\"text\":\"(Right Click)\",\"color\":\"gold\",\"bold\":false}"}
execute positioned -7 75.2 0 unless entity @e[tag=stand_8] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_8"],CustomName:"{\"text\":\"Training\",\"color\":\"blue\",\"bold\":true}"}


execute positioned -300 91 -284 if entity @e[distance=..8,tag=red,tag=tower_1] run setblock ~ ~ ~ red_wool
execute positioned -300 91 -284 if entity @e[distance=..8,tag=blue,tag=tower_1] run setblock ~ ~ ~ blue_wool
execute positioned -300 91 -284 if entity @e[distance=..8,tag=neutral,tag=tower_1] run setblock ~ ~ ~ purple_wool

execute positioned -300 91 -284 if entity @e[distance=..8,tag=red,tag=tower_1] run particle dust 1 0 0 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force
execute positioned -300 91 -284 if entity @e[distance=..8,tag=blue,tag=tower_1] run particle dust 0 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force
execute positioned -300 91 -284 if entity @e[distance=..8,tag=neutral,tag=tower_1] run particle dust 1 0 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 1 force

execute positioned 17 75.2 -8 unless entity @e[tag=stand_9] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,Small:1b,Marker:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_9"],Pose:{Body:[0f,11f,0f],LeftArm:[282f,36f,0f],RightArm:[292f,344f,0f],LeftLeg:[3f,38f,0f],RightLeg:[338f,38f,0f],Head:[0f,17f,338f]},HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b},{},{}],Charged:1b}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3020547}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:3020547}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5376006}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"1165dfc5-ebc2-44ee-aee2-cfc3c4e115ab",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2M0NjUzODZiYmU5ZmFmMTQzN2FmNjM3N2Q2NjczNWRjNWExNWVhNWNlZGYyNmJkOTVmZDNmZTY2YjNhZmNkIn19fQ=="}]}}}}]}
execute positioned 17 76.2 -8 unless entity @e[tag=stand_10] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["stand_10"],CustomName:"{\"text\":\"Artemis\",\"color\":\"dark_red\",\"bold\":true}"}

#blue tower near
execute positioned -162 85 -240 unless entity @e[tag=tower_1,distance=..4] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["neutral","tower_1"]}
#neutral tower middle
execute positioned -301 84 -286 unless entity @e[tag=tower_1,distance=..4] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["neutral","tower_1"]}
#blue tower far
execute positioned -203 117 -408 unless entity @e[tag=tower_1,distance=..4] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["neutral","tower_1"]}
#red tower near
execute positioned -439 75 -356 unless entity @e[tag=tower_1,distance=..4] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["neutral","tower_1"]}
#red tower far
execute positioned -400 91 -163 unless entity @e[tag=tower_1,distance=..4] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["neutral","tower_1"]}
#neutral tower 1









