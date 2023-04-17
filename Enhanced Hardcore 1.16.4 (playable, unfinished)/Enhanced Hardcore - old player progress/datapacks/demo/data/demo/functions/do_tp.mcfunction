scoreboard players operation #TEMP teleport = @s teleport

execute at @s as @a[scores={teleport=1..,teleporting=150..}] unless score @s teleport = #TEMP teleport run tellraw @s {"text":"Portal not found.","color":"dark_red"}
execute at @s as @a[scores={teleport=1..,teleporting=150..}] unless score @s teleport = #TEMP teleport run tag @s add cancel_tp
scoreboard players set @a[tag=cancel_tp] teleport 0
scoreboard players set @a[tag=cancel_tp] teleporting 0
tag @a[tag=cancel_tp] remove cancel_tp

execute at @s as @a[scores={teleport=1..,teleporting=100..}] if score @s teleport = #TEMP teleport run teleport @s ~ ~ ~
execute at @s as @a[scores={teleport=1..,teleporting=100..}] if score @s teleport = #TEMP teleport run scoreboard players set @s teleport_cd 0
execute at @s as @a[scores={teleport=1..,teleporting=100..}] if score @s teleport = #TEMP teleport run tag @s add cancel_tp
