scoreboard players add @a[scores={death1=1..},tag=!tp_home] death2 1
scoreboard players set @a[scores={death2=6..}] death2 6
scoreboard players set @a[scores={death2=..0}] death2 0


execute store result score time time run time query daytime





execute as @a store result score @s exp run xp query @s levels
execute as @a store result score @s exp2 run xp query @s points


tag @e[type=zombie] add undead
tag @e[type=skeleton] add undead
tag @e[type=husk] add undead
tag @e[type=stray] add undead
tag @e[type=wither] add undead
tag @e[type=wither_skeleton] add undead



scoreboard players set @a walk 0
scoreboard players set @a sneak 0
scoreboard players set @a run 0
scoreboard players set @a jump 0
scoreboard players set @a hurt 0
scoreboard players set @a death1 0
scoreboard players set @a move 0
scoreboard players set @a talk 0
scoreboard players set @a drink_potion 0
scoreboard players set @a kill_player 0


scoreboard players set @a use_artifact 0


scoreboard players enable @a warp
scoreboard players set @a warp 0


kill @e[type=minecraft:item,nbt={Item:{tag:{kill:1b}}}]




tag @a remove protected
tag @a remove semi_protected
tag @a remove adventure_protected