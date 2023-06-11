# void staff
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{shadow_essence:1b}}}] run function raurus:single/craft_void_staff
# life staff
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{life_essence:1b}}}] run function raurus:single/craft_life_staff
# light staff 
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{magic_essence:1b}}}] run function raurus:single/craft_light_staff
# levitae scroll
execute at @e[type=item,nbt={Item:{Count:3b,tag:{magic_essence:1b}}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{tome:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:3b,tag:{life_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:3b,tag:{shadow_essence:1b}}}] run function raurus:single/craft_levitae_scroll
# soul pellet scroll
execute at @e[type=item,nbt={Item:{Count:25b,tag:{blood_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{magic_essence:1b}}}] if entity @e[distance=..3,tag=arcane_scrolls_interaction] run function raurus:single/craft_soul_pellet_scroll
# soul arrows scroll
execute at @e[type=item,nbt={Item:{Count:25b,tag:{blood_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{shadow_essence:1b}}}] if entity @e[distance=..3,tag=arcane_scrolls_interaction] run function raurus:single/craft_soul_arrows_scroll
# magical bonfire
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:coal",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:3b,tag:{magic_essence:1b}}}] if entity @e[distance=..3,tag=tundra_interaction] run function raurus:single/craft_magical_bonfire
# arcane staff 
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] run function raurus:single/craft_arcane_staff
# celeritas rune
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] run function raurus:single/craft_celeritas_rune
# shadow armour
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_helmet",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run function raurus:single/craft_shadow_armour_1
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run function raurus:single/craft_shadow_armour_2
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run function raurus:single/craft_shadow_armour_3
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_boots",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run function raurus:single/craft_shadow_armour_4

# Mage Robes
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_helmet",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run function raurus:single/craft_mage_robes_1
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run function raurus:single/craft_mage_robes_2
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run function raurus:single/craft_mage_robes_3
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_boots",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run function raurus:single/craft_mage_robes_4
# Mana potion
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{magic_essence:1b}}}] run function raurus:single/craft_mana_potion
# Tome crafting
execute at @e[type=minecraft:item,nbt={Item:{Count:2b,tag:{magic_essence:1b}}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:2b,tag:{shadow_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:book",Count:1b}}] run function raurus:single/craft_tome
execute at @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{arcane_pen:1b}}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:book",Count:1b}},nbt=!{Item:{Count:1b,tag:{tome:1b}}}] run function raurus:single/craft_tome
# Arcane Heart Crafting
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:rotten_flesh",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{blood_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{blood_essence:1b}}}] run function raurus:single/craft_arcane_heart





