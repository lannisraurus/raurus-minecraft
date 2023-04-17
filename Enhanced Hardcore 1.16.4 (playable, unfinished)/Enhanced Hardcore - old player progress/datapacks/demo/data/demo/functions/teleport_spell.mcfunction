#objectives: teleport, add_portal, remove_portal, teleport_cd, hurt, hurt_time, teleporting, teleport_check

scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport_spell:1b}}},nbt={Dimension:"minecraft:overworld"},scores={teleport_cd=12000.. , hurt_time=..0}] teleport
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport_spell:1b}}},nbt={Dimension:"minecraft:overworld"},scores={teleport_cd=12000.. , hurt_time=..0}] add_portal
scoreboard players enable @a[nbt={SelectedItem:{tag:{teleport_spell:1b}}},nbt={Dimension:"minecraft:overworld"},scores={teleport_cd=12000.. , hurt_time=..0}] remove_portal

scoreboard players remove @a[scores={hurt_time=1..}] hurt_time 1
scoreboard players set @a[scores={hurt=1..}] hurt_time 300
scoreboard players set @a hurt 0

execute as @a[nbt={SelectedItem:{tag:{teleport_spell:1b}}}] unless entity @s[nbt={Dimension:"minecraft:overworld"},scores={teleport_cd=12000.. , hurt_time=..0}] run title @s actionbar {"text":"Cannot use right now...","color":"red"}
title @a[nbt={SelectedItem:{tag:{teleport_spell:1b}}},nbt={Dimension:"minecraft:overworld"},scores={teleport_cd=12000.. , hurt_time=..0}] actionbar {"text":"Usable!","color":"dark_green"}
scoreboard players add @a[nbt={Inventory:[{tag:{teleport_spell:1b}}]},scores={teleport_cd=..12000}] teleport_cd 1

execute unless entity @e[tag=portal,tag=lobby_portal,type=armor_stand] run summon armor_stand 10096 71 9969 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["portal","lobby_portal"]}
scoreboard players set @e[tag=portal,tag=lobby_portal] teleport 1

#teleport

tellraw @a[scores={teleport=..-1}] {"text":"Illegal value.","color":"dark_red"}
scoreboard players set @a[scores={teleport=..0}] teleport 0


scoreboard players add @a[scores={teleport=1..}] teleporting 1
effect give @a[scores={teleporting=1}] slowness 8 10 true
effect give @a[scores={teleporting=1}] blindness 8 10 true
effect give @a[scores={teleporting=1}] nausea 8 10 true
execute at @a[scores={teleporting=1..}] run particle enchant ~ ~ ~ 0.5 0.5 0.5 0 10 normal
tellraw @a[scores={teleporting=1}] {"text":"Teleporting...","italic":"true","color":"light_purple"}
execute as @a[scores={teleporting=1}] at @s run playsound minecraft:block.portal.trigger ambient @s

execute as @e[tag=portal,type=armor_stand] run function demo:do_tp

scoreboard players set @a[scores={teleporting=150..}] teleporting 0



execute at @e[tag=portal,tag=!lobby_portal] run particle dust 0.3 0.3 1 1 ~ ~ ~ 0.2 0.05 0.2 0 3 normal
execute at @e[tag=portal] run forceload add ~ ~


#add portal



execute as @a[scores={add_portal_ac=1..}] if score @s add_portal = #TEMP teleport run tellraw @s {"text":"Portal already exists.","color":"dark_red"}
execute as @a[scores={add_portal_ac=1..}] if score @s add_portal = #TEMP teleport run scoreboard players set @s add_portal 0
execute as @a[scores={add_portal_ac=1..}] if score @s add_portal = #TEMP teleport run scoreboard players set @s add_portal_ac 0

scoreboard players add @a[scores={add_portal=1..}] add_portal_ac 1

tellraw @a[scores={add_portal=..-1}] {"text":"Illegal value.","color":"dark_red"}
scoreboard players set @a[scores={add_portal=..0}] add_portal_ac 0
scoreboard players set @a[scores={add_portal=..0}] add_portal 0

execute as @a[scores={add_portal_ac=50..}] at @s if entity @e[tag=portal,distance=..6,type=armor_stand] run tellraw @s {"text":"There is already a portal close-by.","color":"dark_red"}
execute as @a[scores={add_portal_ac=50..}] at @s if entity @e[tag=portal,distance=..6,type=armor_stand] run scoreboard players set @s add_portal 0

execute at @a[scores={add_portal_ac=50..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["portal"]}
execute as @a[scores={add_portal_ac=50..}] at @s store result score @e[tag=portal,distance=..1] teleport run scoreboard players get @s add_portal
execute as @a[scores={add_portal_ac=50..}] at @s run playsound minecraft:block.end_portal_frame.fill ambient @s ~ ~ ~ 10 0.00
execute as @a[scores={add_portal_ac=50..}] at @s run playsound minecraft:block.end_portal_frame.fill ambient @s ~ ~ ~ 10 1.00
execute as @a[scores={add_portal_ac=50..}] at @s run tellraw @s {"text":"Portal created.","color":"light_purple"}
scoreboard players set @a[scores={add_portal_ac=50..}] teleport_cd 0

scoreboard players set @a[scores={add_portal_ac=50..}] add_portal 0
scoreboard players set @a[scores={add_portal_ac=50..}] add_portal_ac 0


#remove portal

execute at @a[scores={remove_portal=1..}] run tag @e[tag=portal,distance=..2] add remove_portal
execute as @a[scores={remove_portal=1..}] at @s if entity @e[tag=portal,distance=..2] run tellraw @s {"text":"Portal destroyed.","color":"light_purple"}
execute as @a[scores={remove_portal=1..}] at @s if entity @e[tag=portal,distance=..2] run playsound minecraft:block.end_portal_frame.fill ambient @s ~ ~ ~ 10 0.00
execute as @a[scores={remove_portal=1..}] at @s if entity @e[tag=portal,distance=..2] run scoreboard players set @s teleport_cd 0
execute as @a[scores={remove_portal=1..}] at @s unless entity @e[tag=portal,distance=..2] run tellraw @s {"text":"No portal found.","color":"dark_red"}
execute at @e[tag=portal,tag=remove_portal] run forceload remove ~ ~
kill @e[tag=portal,tag=remove_portal]
scoreboard players set @a[scores={remove_portal=1..}] remove_portal 0

