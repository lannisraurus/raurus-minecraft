# kill exp
scoreboard players add @a[scores={exp_kill=1..}] exp 7
scoreboard players add @a[scores={exp_kill=1..}] blood 5
scoreboard players add @a[tag=blood_demon,scores={exp_kill=1..}] blood 3
effect give @a[tag=blood_demon,scores={exp_kill=1..}] regeneration 5 0 true



# passive exp
scoreboard players add @a[tag=has_class] passive_exp 1
scoreboard players add @a[scores={passive_exp=1200..}] exp 3
scoreboard players set @a[scores={passive_exp=1200..}] passive_exp 0



# breed exp
scoreboard players add @a[scores={exp_breed=1..}] exp 6
scoreboard players set @a exp_breed 0



# lvl up
execute as @a if score @s exp >= @s exp_level_up run title @s title {"text":"- Level up! -","color":"green"}
execute as @a if score @s exp >= @s exp_level_up run title @s subtitle {"text":" "}
execute as @a if score @s exp >= @s exp_level_up at @s run playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 0.6 0.5
execute as @a if score @s exp >= @s exp_level_up run scoreboard players add @s lvl_up 1
execute as @a if score @s exp >= @s exp_level_up run scoreboard players add @s exp_level_up 200
execute as @a if score @s exp >= @s exp_level_up run scoreboard players set @s exp 0
