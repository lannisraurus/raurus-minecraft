execute as @a[tag=!in_tundra,nbt={Dimension:"minecraft:the_nether"}] run title @s title {"text":"- Lannis's Tundra -","color":"blue"}
tag @a[nbt=!{Dimension:"minecraft:the_nether"}] remove in_tundra
tag @a[nbt={Dimension:"minecraft:the_nether"}] add in_tundra

gamemode adventure @a[gamemode=survival,nbt={Dimension:"minecraft:the_nether"}]


execute as @a[tag=in_tundra] at @s run summon marker ~ -100 ~ {Tags:["snow_vfx"]}
execute as @a[tag=in_tundra] at @s run summon marker ~ -100 ~ {Tags:["snow_vfx"]}
execute as @a[tag=in_tundra] at @s run summon marker ~ -100 ~ {Tags:["snow_vfx"]}
execute as @e[tag=snow_vfx] at @s run spreadplayers ~ ~ 0 20 false @s
execute as @e[tag=snow_vfx] at @s run tp @s ~ ~5 ~
execute at @e[tag=snow_vfx] run particle minecraft:falling_dust minecraft:snow ~ ~ ~ 0 0 0 0 2 normal
execute at @e[tag=snow_vfx] run particle minecraft:falling_dust minecraft:snow ~ ~6 ~ 0 0 0 0 1 normal
kill @e[tag=snow_vfx]



# MISSING FEATURES:
# CUSTOM MOBS
# CUSTOM VILLAGERS
# CUSTOM LOOT
# WATER DAMAGE
# BONFIRE MECHANIC
# TUNDRA PICKAXE
# COLD MECHANIC
# WARM CLOTHING MECHANIC