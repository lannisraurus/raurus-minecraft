execute as @a if score @s stamina_tick <= @s stamina_tick_max run scoreboard players add @s stamina_tick 1

execute as @a if score @s stamina_tick >= @s stamina_tick_max run scoreboard players add @s stamina 1

execute as @a if score @s stamina >= @s stamina_max run scoreboard players operation @s stamina = @s stamina_max



scoreboard players set @a[scores={stamina=..-1}] stamina_tick -40
effect give @a[scores={stamina=..-1}] slowness 3 3 true
effect give @a[scores={stamina=..-1}] weakness 3 0 true
effect give @a[scores={stamina=..-1}] mining_fatigue 3 0 true



scoreboard players set @a[scores={stamina=..-1}] stamina 0

######JUMP
scoreboard players set @a[scores={is_jumping=1.. , is_hurt=..0}] stamina_tick 0
scoreboard players remove @a[scores={is_jumping=1.. , is_hurt=..0}] stamina 2



#######ATTACK
scoreboard players set @a[scores={is_attacking=1..}] stamina_tick 0
scoreboard players remove @a[scores={is_attacking=1..},tag=melee1] stamina 2
scoreboard players remove @a[scores={is_attacking=1..},tag=melee2] stamina 5
scoreboard players remove @a[scores={is_attacking=1..},tag=melee3] stamina 10
scoreboard players remove @a[scores={is_attacking=1..},tag=melee4] stamina 20
scoreboard players remove @a[scores={is_attacking=1..},tag=melee5] stamina 30




#####RUN
scoreboard players set @a[scores={is_running=1..}] stamina_tick 0
scoreboard players add @a[scores={is_running=1..}] stamina_decrease_tick 1

scoreboard players remove @a[scores={stamina_decrease_tick=6..}] stamina 1
scoreboard players set @a[scores={stamina_decrease_tick=6..}] stamina_decrease_tick 0




