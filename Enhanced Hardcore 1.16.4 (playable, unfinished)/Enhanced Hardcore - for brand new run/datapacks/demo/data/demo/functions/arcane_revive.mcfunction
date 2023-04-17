execute at @e[type=minecraft:item,nbt={Item:{tag:{revive:1b}}}] if entity @p[distance=..1,gamemode=spectator] run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 100 0.00
execute at @e[type=minecraft:item,nbt={Item:{tag:{revive:1b}}}] if entity @p[distance=..1,gamemode=spectator] run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 100 1.00
execute at @e[type=minecraft:item,nbt={Item:{tag:{revive:1b}}}] if entity @p[distance=..1,gamemode=spectator] run playsound minecraft:entity.zombie_villager.converted ambient @a ~ ~ ~ 100 2.00
execute at @e[type=minecraft:item,nbt={Item:{tag:{revive:1b}}}] run tag @p[distance=..1,gamemode=spectator] add half_health
execute at @e[type=minecraft:item,nbt={Item:{tag:{revive:1b}}}] run tellraw @p[distance=..1,gamemode=spectator] {"text":"You have been revived! However, your health remains halved...","color":"dark_red"}
execute as @e[type=minecraft:item,nbt={Item:{tag:{revive:1b}}}] at @s if entity @p[distance=..1,gamemode=spectator] run tag @s add kill
execute at @e[type=minecraft:item,nbt={Item:{tag:{revive:1b}}}] run gamemode survival @p[distance=..1,gamemode=spectator]
kill @e[type=minecraft:item,nbt={Item:{tag:{revive:1b}}},tag=kill]
