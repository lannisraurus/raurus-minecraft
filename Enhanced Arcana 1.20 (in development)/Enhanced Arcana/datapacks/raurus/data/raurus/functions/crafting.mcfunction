# life staff
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{life_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["life_wand"]}
execute at @e[tag=life_wand,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=life_wand,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Staff of Life","color":"#009400","bold":true}',Lore:['{"text":"Right-Click - Player healing orb (30 mana)","color":"#3CFF00"}','{"text":"Shift Right-click: Regen near players (30 mana)","color":"#3CFF00"}']},Unbreakable:1b,CustomModelData:11,life_staff:1b,Enchantments:[{}]}}}
execute at @e[tag=life_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=life_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=life_wand,type=armor_stand]




# light staff 
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["light_wand"]}
execute at @e[tag=light_wand,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=light_wand,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Light Staff","color":"#F7FF00"}',Lore:['{"text":"Switch between spells - Look down and Left Click","color":"#FFFCA8"}','{"text":"Cast spell -  Right Click","color":"#FFFCA8"}','{"text":"Spell 1 - Electros (30 mana) [shift for variation]","color":"#FFFCA8"}','{"text":"Spell 2 - Levitae (15 mana)","color":"#FFFCA8"}','{"text":"Spell 3 - Levitation Orb (45 mana)","color":"#FFFCA8"}']},Unbreakable:1b,CustomModelData:12,light_staff:1b,magic_item:1b,Enchantments:[{}]}}}
execute at @e[tag=light_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=light_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=light_wand,type=armor_stand]




# levitae scroll
execute at @e[type=item,nbt={Item:{Count:3b,tag:{magic_essence:1b}}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{tome:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:3b,tag:{life_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:3b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["light_spell_1"]}
execute at @e[tag=light_spell_1,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=light_spell_1,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Scroll of Levitae","color":"gold","bold":true,"italic":false}',Lore:['{"text":"Right Click to learn","color":"yellow","italic":false}']},Unbreakable:1b,CustomModelData:68,levitae_scroll:1b,Enchantments:[{}]}}}
execute at @e[tag=light_spell_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=light_spell_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=light_spell_1,type=armor_stand]





# soul pellet scroll
execute at @e[type=item,nbt={Item:{Count:25b,tag:{blood_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{magic_essence:1b}}}] if entity @e[distance=..3,tag=arcane_scrolls_interaction] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["scroll_craft_1"]}
execute at @e[tag=scroll_craft_1,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=scroll_craft_1,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Scroll of Soul Pellet","color":"#0091B5","bold":true,"italic":false}',Lore:['{"text":"Right Click to learn","color":"#82FFFB","italic":false}']},Unbreakable:1b,CustomModelData:68,soul_pellet_scroll:1b,Enchantments:[{}]}}}
execute at @e[tag=scroll_craft_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=scroll_craft_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=scroll_craft_1,type=armor_stand]





# soul arrows scroll
execute at @e[type=item,nbt={Item:{Count:25b,tag:{blood_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{shadow_essence:1b}}}] if entity @e[distance=..3,tag=arcane_scrolls_interaction] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["scroll_craft_2"]}
execute at @e[tag=scroll_craft_2,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=scroll_craft_2,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Scroll of Soul Arrows","color":"#0091B5","bold":true,"italic":false}',Lore:['{"text":"Right Click to learn","color":"#82FFFB","italic":false}']},Unbreakable:1b,CustomModelData:68,soul_arrows_scroll:1b,Enchantments:[{}]}}}
execute at @e[tag=scroll_craft_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=scroll_craft_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=scroll_craft_2,type=armor_stand]


# magical bonfire
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:coal",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:3b,tag:{magic_essence:1b}}}] if entity @e[distance=..3,tag=tundra_interaction] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["magical_bonfire"]}
execute at @e[tag=magical_bonfire,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=magical_bonfire,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:campfire",Count:1b,tag:{display:{Name:'{"text":"Magical Bonfire","color":"#FF9100","bold":true}',Lore:['{"text":"Drop in the Tundra to summon a bonfire","color":"#FFC43B"}']},spawn_bonfire:1b,Enchantments:[{}]}}}
execute at @e[tag=magical_bonfire,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=magical_bonfire,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=magical_bonfire,type=armor_stand]



# arcane staff 
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:lapis_lazuli",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:2b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["arcane_wand"]}
execute at @e[tag=arcane_wand,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=arcane_wand,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Soul Staff","color":"#0324FF"}',Lore:['{"text":"Switch between spells - Look down and Left Click","color":"#3399FF"}','{"text":"Cast spell -  Right Click","color":"#3399FF"}','{"text":"Spell 1 - Soul Pellet (20 mana)","color":"#3399FF"}','{"text":"Spell 2 - Soul Arrow Cloud (50 mana)","color":"#3399FF"}','{"text":"Spell 3 - Soul Orb (70 mana)","color":"#3399FF"}']},Unbreakable:1b,CustomModelData:14,soul_staff:1b,magic_item:1b,Enchantments:[{}]}}}
execute at @e[tag=arcane_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=arcane_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=arcane_wand,type=armor_stand]



# celeritas rune - ADD FUNCTIONALITY
execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["celeritas_wand"]}
execute at @e[tag=celeritas_wand,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=celeritas_wand,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Celeritas Talisman","color":"#00B51E","bold":true,"italic":false}',Lore:['{"text":"Right click to gain gain speed (20 mana)","color":"#78FF63","italic":false}']},Unbreakable:1b,CustomModelData:1,celeritas_talisman:1b,Enchantments:[{}]}}}
execute at @e[tag=celeritas_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=celeritas_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=celeritas_wand,type=armor_stand]


# shadow armour

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_helmet",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["assassin_armour_1"]}
execute at @e[tag=assassin_armour_1,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=assassin_armour_1,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{Name:'{"text":"Assassin Clothes","color":"#540000"}',color:327680},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.004,Operation:0,UUID:[I;-960904978,-274447920,-1964586585,1767159792],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.6,Operation:0,UUID:[I;1612714955,-287356936,-1074979326,1067036252],Slot:"head"}]}}}
execute at @e[tag=assassin_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=assassin_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=assassin_armour_1,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["assassin_armour_2"]}
execute at @e[tag=assassin_armour_2,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=assassin_armour_2,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"Assassin Clothes","color":"#540000"}',color:327680},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.004,Operation:0,UUID:[I;-2080184593,1220693460,-1913773103,1906375901],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.6,Operation:0,UUID:[I;796559972,-980332663,-1415389742,-2104745563],Slot:"chest"}]}}}
execute at @e[tag=assassin_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=assassin_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=assassin_armour_2,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["assassin_armour_3"]}
execute at @e[tag=assassin_armour_3,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=assassin_armour_3,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Assassin Clothes","color":"#540000"}',color:327680},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.004,Operation:0,UUID:[I;-323047264,1291731375,-1108084914,-1789286875],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.6,Operation:0,UUID:[I;764234763,-1297134523,-1911352377,884858711],Slot:"legs"}]}}}
execute at @e[tag=assassin_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=assassin_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=assassin_armour_3,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_boots",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["assassin_armour_4"]}
execute at @e[tag=assassin_armour_4,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=assassin_armour_4,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Assassin Clothes","color":"#540000"}',color:327680},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.004,Operation:0,UUID:[I;1619056640,-1982247117,-1825863673,17256627],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.6,Operation:0,UUID:[I;1030581087,-1732688767,-1707320093,213697276],Slot:"feet"}]}}}
execute at @e[tag=assassin_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=assassin_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=assassin_armour_4,type=armor_stand]



# Mage Robes



execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_helmet",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mage_armour_1"]}
execute at @e[tag=mage_armour_1,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mage_armour_1,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Mage Clothes","color":"#0D1054"}',Lore:['{"text":"Increases Mana Regen Speed","color":"#1994FF"}']},mana_regen:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.4,Operation:0,UUID:[I;732317719,-1419294602,-1500309253,757223002],Slot:"head"}],SkullOwner:{Id:[I;973333367,849496186,-1253831848,-612160692],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjkzMTk1MjU4MjVmMWYzMDcyN2ViOTQwZDNhMDY0MjZiYzRjZWMwN2ZiZDgwYWY1Y2QxNDZlM2ViMzg3OWY2OCJ9fX0="}]}}}}}
execute at @e[tag=mage_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mage_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mage_armour_1,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mage_armour_2"]}
execute at @e[tag=mage_armour_2,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mage_armour_2,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"Mage Clothes","color":"#0D1054"}',Lore:['{"text":"Increases Mana Regen Speed","color":"#1994FF"}'],color:2031710},mana_regen:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.4,Operation:0,UUID:[I;-1580269784,-1306246060,-2055888648,938335484],Slot:"chest"}]}}}
execute at @e[tag=mage_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mage_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mage_armour_2,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mage_armour_3"]}
execute at @e[tag=mage_armour_3,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mage_armour_3,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Mage Clothes","color":"#0D1054"}',Lore:['{"text":"Increases Mana Regen Speed","color":"#1994FF"}'],color:2031710},mana_regen:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.4,Operation:0,UUID:[I;-1116979021,1333347864,-1372606702,1291451861],Slot:"legs"}]}}}
execute at @e[tag=mage_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mage_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mage_armour_3,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_boots",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mage_armour_4"]}
execute at @e[tag=mage_armour_4,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mage_armour_4,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Mage Clothes","color":"#0D1054"}',Lore:['{"text":"Increases Mana Regen Speed","color":"#1994FF"}'],color:2031710},mana_regen:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.4,Operation:0,UUID:[I;-516268324,1198672616,-1680293580,-1016602342],Slot:"feet"}]}}}
execute at @e[tag=mage_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mage_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mage_armour_4,type=armor_stand]


# Mana potion

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",Count:1b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mana_potion"]}
execute at @e[tag=mana_potion,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mana_potion,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Mana Potion","color":"#0008FF"}',Lore:['{"text":"Restores 100 Mana","color":"#4D6AFF"}']},mana_potion:1b,show_mana:1b,CustomPotionColor:4607}}}
execute at @e[tag=mana_potion,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mana_potion,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mana_potion,type=armor_stand]


# Tome crafting

execute at @e[type=minecraft:item,nbt={Item:{Count:2b,tag:{magic_essence:1b}}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{Count:2b,tag:{shadow_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:book",Count:1b}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["tome"]}
execute at @e[tag=tome,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=tome,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#AA00FF","bold":true}'},tome:1b,Enchantments:[{}]}}}
execute at @e[tag=tome,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=tome,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=tome,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{arcane_pen:1b}}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:book",Count:1b}},nbt=!{Item:{Count:1b,tag:{tome:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["tome2"]}
execute at @e[tag=tome2,type=armor_stand] run kill @e[type=item,distance=..1,nbt=!{Item:{Count:1b,tag:{arcane_pen:1b}}}]
execute at @e[tag=tome2,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#AA00FF","bold":true}'},tome:1b,Enchantments:[{}]}}}
execute at @e[tag=tome2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=tome2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=tome2,type=armor_stand]



# Arcane Heart Crafting

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:rotten_flesh",Count:2b}}] if block ~ ~-1 ~ crafting_table if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{blood_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{blood_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["arcane_heart"]}
execute at @e[tag=arcane_heart,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=arcane_heart,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'{"text":"Arcane Heart","color":"dark_red","bold":"true"}',Lore:['{"text":"Blood, pure physical essence. Give to dead player to revive them","color":"red"}']},ghost_revival:1b,Enchantments:[{}]}}}
execute at @e[tag=arcane_heart,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=arcane_heart,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=arcane_heart,type=armor_stand]




