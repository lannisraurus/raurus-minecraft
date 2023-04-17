########### ABYSS SOUL LIGHT ###########
execute at @a[nbt={Dimension:"minecraft:overworld"},gamemode=survival] in minecraft:fa/abyss run particle end_rod ~ 3 ~ 0 0 0 0 1 normal
execute at @e[tag=abyss_soul_test] in minecraft:fa/abyss run particle end_rod ~ 3 ~ 0 0 0 0 1 normal




kill @e[type=creeper,nbt={Dimension:"minecraft:fa/abyss"}]
kill @e[type=tnt,nbt={Dimension:"minecraft:fa/abyss"}]
kill @e[type=fireball,nbt={Dimension:"minecraft:fa/abyss"}]


gamemode adventure @a[nbt={Dimension:"minecraft:fa/abyss"},gamemode=survival]
effect clear @a[nbt={Dimension:"minecraft:fa/abyss"},tag=!admin] night_vision
execute in minecraft:fa/abyss positioned 8 26 -9 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.001 3 normal
execute in minecraft:fa/abyss positioned 8 26 -9 run particle flame ~ ~0.6 ~ 0.2 0.2 0.2 0.001 2 normal
execute in minecraft:fa/abyss positioned 8 26 -9 run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.0001 1 normal

scoreboard players add @a abyss_time 1
execute as @a[nbt={Dimension:"minecraft:fa/abyss"},scores={abyss_time=120..}] at @s run playsound minecraft:entity.wither.ambient ambient @a ~ ~ ~ 0.03 0.00
scoreboard players set @a[scores={abyss_time=120..}] abyss_time 0


scoreboard players add @a[tag=purgatory_tp] purgatory_tp 1

tag @a[tag=purgatory_tp] add purgatory
execute as @a[tag=purgatory_tp] in minecraft:fa/abyss run tp @s 6 26 -11 -57 15
tag @a[scores={purgatory_tp=200..}] remove purgatory_tp
scoreboard players set @a[scores={purgatory_tp=200..}] purgatory_tp 0

effect give @a[tag=purgatory] slowness 1 2 true
effect give @a[tag=purgatory] blindness 6 0 true
effect give @a[tag=purgatory] resistance 1 100 true

scoreboard players enable @a[tag=purgatory] revive

scoreboard players add @a[tag=purgatory] purgatory_time 1
tellraw @a[tag=purgatory,scores={purgatory_time=20}] {"text":"<???> Oh... another mortal stumbles upon this lonely place..."}
tellraw @a[tag=purgatory,scores={purgatory_time=120}] {"text":"<???> Poor you... by the look in your face, your death must have been painful..."}
tellraw @a[tag=purgatory,scores={purgatory_time=220}] {"text":"<???> Now, now... do not be afraid... You are safe here..."}
tellraw @a[tag=purgatory,scores={purgatory_time=320}] {"text":"<???> ..."}
tellraw @a[tag=purgatory,scores={purgatory_time=420}] {"text":"<???> Perhaps I could give you another chance... What do you say?"}
tellraw @a[tag=purgatory,scores={purgatory_time=520}] {"text":"<???> ..."}
tellraw @a[tag=purgatory,scores={purgatory_time=620}] {"text":"<???> I see... You must, however, pay with something... What will it be, mortal?"}

tellraw @a[tag=purgatory,scores={purgatory_time=680}] ["",{"text":"------------------------------------------\n","bold":true,"color":"white"},{"text":"[CLICK] I will pay with my blood. (pay 1000 blood)","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger revive set 1"}},{"text":"\n","bold":true,"color":"white"},{"text":"[CLICK] I will pay with my diamonds. (pay 5 diamonds, put in separate slot)","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger revive set 2"}},{"text":"\n","bold":true},{"text":"[CLICK] I will pay with my XP. (pay 30 xp levels)","bold":true,"clickEvent":{"action":"run_command","value":"/trigger revive set 3"}},{"text":"\n","bold":true},{"text":"[CLICK] I will pay with my wings. (pay with your wings)","bold":true,"clickEvent":{"action":"run_command","value":"/trigger revive set 4"}},{"text":"\n","bold":true},{"text":"[CLICK] I will pay with my SOUL. (become insane)","bold":true,"clickEvent":{"action":"run_command","value":"/trigger revive set 5"}},{"text":"\n------------------------------------------","bold":true},{"text":"\n "}]

scoreboard players set @a[tag=!purgatory] purgatory_time 0


tag @a[tag=purgatory,scores={blood=1000.. , revive=1}] add return1
tag @a[tag=purgatory,scores={revive=2},nbt={Inventory:[{id:"minecraft:diamond",Count:5b}]}] add return2
tag @a[tag=purgatory,scores={revive=3 , exp=30..}] add return3
tag @a[tag=purgatory,scores={revive=4},nbt={Inventory:[{id:"minecraft:elytra",Count:1b}]}] add return4
tag @a[tag=purgatory,scores={revive=5}] add return5

scoreboard players remove @a[tag=return1,scores={return_time=1}] blood 1000
clear @a[tag=return2,scores={return_time=1}] diamond 5
xp add @a[tag=return3,scores={return_time=1}] -30 levels
clear @a[tag=return4,scores={return_time=1}] elytra 1
tag @a[tag=return5,scores={return_time=1}] add insane

scoreboard players add @a[tag=return1] return_time 1
scoreboard players add @a[tag=return2] return_time 1
scoreboard players add @a[tag=return3] return_time 1
scoreboard players add @a[tag=return4] return_time 1
scoreboard players add @a[tag=return5] return_time 1

tellraw @a[tag=purgatory,scores={return_time=1}] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nn\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @a[tag=purgatory,scores={return_time=2}] {"text":"<???> Very well."}
tellraw @a[tag=purgatory,scores={return_time=60}] {"text":"<???> Goodbye, for now..."}
tellraw @a[tag=purgatory,scores={return_time=80}] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nn\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @a[tag=purgatory,scores={return_time=80}] {"text":"It was all just a bad dream...","italic":"true","color":"gray"}

tag @a[scores={return_time=80..}] remove purgatory
tag @a[scores={return_time=80..}] remove return1
tag @a[scores={return_time=80..}] remove return2
tag @a[scores={return_time=80..}] remove return3
tag @a[scores={return_time=80..}] remove return4
tag @a[scores={return_time=80..}] remove return5
execute as @a[scores={return_time=80..}] in minecraft:fa/void2 run tp @s 0 101 0
scoreboard players set @a[scores={return_time=80..}] death2 0
scoreboard players set @a[scores={return_time=80..}] return_time 0









######## DONT LET PURGATORY PLAYERS LEAVE

execute in minecraft:fa/abyss positioned 6 26 -7 run tp @a[tag=purgatory,distance=9..] 6 26 -11 -57 15
execute in minecraft:fa/abyss positioned 6 26 -7 run tp @a[tag=purgatory,nbt=!{Dimension:"minecraft:fa/abyss"}] 6 26 -11 -57 15









scoreboard players set @a revive 0























