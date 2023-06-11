
title @s times 20 20 20
title @s subtitle {"text":"You were cured.","color":"#BBE3FF"}
title @s title {"text":""}

playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 1.00
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 2.00
playsound minecraft:block.beacon.power_select ambient @s ~ ~ ~ 1 0.00

scoreboard players set @s mana_drain_time 0
scoreboard players set @s stun_time 0
scoreboard players set @s bleed_time 0
scoreboard players set @s poison_time 0
scoreboard players set @s burn_time 0
scoreboard players set @s root_time 0
scoreboard players set @s blind_time 0
scoreboard players set @s rot_time 0
effect clear @s poison
effect clear @s wither
effect clear @s slowness
effect clear @s blindness
effect clear @s weakness
effect clear @s nausea