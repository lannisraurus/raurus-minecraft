scoreboard players add @a mana_tick 13

execute as @a if score @s mana_tick >= @s mana_tick_max run scoreboard players add @s mana 1
execute as @a if score @s mana_tick >= @s mana_tick_max run scoreboard players set @s mana_tick 0

execute as @a if score @s mana >= @s mana_max run scoreboard players operation @s mana = @s mana_max
scoreboard players set @a[scores={mana=..0}] mana 0