##################### COUNT POWER

# POWER 1
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:1b} 0
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0

# POWER 2
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:2b} 0
execute as @a run scoreboard players operation @s count_power *= 2 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0

# POWER 3
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:3b} 0
execute as @a run scoreboard players operation @s count_power *= 3 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0

# POWER 4
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:4b} 0
execute as @a run scoreboard players operation @s count_power *= 4 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0

# POWER 5
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:5b} 0
execute as @a run scoreboard players operation @s count_power *= 5 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0

# POWER 6
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:6b} 0
execute as @a run scoreboard players operation @s count_power *= 6 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0


# POWER 7
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:7b} 0
execute as @a run scoreboard players operation @s count_power *= 7 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0


# POWER 8
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:8b} 0
execute as @a run scoreboard players operation @s count_power *= 8 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0



# POWER 9
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:9b} 0
execute as @a run scoreboard players operation @s count_power *= 9 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0


# POWER 10
execute as @a store result score @s count_power run clear @s carrot_on_a_stick{pwr:10b} 0
execute as @a run scoreboard players operation @s count_power *= 10 num
execute as @a run scoreboard players operation @s power_slots += @s count_power
scoreboard players set @a count_power 0





###burden (just to be safe!)

execute as @a if score @s power_slots > @s power_slots_max run tag @s add burdened
effect give @a[tag=burdened] slowness 1 3 true
effect give @a[tag=burdened] weakness 1 3 true
effect give @a[tag=burdened] mining_fatigue 1 3 true
title @a[tag=burdened] times 0 2 0
title @a[tag=burdened] subtitle {"text":"Please drop magical items","color":"#FFAC00"}
title @a[tag=burdened] title {"text":"Burdened!","color":"#FFB300"}









#### pick up power slot items

execute as @e[type=item] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"0 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:1b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"1 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:2b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"2 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:3b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"3 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:4b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"4 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:5b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"5 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:6b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"6 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:7b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"7 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:8b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"8 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:9b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"9 PWR","color":"#00FF99"}',Item:{}}
execute as @e[type=item,nbt={Item:{tag:{pwr:10b}}}] run data merge entity @s {PickupDelay:32767,CustomNameVisible:1b,CustomName:'{"text":"10 PWR","color":"#00FF99"}',Item:{}}





execute as @a run scoreboard players operation @s power_slots_left = @s power_slots
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:1b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:2b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:3b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:4b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:5b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:6b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:7b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:8b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:9b}}},distance=..1] run data merge entity @s {PickupDelay:0}
scoreboard players add @a power_slots_left 1
execute as @a at @s if score @s power_slots_left < @s power_slots_max as @e[type=item,nbt={Item:{tag:{pwr:10b}}},distance=..1] run data merge entity @s {PickupDelay:0}




























