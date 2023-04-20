scoreboard players set @a[scores={lives=..0}] lives 0
scoreboard players remove @a[scores={die=1..}] lives 1
execute as @a[scores={die=1..,lives=0}] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_red"},{"text":"> "},{"text":"You have died. You are now in intersticial form","color":"red"}]
execute as @a[scores={die=1..,lives=2..}] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_red"},{"text":"> "},{"text":"You have died. You now have ","color":"red"},{"score":{"name":"@s","objective":"lives"},"color":"red"},{"text":" lives.","color":"red"}]
execute as @a[scores={die=1..,lives=1}] run tellraw @s ["",{"text":"<"},{"text":"Information","bold":true,"color":"dark_red"},{"text":"> "},{"text":"You have died. You now have ","color":"red"},{"score":{"name":"@s","objective":"lives"},"color":"red"},{"text":" life.","color":"red"}]

execute as @a[scores={die=1..,lives=0}] at @s run playsound minecraft:entity.wither.death ambient @a[distance=..5] ~ ~ ~ 1 1.00
execute as @a[scores={die=1..,lives=0}] at @s run playsound minecraft:entity.wither.death ambient @a[distance=..5] ~ ~ ~ 1 1.50
execute as @a[scores={die=1..,lives=0}] at @s run playsound minecraft:entity.wither.death ambient @a[distance=..5] ~ ~ ~ 1 2.00

execute as @a[scores={die=1..,lives=0}] run function raurus:soft_reset
tag @a[scores={die=1..,lives=0}] add ghost
tag @a[scores={die=1..,lives=0}] add update_player













# GHOST MECHANICS


execute if score time time matches 22400 run tellraw @a[tag=ghost] {"text":"The dawn approaches, the line between life and death thins... You will revive shortly","color":"gold"}
execute if score time time matches 11500 run tellraw @a[tag=ghost] {"text":"The dusk approaches, the line between life and death thins... You will revive shortly","color":"blue"}

execute if score time time matches 800 run tellraw @a[tag=ghost] {"text":"The sun has risen, you return to your ghostly form.","color":"gold"}
execute if score time time matches 14000 run tellraw @a[tag=ghost] {"text":"The sun is gone, you return to yout ghostly form.","color":"blue"}

execute if score time time matches 500 run tellraw @a[tag=ghost] {"text":"Your time is almost up...","color":"gold"}
execute if score time time matches 13700 run tellraw @a[tag=ghost] {"text":"Your time is almost up...","color":"blue"}

execute if score time time matches 22700 run tellraw @a[tag=ghost] {"text":"You have been revived","color":"gold"}
execute if score time time matches 11800 run tellraw @a[tag=ghost] {"text":"You have been revived","color":"blue"}

execute if score time time matches 22400 at @a[tag=ghost] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 1 1.50
execute if score time time matches 11500 at @a[tag=ghost] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 1 1.50

execute if score time time matches 22700 at @a[tag=ghost] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 1 1.50
execute if score time time matches 11800 at @a[tag=ghost] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 1 1.50

execute if score time time matches 800 at @a[tag=ghost] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 1 1.50
execute if score time time matches 14000 at @a[tag=ghost] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 1 1.50

execute if score time time matches 500 at @a[tag=ghost] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 1 1.50
execute if score time time matches 11000 at @a[tag=ghost] run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..5] ~ ~ ~ 1 1.50

execute if score interstice time matches 1 run gamemode survival @a[tag=ghost,gamemode=spectator]
execute if score interstice time matches 0 run gamemode spectator @a[tag=ghost]
execute at @a[tag=ghost] run particle dust 1 0.9 0.2 0.4 ~ ~1 ~ 0 0 0 0 2 force
execute at @a[tag=ghost] run effect give @a[distance=..1] resistance 1 0 true












# REVIVAL

execute at @e[nbt={Item:{tag:{ghost_revival:1b}}}] run particle soul ~ ~0.1 ~ 0 0 0 0.01 1 force
execute as @e[nbt={Item:{tag:{ghost_revival:1b}}}] at @s if entity @a[tag=ghost,distance=..2] if score interstice time matches 1 run tag @a[tag=ghost,limit=1,sort=nearest] add ghost_revival
execute as @e[nbt={Item:{tag:{ghost_revival:1b}}}] at @s if entity @a[tag=ghost,distance=..2] if score interstice time matches 1 run kill @s

execute as @a[tag=ghost_revival] at @s run particle soul ~ ~1 ~ 0.4 0.4 0.4 0.1 20 force
execute as @a[tag=ghost_revival] at @s run particle flash ~ ~1 ~ 0 0 0 0.1 1 force
title @a[tag=ghost_revival] title {"text":"- Revival -","color":"green"}
execute as @a[tag=ghost_revival] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.00
execute as @a[tag=ghost_revival] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.20
execute as @a[tag=ghost_revival] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 1.50
execute as @a[tag=ghost_revival] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 0.9
execute as @a[tag=ghost_revival] at @s run playsound minecraft:entity.zombie_villager.converted ambient @a[distance=..10] ~ ~ ~ 1 0.8
execute as @a[tag=ghost_revival,tag=arcane_sorcerer] run function raurus:classes/get_arcane_sorcerer
execute as @a[tag=ghost_revival,tag=druid] run function raurus:classes/get_druid
execute as @a[tag=ghost_revival,tag=blacksmith] run function raurus:classes/get_blacksmith
execute as @a[tag=ghost_revival,tag=blood_demon] run function raurus:classes/get_blood_demon
execute as @a[tag=ghost_revival,tag=ophan_cleric] run function raurus:classes/get_ophan_cleric
execute as @a[tag=ghost_revival,tag=seraph_cleric] run function raurus:classes/get_seraph_cleric
execute as @a[tag=ghost_revival,tag=interstice_warrior] run function raurus:classes/get_interstice_warrior
gamemode survival @a[tag=ghost_revival,gamemode=!creative]
tag @a[tag=ghost_revival] add update_player
tag @a[tag=ghost_revival] remove ghost
tag @a[tag=ghost_revival] remove ghost_revival
