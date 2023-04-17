#void merchant
execute unless entity @e[tag=void_merchant] in minecraft:hardcore_dimensions/abyss run summon villager -43 1 21 {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1f,Rotation:[-130F,0F],Tags:["void_merchant"],Attributes:[{Name:generic.max_health,Base:1}],VillagerData:{profession:"minecraft:weaponsmith",type:"minecraft:plains"},Offers:{Recipes:[{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:black_dye",Count:16b,tag:{display:{Name:'{"text":"Soul Fragment","color":"#7200A3"}'},soul_fragment:1b,Enchantments:[{}]}},sell:{id:'minecraft:clay_ball',Count:1b,tag:{display:{Name:'{"text":"Human Soul","color":"#DEB6DD","bold":true}',Lore:["{\"text\":\"Soul ripped out of the betrayed's body...\",\"color\":\"#F7CBF6\"}"]},soul:1b,Enchantments:[{}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:diamond_sword',Count:1b},buyB:{id:'minecraft:clay_ball',Count:3b,tag:{display:{Name:'{"text":"Human Soul","color":"#DEB6DD","bold":true}',Lore:["{\"text\":\"Soul ripped out of the betrayed's body...\",\"color\":\"#F7CBF6\"}"]},soul:1b,Enchantments:[{}]}},sell:{id:'minecraft:iron_sword',Count:1b,tag:{display:{Name:'{"text":"Darklurker","color":"#AB0BE6","bold":true}'},RepairCost:9999,darklurker:1b,Enchantments:[{id:'minecraft:looting',lvl:1s},{id:'minecraft:sweeping',lvl:10s},{id:'minecraft:unbreaking',lvl:2s},{id:'minecraft:vanishing_curse',lvl:1s}],AttributeModifiers:[{AttributeName:'generic.attack_damage',Name:'generic.attack_damage',Amount:4.25,Operation:0,UUID:[-1573120761,-1772729920,-1510146997,1929908255],Slot:'mainhand'},{AttributeName:'generic.attack_speed',Name:'generic.attack_speed',Amount:100,Operation:0,UUID:[817382911,-704953219,-1273946952,390750765],Slot:'mainhand'}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:book",Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#A100FF"}'},tome:1b}},buyB:{id:"minecraft:black_dye",Count:1b,tag:{display:{Name:'{"text":"Soul Fragment","color":"#7200A3"}'},soul_fragment:1b,Enchantments:[{}]}},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Tome of Rebellion","color":"#6B0391","bold":true,"underlined":true}',Lore:['{"text":"Tome about the home of angels","color":"#8600D4"}']},sky_castle_tp:1b,title:"",author:"Lannis",generation:3,pages:['{"text":"After my many long years of research, I have ammounted an extraordinary collection of occult tools, tomes, spells, and have even summoned  arcane entities to help me grant my dream..."}','{"text":"However, I am not here to talk about dreams and feeble desires; I am here to disclose information about those who oppress our freedom; those who caress us mortals with kind words and end up betraying us, just for the sake of it."}','{"text":"Seraphs and all their Angel scum, all of those beings are not fit for the world of the free, for the world of humanity."}','{"text":"For so long they have stolen our magical artifacts, in fear and paranoia of some non-sensical disaster. For so long they have cursed and punished those who know nothing better than to kill for a living, or to hunt beasts. For so long they have made us mortal, weak and finite for the sake of"}','{"text":"their own fun and ammusement. I declare war."}','{"text":"This is how one can invade one of their realms. This is how one can join the side of chaos; the side of freedom:"}','{"text":"- Go to the altar at the top of the snowy mountain near the main castle during the sunrise. Upon the altar you must drop this tome (which will not be sacrificed), 2 diamonds, 1 arcane heart, 1 emerald and 1 gold ingot.\\n\\nLet the hunt begin."}']}}}]}}

#prince of cures
execute unless entity @e[tag=blood_trader] run summon villager 10074 72 9969 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Health:1f,Willing:0b,Rotation:[-90F,0F],Tags:["blood_trader"],CustomName:'{"text":"Prince of Cures","color":"#AB0000"}',Attributes:[{Name:generic.max_health,Base:1}],VillagerData:{level:99,profession:"minecraft:cleric",type:"minecraft:savanna"},Offers:{Recipes:[{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:rotten_flesh',Count:3b},buyB:{id:'minecraft:stick',Count:4b},sell:{id:'minecraft:rabbit_hide',Count:1b,tag:{display:{Name:'{"text":"Effigy","color":"#FFDAB0"}'},effigy:1b}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:red_dye",Count:30b,tag:{display:{Name:'{"text":"Blood Essence","color":"#A10000"}'},blood:1b}},buyB:{id:"minecraft:rabbit_hide",Count:1b,tag:{display:{Name:'{"text":"Effigy","color":"#FFDAB0"}'},effigy:1b}},sell:{id:"minecraft:nether_wart",Count:1b,tag:{display:{Name:'{"text":"Arcane Heart","color":"#450000","bold":true}',Lore:['{"text":"Throw on the ground and when a ghost is near, they will be revived.","color":"#BA0000"}']},revive:1b,Enchantments:[{}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:red_dye",Count:32b,tag:{display:{Name:'{"text":"Blood Essence","color":"#A10000"}'},blood:1b}},sell:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:['{"text":"Cures reduced health if thrown on the ground","color":"#FF0000"}']},blood_dust:1b,Enchantments:[{}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:red_dye",Count:6b,tag:{display:{Name:'{"text":"Blood Essence","color":"#A10000"}'},blood:1b}},buyB:{id:"minecraft:bone_meal",Count:17b},sell:{id:"minecraft:bone",Count:1b,tag:{display:{Name:'{"text":"Heal Bones","color":"#A1A1A1","bold":true}',Lore:['{"text":"Calcium supplements in disguise (Throw to use)","color":"#E6FFF3"}']},heal_bones:1b,Enchantments:[{}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:red_dye",Count:16b,tag:{display:{Name:'{"text":"Blood Essence","color":"#A10000"}'},blood:1b}},buyB:{id:"minecraft:ink_sac",Count:3b},sell:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:'{"text":"Cure Blindness","color":"#6E6E6E","bold":true}',Lore:['{"text":"Throw to use","color":"#8C9C94"}']},heal_blindness:1b,Enchantments:[{}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:redstone",Count:2b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:['{"text":"Cures reduced health if thrown on the ground","color":"#FF0000"}']},blood_dust:1b,Enchantments:[{}]}},buyB:{id:"minecraft:beef",Count:3b},sell:{id:"minecraft:crimson_fungus",Count:1b,tag:{display:{Name:'{"text":"Flesh Charm","color":"#AB005B","bold":true}',Lore:['{"text":"To cure your deepest desires... (Throw to use)","color":"#D60064"}']},cure_hunger:1b,Enchantments:[{}]}}}]}}

#alchemist
execute unless entity @e[type=villager,tag=alchemist] run summon villager 10091 71 9961 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Health:1f,Rotation:[40F,0F],Tags:["alchemist"],CustomName:'{"text":"Alchemist","color":"#8212E3"}',Attributes:[{Name:generic.max_health,Base:1}],VillagerData:{level:99,profession:"minecraft:leatherworker",type:"minecraft:swamp"},Offers:{Recipes:[{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}},buyB:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:['{"text":"Cures reduced health if thrown on the ground","color":"#FF0000"}']},blood_dust:1b,Enchantments:[{}]}},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Health Potion","color":"#8F0000"}'},CustomPotionEffects:[{Id:6b,Amplifier:0b,Duration:1}],CustomPotionColor:12058624}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}},buyB:{id:"minecraft:redstone",Count:2b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:['{"text":"Cures reduced health if thrown on the ground","color":"#FF0000"}']},blood_dust:1b,Enchantments:[{}]}},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Regeneration Potion","color":"#D40000"}'},CustomPotionEffects:[{Id:10b,Amplifier:0b,Duration:200}],CustomPotionColor:14876672}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}},buyB:{id:"minecraft:redstone",Count:4b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:['{"text":"Cures reduced health if thrown on the ground","color":"#FF0000"}']},blood_dust:1b,Enchantments:[{}]}},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Health Boost Potion","color":"#D45C00"}'},CustomPotionEffects:[{Id:21b,Amplifier:0b,Duration:2400}],CustomPotionColor:16740096}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}},buyB:{id:"minecraft:redstone",Count:5b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:['{"text":"Cures reduced health if thrown on the ground","color":"#FF0000"}']},blood_dust:1b,Enchantments:[{}]}},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Strength Potion","color":"#D400D4"}'},CustomPotionEffects:[{Id:5b,Amplifier:0b,Duration:800}],CustomPotionColor:14876816}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water"}},buyB:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:['{"text":"Cures reduced health if thrown on the ground","color":"#FF0000"}']},blood_dust:1b,Enchantments:[{}]}},sell:{id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:'{"text":"Wither Potion","color":"#680082"}'},CustomPotionEffects:[{Id:20b,Amplifier:0b,Duration:160}],CustomPotionColor:0}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:potion",Count:1b,tag:{Potion:"minecraft:water"}},buyB:{id:"minecraft:redstone",Count:1b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:['{"text":"Cures reduced health if thrown on the ground","color":"#FF0000"}']},blood_dust:1b,Enchantments:[{}]}},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Speed Potion","color":"#C2FBFF"}'},CustomPotionEffects:[{Id:1b,Amplifier:0b,Duration:2400}],CustomPotionColor:8905722}}}]}}

#enchanter
execute unless entity @e[type=villager,tag=enchanter] run summon villager 10092 71 9977 {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Health:1f,Rotation:[106F,0F],Tags:["enchanter"],CustomName:'{"text":"Enchanter","color":"#B707E3"}',Attributes:[{Name:generic.max_health,Base:1}],VillagerData:{level:99,profession:"minecraft:librarian",type:"minecraft:snow"},Offers:{Recipes:[{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:unbreaking',lvl:3s}]}},buyB:{id:'minecraft:redstone',Count:10b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:mending',lvl:1s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:knockback',lvl:2s}]}},buyB:{id:'minecraft:redstone',Count:5b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:knockback',lvl:4s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:bane_of_arthropods',lvl:5s}]}},buyB:{id:'minecraft:redstone',Count:1b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:binding_curse',lvl:1s},{id:'minecraft:vanishing_curse',lvl:1s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:frost_walker',lvl:2s}]}},buyB:{id:'minecraft:redstone',Count:5b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:frost_walker',lvl:5s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:depth_strider',lvl:3s}]}},buyB:{id:'minecraft:redstone',Count:8b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:depth_strider',lvl:5s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:sharpness',lvl:5s}]}},buyB:{id:'minecraft:redstone',Count:10b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:sharpness',lvl:6s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:fortune',lvl:3s}]}},buyB:{id:'minecraft:redstone',Count:10b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:fortune',lvl:4s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:looting',lvl:3s}]}},buyB:{id:'minecraft:redstone',Count:10b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:looting',lvl:4s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:protection',lvl:4s}]}},buyB:{id:'minecraft:redstone',Count:8b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:protection',lvl:5s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:luck_of_the_sea',lvl:3s}]}},buyB:{id:'minecraft:redstone',Count:14b,tag:{display:{Name:'{"text":"Blood Dust","color":"#A10000","bold":true}',Lore:["{\"text\":\"Cures reduced health if thrown on the ground\",\"color\":\"#FF0000\"}"]},blood_dust:1b,Enchantments:[{}]}},sell:{id:'minecraft:enchanted_book',Count:1b,tag:{StoredEnchantments:[{id:'minecraft:luck_of_the_sea',lvl:10s}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:blaze_powder',Count:16b},buyB:{id:'minecraft:gold_ingot',Count:7b},sell:{id:'minecraft:fire_charge',Count:1b,tag:{display:{Name:'{"text":"Heart of Fire","color":"#FFA200"}'},fire_heart:1b,Enchantments:[{}]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:book',Count:1b},buyB:{id:'minecraft:nether_wart',Count:1b,tag:{display:{Name:'{"text":"Arcane Heart","color":"#450000","bold":true}',Lore:["{\"text\":\"Throw on the ground and when a ghost is near, they will be revived.\",\"color\":\"#BA0000\"}"]},revive:1b,Enchantments:[{}]}},sell:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#A100FF"}'},tome:1b}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#A100FF"}'},tome:1b}},buyB:{id:'minecraft:fire_charge',Count:1b,tag:{display:{Name:'{"text":"Heart of Fire","color":"#FFA200"}'},fire_heart:1b,Enchantments:[{}]}},sell:{id:'minecraft:written_book',Count:1b,tag:{display:{Name:'{"text":"Tome of Ignis","color":"#FF7700","bold":true}',Lore:["{\"text\":\"Tome stolen from the chaos deities by Lannis.\",\"color\":\"#FF9B61\"}"]},spell:1b,title:'',author:'Lannis',generation:3,pages:["[{\"text\":\"\\n\\n\\n\\n\\n\\n\"},{\"text\":\"         \"},{\"text\":\"[Ignis]\",\"color\":\"#FF6F00\",\"bold\":true,\"underlined\":true,\"hoverEvent\":{\"action\":\"show_text\",\"contents\":[{\"text\":\"Cast a gust of fire (100 Mana)\",\"color\":\"#FFA561\"}]},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger use_spell set 9\"}}]"]}}},{maxUses:2147483647,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:book',Count:1b,tag:{display:{Name:'{"text":"Tome","color":"#A100FF"}'},tome:1b}},buyB:{id:'minecraft:ender_eye',Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Tome of Teleportation","color":"#03A2FF"}',Lore:['{"text":"Allows you to create, destroy and use portals!","color":"#80D0FF"}']},teleport_spell:1b,title:"",author:"Robert The Sorcerer",generation:2,pages:['[{"text":"Teleportation is a fairly simple sorcery.\\n\\nTo teleport to a portal, write the following:\\n","clickEvent":{"action":"run_command","value":"/trigger teleport set 1"}},{"text":"/trigger teleport set [number]\\n\\n","color":"#297EFF"},{"text":"The number corresponds to the portal ID. If you made a portal, secure your portal ID!"}]','[{"text":"To create a portal, simply type:\\n\\n"},{"text":"/trigger add_portal set [number]\\n\\n","color":"#297EFF"},{"text":"The number you choose will be the portal ID!"}]','[{"text":"To delete a portal, stand on top of it and type:\\n\\n"},{"text":"/trigger remove_portal set 1\\n\\n","color":"#297EFF"},{"text":"You can set it to any number as long as it\'s above zero. It only destroys the portal where you\'re standing"}]','{"text":"Portals can only be accessed in the overworld, after the cooldown ends, and after you\'re in a safe place (without taking damage)."}','{"text":"To teleport to spawn, teleport to the portal with the ID 1."}']}}}]}}

#progress
execute in minecraft:the_end unless entity @e[tag=progress,type=villager] run summon villager 126 74 -33 {OnGround:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Health:1f,Tags:["progress"],CustomName:'{"text":"Progress","color":"yellow","bold":true}',Attributes:[{Name:generic.max_health,Base:1}],VillagerData:{level:99,profession:"minecraft:cartographer",type:"minecraft:jungle"},Offers:{Recipes:[{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:bread",Count:15b},buyB:{id:"minecraft:baked_potato",Count:7b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof1:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:pumpkin_pie",Count:7b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof2:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:cake",Count:1b},buyB:{id:"minecraft:cookie",Count:4b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof3:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:coal",Count:30b},buyB:{id:"minecraft:iron_ingot",Count:15b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof4:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:lapis_lazuli",Count:40b},buyB:{id:"minecraft:gold_ingot",Count:10b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof5:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:diamond",Count:5b},buyB:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof6:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:bone",Count:15b},buyB:{id:"minecraft:rotten_flesh",Count:21b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof7:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:string",Count:21b},buyB:{id:"minecraft:spider_eye",Count:13b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof8:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:slime_ball",Count:7b},buyB:{id:"minecraft:ender_pearl",Count:5b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof9:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:cooked_chicken",Count:11b},buyB:{id:"minecraft:feather",Count:16b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof10:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:white_wool",Count:19b},buyB:{id:"minecraft:cooked_mutton",Count:15b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof11:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:leather",Count:17b},buyB:{id:"minecraft:cooked_beef",Count:24b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof12:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:wheat_seeds",Count:31b},buyB:{id:"minecraft:wheat",Count:29b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof13:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:carrot",Count:23b},buyB:{id:"minecraft:potato",Count:27b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof14:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:beetroot",Count:24b},buyB:{id:"minecraft:cocoa_beans",Count:7b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof15:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:oak_log",Count:32b},buyB:{id:"minecraft:dark_oak_log",Count:32b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof16:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:jungle_log",Count:10b},buyB:{id:"minecraft:spruce_log",Count:40b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof17:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:crimson_stem",Count:40b},buyB:{id:"minecraft:warped_stem",Count:35b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof18:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:'minecraft:heart_of_the_sea',Count:1b},buyB:{id:'minecraft:blaze_rod',Count:10b},sell:{id:'minecraft:mojang_banner_pattern',Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:["{\"text\":\"Throw to use\",\"color\":\"#9CFFF8\"}"]},proof19:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:saddle",Count:1b},buyB:{id:"minecraft:name_tag",Count:1b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof20:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:cod",Count:25b},buyB:{id:"minecraft:salmon",Count:20b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof21:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:nether_wart",Count:30b},buyB:{id:"minecraft:blaze_powder",Count:6b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof22:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:poppy",Count:10b},buyB:{id:"minecraft:blue_orchid",Count:5b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof23:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:scute",Count:4b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof24:1b,Enchantments:[{}]}}},{maxUses:1,xp:0,priceMultiplier:1f,specialPrice:0,buy:{id:"minecraft:ender_eye",Count:1b},sell:{id:"minecraft:mojang_banner_pattern",Count:1b,tag:{display:{Name:'{"text":"Proof of Progress","color":"#52FFF9","bold":true}',Lore:['{"text":"Throw to use","color":"#9CFFF8"}']},proof25:1b,Enchantments:[{}]}}}]}}






































