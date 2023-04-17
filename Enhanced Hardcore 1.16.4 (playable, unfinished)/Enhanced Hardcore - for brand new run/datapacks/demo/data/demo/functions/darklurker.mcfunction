tag @a[nbt={SelectedItem:{tag:{darklurker:1b}}}] add darklurker
execute as @a[tag=darklurker,scores={hit=1.. , hit_succ=..0}] at @s run summon armor_stand ^2.2 ^ ^1.2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["swing","swing0"]}
execute as @e[type=armor_stand,tag=swing0] at @s facing entity @p[tag=darklurker] eyes run tp @s ^1.3 ^ ^
scoreboard players add @e[tag=swing,type=armor_stand] life 1
kill @e[scores={life=6..}]
execute at @e[tag=swing,type=armor_stand] run particle squid_ink ~ ~1 ~ 0 0 0 0 20 force
execute at @e[tag=swing,type=armor_stand] run effect give @e[distance=..1.5] wither 6 1 true
execute at @a[tag=darklurker] run particle falling_dust minecraft:black_concrete ^-0.5 ^0.8 ^0.8 0.1 0 0.1 1 1 force
scoreboard players set @a[tag=darklurker,scores={hit=1..}] hit_succ_timer 60
scoreboard players set @a[scores={hit_succ_timer=..0}] hit_succ 0
execute as @a[tag=darklurker,scores={hit=1.. , hit_succ=1}] at @s run summon armor_stand ^ ^3 ^2.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["swing","swing1"]}
execute as @e[type=armor_stand,tag=swing1] at @s facing entity @p[tag=darklurker] eyes run tp @s ~ ~-1.3 ~
execute as @a[tag=darklurker,scores={hit=1.. , hit_succ=2}] at @s run summon armor_stand ^-1.5 ^2.5 ^1.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["swing","swing2"]}
execute as @e[type=armor_stand,tag=swing2] at @s facing entity @p[tag=darklurker] eyes run tp @s ^-0.65 ^-0.65 ^
scoreboard players set @a[scores={hit_succ=3..}] hit_succ 0
scoreboard players add @a[tag=darklurker,scores={hit=1..}] hit_succ 1
scoreboard players remove @a[scores={hit_succ_timer=1..}] hit_succ_timer 1
execute at @a[tag=darklurker,scores={hit=1..}] run playsound minecraft:entity.wither.hurt ambient @a[distance=..6] ~ ~ ~ 0.2 0.00
execute at @a[tag=darklurker,scores={hit=1..}] run playsound minecraft:entity.wither.hurt ambient @a[distance=..6] ~ ~ ~ 0.2 1.00
execute at @a[tag=darklurker,scores={hit=1..}] run playsound minecraft:entity.wither.hurt ambient @a[distance=..6] ~ ~ ~ 0.2 2.00
scoreboard players set @a hit 0
tag @a remove darklurker