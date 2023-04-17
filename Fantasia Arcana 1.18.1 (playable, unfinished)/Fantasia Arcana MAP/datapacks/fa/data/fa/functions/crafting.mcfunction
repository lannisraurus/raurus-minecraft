execute at @e[type=minecraft:item,nbt={Item:{Count:2b,tag:{blood_essence:1b}}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:rotten_flesh",Count:4b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:3b}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["blood_effigy"]}
execute at @e[tag=blood_effigy,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=blood_effigy,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Blood Effigy","color":"#B30000","bold":true}',Lore:['{"text":"Right click to reset your Consecutive Deaths Score (item is consumed)","color":"#FF4040"}']},CustomModelData:12,blood_effigy:1b,Enchantments:[{}]}}}
execute at @e[tag=blood_effigy,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=blood_effigy,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=blood_effigy,type=armor_stand]
















execute at @e[type=minecraft:item,nbt={Item:{Count:5b,tag:{shadow_essence:1b}}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:diamond",Count:10b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{blood_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["class_effigy"]}
execute at @e[tag=class_effigy,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=class_effigy,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Class Effigy","color":"#009405","bold":true}',Lore:['{"text":"Right click to get a new class (item is consumed)","color":"#9DFF85"}']},CustomModelData:9,class_effigy:1b,Enchantments:[{}]}}}
execute at @e[tag=class_effigy,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=class_effigy,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=class_effigy,type=armor_stand]













execute at @e[type=minecraft:item,nbt={Item:{Count:3b,tag:{shadow_essence:1b}}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{insanity_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{blood_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:3b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:2b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cure_insanity"]}
execute at @e[tag=cure_insanity,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=cure_insanity,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"a","color":"#425BFF","obfuscated":true},{"text":"Soul Sigil","color":"#425BFF","obfuscated":false},{"text":"a","color":"#425BFF","obfuscated":true}]',Lore:['{"text":"Right click to heal your soul. (item is consumed)","color":"#829BFF"}']},CustomModelData:8,cure_insanity:1b,Enchantments:[{}]}}}
execute at @e[tag=cure_insanity,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=cure_insanity,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=cure_insanity,type=armor_stand]













execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stick",Count:1b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:10b,tag:{magic_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{blood_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["celeritas_wand"]}
execute at @e[tag=celeritas_wand,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=celeritas_wand,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Celeritas Wand","color":"#0FE600"}',Lore:['{"text":"Makes you walk faster. Right click to use (25 mana per use)","color":"#8FFF9A"}']},CustomModelData:4,celeritas_wand:1b,show_mana:1b,Enchantments:[{}]}}}
execute at @e[tag=celeritas_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=celeritas_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=celeritas_wand,type=armor_stand]












execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:stick",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:10b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:diamond",Count:1b}}] if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["paralysation_wand"]}
execute at @e[tag=paralysation_wand,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=paralysation_wand,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Paralysation Wand","color":"#750166"}',Lore:['{"text":"Immobilizes target upon continuous use (5 dark mana/second standing still)","color":"#FF69E1"}']},CustomModelData:2,show_dark_mana:1b,paralysation_wand:1b,Enchantments:[{}]}}}
execute at @e[tag=paralysation_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=paralysation_wand,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=paralysation_wand,type=armor_stand]











execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:gold_ingot",Count:5b}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["sunlight_sword"]}
execute at @e[tag=sunlight_sword,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=sunlight_sword,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Sunlight Sword","color":"#FF9900","bold":true}',Lore:['{"text":"Imbued with the power of the sun...","color":"#FFCD45"}']},CustomModelData:1,sunlight_sword:1b,Enchantments:[{id:"minecraft:fire_aspect",lvl:1s},{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.8,Operation:0,UUID:[I;-1286950825,-841726540,-1935240913,-1053702292],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;-695577756,-1096593981,-1205919972,1195128820],Slot:"mainhand"}]}}}
execute at @e[tag=sunlight_sword,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=sunlight_sword,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=sunlight_sword,type=armor_stand]







execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_sword",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:amethyst_shard",Count:5b}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["moonlight_sword"]}
execute at @e[tag=moonlight_sword,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=moonlight_sword,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Moonlight Sword","color":"#0047A3"}',Lore:['{"text":"Imbued with the power of the Moon...","color":"#5E9FFF"}']},CustomModelData:4,moonlight_sword:1b,Enchantments:[{id:"minecraft:knockback",lvl:1s},{id:"minecraft:sweeping",lvl:10s},{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.8,Operation:0,UUID:[I;-1113241736,-1335669452,-1083366435,-1980030384],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;-1989471841,-1719055914,-2007420237,1336587413],Slot:"mainhand"}]}}}
execute at @e[tag=moonlight_sword,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=moonlight_sword,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=moonlight_sword,type=armor_stand]








execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_helmet",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["assassin_armour_1"]}
execute at @e[tag=assassin_armour_1,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=assassin_armour_1,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{Name:'{"text":"Assassin Clothes","color":"#540000"}',color:327680},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.007,Operation:0,UUID:[I;-960904978,-274447920,-1964586585,1767159792],Slot:"head"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.6,Operation:0,UUID:[I;1612714955,-287356936,-1074979326,1067036252],Slot:"head"}]}}}
execute at @e[tag=assassin_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=assassin_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=assassin_armour_1,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["assassin_armour_2"]}
execute at @e[tag=assassin_armour_2,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=assassin_armour_2,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"Assassin Clothes","color":"#540000"}',color:327680},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.007,Operation:0,UUID:[I;-2080184593,1220693460,-1913773103,1906375901],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.6,Operation:0,UUID:[I;796559972,-980332663,-1415389742,-2104745563],Slot:"chest"}]}}}
execute at @e[tag=assassin_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=assassin_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=assassin_armour_2,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["assassin_armour_3"]}
execute at @e[tag=assassin_armour_3,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=assassin_armour_3,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Assassin Clothes","color":"#540000"}',color:327680},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.007,Operation:0,UUID:[I;-323047264,1291731375,-1108084914,-1789286875],Slot:"legs"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.6,Operation:0,UUID:[I;764234763,-1297134523,-1911352377,884858711],Slot:"legs"}]}}}
execute at @e[tag=assassin_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=assassin_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=assassin_armour_3,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_boots",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{shadow_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["assassin_armour_4"]}
execute at @e[tag=assassin_armour_4,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=assassin_armour_4,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Assassin Clothes","color":"#540000"}',color:327680},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.007,Operation:0,UUID:[I;1619056640,-1982247117,-1825863673,17256627],Slot:"feet"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.6,Operation:0,UUID:[I;1030581087,-1732688767,-1707320093,213697276],Slot:"feet"}]}}}
execute at @e[tag=assassin_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=assassin_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=assassin_armour_4,type=armor_stand]


























execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_helmet",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mage_armour_1"]}
execute at @e[tag=mage_armour_1,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mage_armour_1,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Mage Clothes","color":"#0D1054"}',Lore:['{"text":"Increases Mana Regen Speed","color":"#1994FF"}']},mana_regen:1b,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.4,Operation:0,UUID:[I;732317719,-1419294602,-1500309253,757223002],Slot:"head"}],SkullOwner:{Id:[I;973333367,849496186,-1253831848,-612160692],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjkzMTk1MjU4MjVmMWYzMDcyN2ViOTQwZDNhMDY0MjZiYzRjZWMwN2ZiZDgwYWY1Y2QxNDZlM2ViMzg3OWY2OCJ9fX0="}]}}}}}
execute at @e[tag=mage_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mage_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mage_armour_1,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mage_armour_2"]}
execute at @e[tag=mage_armour_2,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mage_armour_2,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"Mage Clothes","color":"#0D1054"}',Lore:['{"text":"Increases Mana Regen Speed","color":"#1994FF"}'],color:2031710},mana_regen:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.4,Operation:0,UUID:[I;-1580269784,-1306246060,-2055888648,938335484],Slot:"chest"}]}}}
execute at @e[tag=mage_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mage_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mage_armour_2,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_leggings",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mage_armour_3"]}
execute at @e[tag=mage_armour_3,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mage_armour_3,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Mage Clothes","color":"#0D1054"}',Lore:['{"text":"Increases Mana Regen Speed","color":"#1994FF"}'],color:2031710},mana_regen:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.4,Operation:0,UUID:[I;-1116979021,1333347864,-1372606702,1291451861],Slot:"legs"}]}}}
execute at @e[tag=mage_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mage_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mage_armour_3,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:leather_boots",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:6b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mage_armour_4"]}
execute at @e[tag=mage_armour_4,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mage_armour_4,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Mage Clothes","color":"#0D1054"}',Lore:['{"text":"Increases Mana Regen Speed","color":"#1994FF"}'],color:2031710},mana_regen:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2.4,Operation:0,UUID:[I;-516268324,1198672616,-1680293580,-1016602342],Slot:"feet"}]}}}
execute at @e[tag=mage_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mage_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mage_armour_4,type=armor_stand]

























execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:1b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["mana_potion"]}
execute at @e[tag=mana_potion,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=mana_potion,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Mana Potion","color":"#0008FF"}',Lore:['{"text":"Restores 100 Mana","color":"#4D6AFF"}']},mana_potion:1b,show_mana:1b,CustomPotionColor:4607}}}
execute at @e[tag=mana_potion,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=mana_potion,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=mana_potion,type=armor_stand]















execute at @e[type=minecraft:item,nbt={Item:{Count:5b,tag:{magic_essence:1b}}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:5b,tag:{shadow_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:diamond",Count:2b}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["magic_augment"]}
execute at @e[tag=magic_augment,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=magic_augment,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:blue_dye",Count:1b,tag:{display:{Name:'{"text":"Magic Augment","color":"#6F00FF"}',Lore:['{"text":"Throw this item along with a wand or Spellbook to give it some combat capabilities.","color":"#9C38FF"}']},magic_augment:1b,Enchantments:[{}]}}}
execute at @e[tag=magic_augment,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=magic_augment,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=magic_augment,type=armor_stand]






















execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_helmet",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:2b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["augmented_armour_1"]}
execute at @e[tag=augmented_armour_1,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=augmented_armour_1,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_helmet",Count:1b,tag:{display:{Name:'{"text":"Augmented Iron Armour","color":"#0008FF"}',Lore:['{"text":"Makes you sturdy like diamond, but slow.","color":"#4D6AFF"}']},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-21990938,-157399160,-1620167712,256840849],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;713567086,-1152104484,-1589426706,414405966],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.007,Operation:0,UUID:[I;2095473797,-1472050172,-1578610555,-1198423719],Slot:"head"}]}}}
execute at @e[tag=augmented_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=augmented_armour_1,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=augmented_armour_1,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_chestplate",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:2b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["augmented_armour_2"]}
execute at @e[tag=augmented_armour_2,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=augmented_armour_2,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:'{"text":"Augmented Iron Armour","color":"#0008FF"}',Lore:['{"text":"Makes you sturdy like diamond, but slow.","color":"#4D6AFF"}']},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-21990938,-157399160,-1620167712,256840849],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;713567086,-1152104484,-1589426706,414405966],Slot:"chest"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.007,Operation:0,UUID:[I;2095473797,-1472050172,-1578610555,-1198423719],Slot:"chest"}]}}}
execute at @e[tag=augmented_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=augmented_armour_2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=augmented_armour_2,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_leggings",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:2b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["augmented_armour_3"]}
execute at @e[tag=augmented_armour_3,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=augmented_armour_3,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_leggings",Count:1b,tag:{display:{Name:'{"text":"Augmented Iron Armour","color":"#0008FF"}',Lore:['{"text":"Makes you sturdy like diamond, but slow.","color":"#4D6AFF"}']},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-21990938,-157399160,-1620167712,256840849],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;713567086,-1152104484,-1589426706,414405966],Slot:"legs"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.007,Operation:0,UUID:[I;2095473797,-1472050172,-1578610555,-1198423719],Slot:"legs"}]}}}
execute at @e[tag=augmented_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=augmented_armour_3,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=augmented_armour_3,type=armor_stand]

execute at @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_boots",Count:1b}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:2b,tag:{magic_essence:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["augmented_armour_4"]}
execute at @e[tag=augmented_armour_4,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=augmented_armour_4,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:'{"text":"Augmented Iron Armour","color":"#0008FF"}',Lore:['{"text":"Makes you sturdy like diamond, but slow.","color":"#4D6AFF"}']},Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-21990938,-157399160,-1620167712,256840849],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:1,Operation:0,UUID:[I;713567086,-1152104484,-1589426706,414405966],Slot:"feet"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.007,Operation:0,UUID:[I;2095473797,-1472050172,-1578610555,-1198423719],Slot:"feet"}]}}}
execute at @e[tag=augmented_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=augmented_armour_4,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=augmented_armour_4,type=armor_stand]











execute at @e[type=minecraft:item,nbt={Item:{Count:2b,tag:{magic_essence:1b}}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{Count:2b,tag:{shadow_essence:1b}}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:book",Count:1b}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["tome"]}
execute at @e[tag=tome,type=armor_stand] run kill @e[type=item,distance=..1]
execute at @e[tag=tome,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#AA00FF","bold":true}'},tome:1b,Enchantments:[{}]}}}
execute at @e[tag=tome,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=tome,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=tome,type=armor_stand]




execute at @e[type=minecraft:item,nbt={Item:{Count:1b,tag:{arcane_pen:1b}}}] if block ~ ~-1 ~ lapis_block if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:book",Count:1b}},nbt=!{Item:{Count:1b,tag:{tome:1b}}}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["tome2"]}
execute at @e[tag=tome2,type=armor_stand] run kill @e[type=item,distance=..1,nbt=!{Item:{Count:1b,tag:{arcane_pen:1b}}}]
execute at @e[tag=tome2,type=armor_stand] run summon item ~ ~ ~ {Item:{id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#AA00FF","bold":true}'},tome:1b,Enchantments:[{}]}}}
execute at @e[tag=tome2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 2
execute at @e[tag=tome2,type=armor_stand] run playsound minecraft:block.note_block.bit ambient @a[distance=..4] ~ ~ ~ 0.5 1.5
kill @e[tag=tome2,type=armor_stand]

















