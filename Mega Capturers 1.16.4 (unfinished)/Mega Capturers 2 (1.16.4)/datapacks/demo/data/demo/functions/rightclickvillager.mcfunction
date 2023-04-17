#############################################################################

execute positioned 17 75 -8 unless entity @e[tag=crossbow_villager] run summon minecraft:villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["crossbow_villager"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:plains"}}

execute as @a[scores={talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run scoreboard players add @s villagerSwitch1 1

execute as @a[scores={villagerSwitch1=1,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run tellraw @s ["",{"text":"Successfully chosen ","color":"dark_red"},{"text":"Artemis","color":"dark_red","bold":true}]
execute as @a[scores={villagerSwitch1=1,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 10 2.00
execute as @a[scores={villagerSwitch1=1,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run tag @s add crossbow
execute as @a[scores={villagerSwitch1=1,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run clear @s
execute as @a[scores={villagerSwitch1=1,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run tag @s remove viking

execute as @a[scores={villagerSwitch1=2..,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run tellraw @s ["",{"text":"Successfully unnequipped ","color":"dark_red"},{"text":"Artemis","color":"dark_red","bold":true}]
execute as @a[scores={villagerSwitch1=2..,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 10 0.00
execute as @a[scores={villagerSwitch1=2..,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run tag @s remove crossbow
execute as @a[scores={villagerSwitch1=2..,talkVillager=1..}] at @s if entity @e[distance=..3,tag=crossbow_villager] run clear @s


############################################################################

execute positioned 28 74 1 unless entity @e[tag=play_villager] run summon minecraft:villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["play_villager"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}],VillagerData:{level:1,profession:"minecraft:nitwit",type:"minecraft:plains"}}

execute as @a[scores={talkVillager=1..}] at @s if entity @e[distance=..3,tag=play_villager] run scoreboard players add @s villagerSwitch2 1

execute as @a[scores={talkVillager=1..,villagerSwitch2=1}] at @s if entity @e[distance=..3,tag=play_villager] run tellraw @s ["",{"text":"[Ready] The game will commence shortly","color":"gold"}]
execute as @a[scores={talkVillager=1..,villagerSwitch2=1}] at @s if entity @e[distance=..3,tag=play_villager] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 10 2.00
execute as @a[scores={talkVillager=1..,villagerSwitch2=1}] at @s if entity @e[distance=..3,tag=play_villager] run tag @s add play

execute as @a[scores={talkVillager=1..,villagerSwitch2=2..}] at @s if entity @e[distance=..3,tag=play_villager] run tellraw @s ["",{"text":"[Unready] You will not participate","color":"gold"}]
execute as @a[scores={talkVillager=1..,villagerSwitch2=2..}] at @s if entity @e[distance=..3,tag=play_villager] run playsound minecraft:entity.experience_orb.pickup ambient @s ~ ~ ~ 10 0.00
execute as @a[scores={talkVillager=1..,villagerSwitch2=2..}] at @s if entity @e[distance=..3,tag=play_villager] run tag @s remove play



############################################################################













scoreboard players set @a[scores={villagerSwitch1=2..}] villagerSwitch1 0
scoreboard players set @a[scores={villagerSwitch2=2..}] villagerSwitch2 0
scoreboard players set @a[scores={talkVillager=1..}] talkVillager 0