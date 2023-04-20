scoreboard players add @a mana_tick 13

execute as @a if score @s mana_tick >= @s mana_tick_max run scoreboard players add @s mana 1
execute as @a if score @s mana_tick >= @s mana_tick_max run scoreboard players set @s mana_tick 0

execute as @a if score @s mana >= @s mana_max run scoreboard players operation @s mana = @s mana_max
scoreboard players set @a[scores={mana=..0}] mana 0

# mana max - the max mana one can hold
# mana - current mana
# mana tick - intermidiary, increases with each tick
# mana tick max - everytime mana tick reaches mana tick max, you gain one mana and the cycle repeats





# special armour
scoreboard players add @a[nbt={Inventory:[{Slot:100b,tag:{mana_regen:1b}}]}] mana_tick 5
scoreboard players add @a[nbt={Inventory:[{Slot:101b,tag:{mana_regen:1b}}]}] mana_tick 5
scoreboard players add @a[nbt={Inventory:[{Slot:102b,tag:{mana_regen:1b}}]}] mana_tick 5
scoreboard players add @a[nbt={Inventory:[{Slot:103b,tag:{mana_regen:1b}}]}] mana_tick 5