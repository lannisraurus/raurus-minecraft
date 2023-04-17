#lust

tellraw @a[scores={kill_player=1..}] {"text":"You have killed one of your own... And so you are cursed with eternal lust...","color":"dark_red","bold":"true"}
tellraw @a[scores={kill_mob=300..}] {"text":"You have killed too much... And so you are cursed with eternal lust...","color":"dark_red","bold":"true"}
execute at @a[scores={kill_player=1..}] run playsound minecraft:entity.wither.spawn ambient @a[distance=..30] ~ ~ ~ 100 0.00
execute at @a[scores={kill_mob=300..}] run playsound minecraft:entity.wither.spawn ambient @a[distance=..30] ~ ~ ~ 100 0.00
tag @a[scores={kill_player=1..}] add lust
tag @a[scores={kill_mob=300..}] add lust
scoreboard players set @a[scores={kill_player=1..}] kill_player 0
scoreboard players set @a[scores={kill_mob=200..}] kill_mob 0

effect give @a[tag=lust] minecraft:hunger 3 0 true

execute at @e[type=minecraft:item,nbt={Item:{tag:{cure_hunger:1b}}}] if entity @p[distance=..2,tag=lust] run playsound minecraft:entity.wither.death ambient @a[distance=..10] ~ ~ ~ 100 0.00
execute as @e[type=minecraft:item,nbt={Item:{tag:{cure_hunger:1b}}}] at @s if entity @p[distance=..2,tag=lust] run tag @s add kill
execute at @e[type=minecraft:item,nbt={Item:{tag:{cure_hunger:1b}}}] run tellraw @p[distance=..2,tag=lust] {"text":"Your soul has been healed.","bold":"true","color":"red"}
execute at @e[type=minecraft:item,nbt={Item:{tag:{cure_hunger:1b}}}] run tag @p[distance=..2,tag=lust] remove lust
kill @e[type=minecraft:item,nbt={Item:{tag:{cure_hunger:1b}}},tag=kill]



#half-health

execute at @e[type=minecraft:item,nbt={Item:{tag:{blood_dust:1b}}}] if entity @p[distance=..2,tag=half_health] run playsound minecraft:entity.zombie_villager.cure ambient @a ~ ~ ~ 100 0.00
execute as @e[type=minecraft:item,nbt={Item:{tag:{blood_dust:1b}}}] at @s if entity @p[distance=..2,tag=half_health] run tag @s add kill
execute at @e[type=minecraft:item,nbt={Item:{tag:{blood_dust:1b}}}] run tellraw @p[distance=..2,tag=half_health] {"text":"Your health has been restored.","color":"dark_green"}
execute at @e[type=minecraft:item,nbt={Item:{tag:{blood_dust:1b}}}] run tag @p[distance=..2,tag=half_health] remove half_health
kill @e[type=minecraft:item,nbt={Item:{tag:{blood_dust:1b}}},tag=kill]

execute as @a[tag=half_health] run attribute @s minecraft:generic.max_health base set 10
execute as @a[tag=!half_health] run attribute @s minecraft:generic.max_health base set 20



#blindness

scoreboard players remove @a[scores={blindness=1..}] blindness 1
tellraw @a[scores={blindness=130..}] {"text":"You are blind.","color":"dark_gray"}
execute at @a[scores={blindness=130..}] run playsound minecraft:item.totem.use ambient @a[distance=..3] ~ ~ ~ 10 0.00
tag @a[scores={blindness=130..}] add blind
scoreboard players set @a[tag=blind] blindness -10

effect give @a[tag=blind] minecraft:blindness 6 0 true


execute at @e[type=minecraft:item,nbt={Item:{tag:{heal_blindness:1b}}}] if entity @p[distance=..2,tag=blind] run playsound minecraft:item.totem.use ambient @a[distance=..3] ~ ~ ~ 10 2.00
execute as @e[type=minecraft:item,nbt={Item:{tag:{heal_blindness:1b}}}] at @s if entity @p[distance=..2,tag=blind] run tag @s add kill
execute at @e[type=minecraft:item,nbt={Item:{tag:{heal_blindness:1b}}}] run tellraw @p[distance=..2,tag=blind] {"text":"Your eyes are healed","bold":"true"}
execute at @e[type=minecraft:item,nbt={Item:{tag:{heal_blindness:1b}}}] run tag @p[distance=..2,tag=blind] remove blind
kill @e[type=minecraft:item,nbt={Item:{tag:{heal_blindness:1b}}},tag=kill]




#broken leg

tag @a[scores={fall=1100..}] add broken_leg
tellraw @a[scores={fall=1100..}] {"text":"You broke your leg.","color":"gray"}
execute at @a[scores={fall=1100..}] run playsound minecraft:entity.wither.break_block ambient @a[distance=..8] ~ ~ ~ 1 2.00
scoreboard players set @a fall 0

effect give @a[tag=broken_leg] minecraft:slowness 1 1 true

execute at @e[type=minecraft:item,nbt={Item:{tag:{heal_bones:1b}}}] if entity @p[distance=..2,tag=broken_leg] run playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..3] ~ ~ ~ 100 2.00
execute as @e[type=minecraft:item,nbt={Item:{tag:{heal_bones:1b}}}] at @s if entity @p[distance=..2,tag=broken_leg] run tag @s add kill
execute at @e[type=minecraft:item,nbt={Item:{tag:{heal_bones:1b}}}] run tellraw @p[distance=..2,tag=broken_leg] {"text":"Your leg is healed","color":"green"}
execute at @e[type=minecraft:item,nbt={Item:{tag:{heal_bones:1b}}}] run tag @p[distance=..2,tag=broken_leg] remove broken_leg
kill @e[type=minecraft:item,nbt={Item:{tag:{heal_bones:1b}}},tag=kill]




















