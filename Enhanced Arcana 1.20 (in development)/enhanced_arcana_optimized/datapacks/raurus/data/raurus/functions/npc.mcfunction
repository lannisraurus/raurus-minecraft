kill @e[tag=kill_npc]


# blood prince npc
execute in raurus:interstice positioned -42 64 21 run summon villager ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:1f,Tags:["kill_npc"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1},{Name:generic.movement_speed,Base:-1000}],Offers:{Recipes:[{rewardExp:1b,maxUses:2147483647,uses:0,xp:1,buy:{id:"minecraft:red_dye",Count:32b,tag:{display:{Name:'{"text":"Blood Essence","color":"#FF0000"}'},blood_essence:1b}},buyB:{id:"minecraft:diamond",Count:2b},sell:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Blood Staff","color":"#6E0000","bold":true}',Lore:["{\"text\":\"Right Click to cast spells\",\"color\":\"#FF0000\"}","{\"text\":\"Look down and left click to change spells\",\"color\":\"#FF0000\"}","{\"text\":\"Spell 1: Life-steal ray (drains mana)\",\"color\":\"#FF0000\"}","{\"text\":\"Spell 2: Undead Rapture (40 mana)\",\"color\":\"#FF0000\"}"]},Unbreakable:1b,CustomModelData:17,blood_staff:1b,magic_item:1b,Enchantments:[{}]}}},{rewardExp:1b,maxUses:2147483647,uses:0,xp:1,buy:{id:"minecraft:bone",Count:9b},buyB:{id:"minecraft:red_dye",Count:32b,tag:{display:{Name:'{"text":"Blood Essence","color":"#FF0000"}'},blood_essence:1b}},sell:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Scroll of Life-steal ray","color":"#730000","bold":true}',Lore:["{\"text\":\"Right Click to use\",\"color\":\"#FF6363\"}"]},Unbreakable:1b,CustomModelData:68,learn_lifesteal_ray:1b,Enchantments:[{}]}}},{maxUses:2147483647,uses:0,xp:1,buy:{id:"minecraft:rotten_flesh",Count:17b},buyB:{id:"minecraft:red_dye",Count:32b,tag:{display:{Name:'{"text":"Blood Essence","color":"#FF0000"}'},blood_essence:1b}},sell:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Scroll of Undead Rapture","color":"#730000","bold":true}',Lore:["{\"text\":\"Right Click to use\",\"color\":\"#FF6363\"}"]},Unbreakable:1b,CustomModelData:68,learn_undead_rapture:1b,Enchantments:[{}]}}}]}}
execute in raurus:interstice positioned -42 66.2 21 run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["kill_npc"],text:'{"text":"Right Click - Shop","color":"red"}'}




# boat npc
execute in raurus:interstice positioned -49 64 26 run summon armor_stand ~ ~ ~ {ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["kill_npc"],Pose:{LeftArm:[0f,0f,343f],RightArm:[0f,0f,10f],Head:[0f,15f,0f]},DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1082045154,1421888825,-1591386841,-645389601],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWIyNTgyNTMyZjg0NWY2ZGJhZjliZTI4YjQwYjJjMjVmZjc4MjU4MjE3ZWI0ZGVjYTRmYWIxM2IwNjA1MiJ9fX0="}]}}}}]}
execute in raurus:interstice positioned -49 66.2 26 run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["kill_npc"],text:'{"text":"Right Click - Buy Boat (50 blood)","color":"red"}'}
execute in raurus:interstice positioned -49 64 26 run summon interaction ~ ~ ~ {height:2f,Tags:["boat_interaction","kill_npc"]}


# blacksmith npc
execute in raurus:interstice positioned -37 82 21 run summon interaction ~ ~ ~0.5 {height:2f,Tags:["hammer_interaction","kill_npc"]}
execute in raurus:interstice positioned -37 82.5 21 run summon text_display ~ ~1.8 ~0.5 {billboard:"vertical",Tags:["kill_npc"],text:'{"text":"Right Click - Talk","color":"gray"}'}




# ash lake dead person
execute in raurus:soul_lake positioned 9819 56.8 10119 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Tags:["kill_npc"],Pose:{Body:[272f,0f,0f],LeftArm:[99f,152f,25f],RightArm:[75f,284f,21f],RightLeg:[360f,0f,0f],Head:[272f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8421504}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1227127602,1468876503,-2061087572,-10376736],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk2ZDcyMjk0YjJmN2YxNGZlOWU1ODhlOWU1NDExYzkyODlhZWJlOWJmZjY3NjEzNTI0YjRiYTg2OGJmYmE5OSJ9fX0="}]}}}}]}





# Seraph npc
execute in raurus:interstice positioned -49 88 24.99 run summon text_display ~ ~1.8 ~ {billboard:"vertical",Tags:["kill_npc"],text:'{"text":"Right Click - Talk","color":"white"}'}
execute in raurus:interstice positioned -49 87.5 24.99 run summon interaction ~ ~ ~ {height:2f,Tags:["seraph_interaction","kill_npc"]}





# buy arcane scrolls 
execute in raurus:interstice positioned -39 75 24 run summon interaction ~ ~ ~ {height:2f,Tags:["arcane_scrolls_interaction","kill_npc"]}
execute in raurus:interstice positioned -39 75 24 run summon text_display ~ ~2.2 ~ {billboard:"vertical",Tags:["kill_npc"],text:'{"text":"Right Click - Scrolls","color":"blue"}'}




# interstice book interact
execute in raurus:interstice positioned -31 82 18 run summon interaction ~ ~ ~ {width:1.2f,height:2f,Tags:["book_interaction","kill_npc"]}
execute in raurus:interstice positioned -31 82 18 run summon text_display ~ ~1.2 ~ {billboard:"vertical",Tags:["kill_npc"],text:'{"text":"Right Click - Books","color":"#00FFFF"}'}




# interstice tundra npc
execute in raurus:interstice positioned -43 82 20 run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["kill_npc"],Pose:{LeftArm:[325f,57f,0f],RightArm:[320f,313f,0f],Head:[16f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4210752}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1349861661,496716975,-1458265924,1188574072],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWM0MzY2YmQ5Y2QxZTM3ZWJlNjY0NmRiMjExZmViNDYxZGUwOTZhYWVhZmNmNDU1NTVjZGNjOTgzZWY4NzdmNiJ9fX0="}]}}}}]}
execute in raurus:interstice positioned -43 82 20 run summon text_display ~ ~2.3 ~ {Tags:["kill_npc"],text:'{"text":"Left Click - Talk\\nRight Click - Buy Tundra Pick (100 blood)","color":"#00FFFF"}'}
execute in raurus:interstice positioned -43 82 20 run summon interaction ~ ~1 ~ {Tags:["tundra_interaction","kill_npc"]}


# soul lake door
execute in raurus:soul_lake positioned 9885 46 10038 run summon marker ~ ~1.5 ~ {Tags:["soul_fire","kill_npc"]}



# soul lake item DISPLAYS
execute in raurus:soul_lake run summon item_display 9881 57 10041 {billboard:"vertical",Tags:["kill_npc"],item:{id:"minecraft:nether_star",Count:1b}}
execute in raurus:soul_lake run summon item_display 9880 57 10041 {billboard:"vertical",Tags:["kill_npc"],item:{id:"minecraft:heart_of_the_sea",Count:1b}}
execute in raurus:soul_lake run summon item_display 9879 57 10035 {billboard:"vertical",Tags:["kill_npc"],item:{id:"minecraft:popped_chorus_fruit",Count:1b}}
execute in raurus:soul_lake run summon item_display 9880 57 10035 {billboard:"vertical",Tags:["kill_npc"],item:{id:"minecraft:orange_dye",Count:1b}}
execute in raurus:soul_lake run summon item_display 9881 57 10035 {billboard:"vertical",Tags:["kill_npc"],item:{id:"minecraft:nether_wart",Count:1b}}
execute in raurus:soul_lake run summon item_display 9879 57 10041 {billboard:"vertical",Tags:["kill_npc"],item:{id:"minecraft:quartz",Count:1b}}



# trigger warp info

execute in raurus:interstice positioned -31 82 2 unless entity @e[tag=warp_info] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["warp_info","kill_npc"],text:'{"text":"To travel to the overworld and back:\\n/trigger warp set 1","color":"blue"}'}






# soul soul_lake

execute in raurus:interstice positioned -48 84.5 24.999 unless entity @e[tag=soul_lake_go] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["soul_lake_go","kill_npc"],text:'{"text":"Right Click - Soul Lake","color":"#00FFB3"}'}
execute in raurus:interstice positioned -48 84 24.999 unless entity @e[tag=soul_lake_go_interaction] run summon interaction ~ ~ ~ {Tags:["soul_lake_go_interaction","kill_npc"]}





## CLASS DISPLAYS, INTERACTION AND TEXT

execute in raurus:abyss positioned -4 16 -11 unless entity @e[type=armor_stand,tag=abyss_stand_1] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["abyss_stand_1","kill_npc"],Pose:{LeftArm:[0f,0f,348f],RightArm:[340f,24f,32f],LeftLeg:[0f,342f,0f],RightLeg:[0f,15f,0f],Head:[2f,13f,0f]},DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:67}},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-287860937,49303086,-1403964957,654067315],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI3Y2Y4YjgyZDI0OTZlMTNhYWI3YjQ2ZTRmZDIxZGQ5YjE2N2ViMmUyZDBmM2JiOGM5NjIwZTUwNDdjOGNmYiJ9fX0="}]}}}}]}
execute in raurus:abyss positioned -4 18.3 -11 unless entity @e[type=text_display,tag=abyss_text_1] run summon text_display ~ ~ ~ {Rotation:[-90F,0F],Tags:["abyss_text_1","kill_npc"],text:'{"text":"Blacksmith"}'}
execute in raurus:abyss positioned -4 16 -11 unless entity @e[type=interaction,tag=abyss_interaction_1] run summon interaction ~ ~ ~ {height:2f,Tags:["abyss_interaction_1","abyss_interaction","kill_npc"]}

execute in raurus:abyss positioned -4 16 -14 unless entity @e[type=armor_stand,tag=abyss_stand_2] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["abyss_stand_2","kill_npc"],Pose:{LeftArm:[0f,0f,348f],RightArm:[345f,8f,0f]},DisabledSlots:4144959,Rotation:[-90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:14}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4866437}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4866437}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4866437}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1584007882,1227964649,-1516820939,1814374477],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWQ3ODA2YTU3NDU4NTY0ZjM3YTk1MTdlMTRlZDliMGZiZDcyNmJkM2Y3MzA3ODE1MjRmODhjNTkwOWUxZTZmYyJ9fX0="}]}}}}]}
execute in raurus:abyss positioned -4 18.3 -14 unless entity @e[type=text_display,tag=abyss_text_2] run summon text_display ~ ~ ~ {Rotation:[-90F,0F],Tags:["abyss_text_2","kill_npc"],text:'{"text":"Arcane Sorcerer"}'}
execute in raurus:abyss positioned -4 16 -14 unless entity @e[type=interaction,tag=abyss_interaction_2] run summon interaction ~ ~ ~ {height:2f,Tags:["abyss_interaction_2","abyss_interaction","kill_npc"]}

execute in raurus:abyss positioned -4 16 -17 unless entity @e[type=armor_stand,tag=abyss_stand_3] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["abyss_stand_3","kill_npc"],Pose:{LeftArm:[0f,0f,348f],RightArm:[0f,0f,12f],Head:[349f,0f,0f]},DisabledSlots:4144959,Rotation:[-90F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:4671303}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:4671303}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:4671303}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1772150429,881148015,-2036926978,65224519],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzM5OWUwMGY0MDQ0MTFlNDY1ZDc0Mzg4ZGYxMzJkNTFmZTg2OGVjZjg2ZjFjMDczZmFmZmExZDkxNzJlYzBmMyJ9fX0="}]}}}}]}
execute in raurus:abyss positioned -4 18.3 -17 unless entity @e[type=text_display,tag=abyss_text_3] run summon text_display ~ ~ ~ {Rotation:[-90F,0F],Tags:["abyss_text_3","kill_npc"],text:'{"text":"Ophan Cleric"}'}
execute in raurus:abyss positioned -4 16 -17 unless entity @e[type=interaction,tag=abyss_interaction_3] run summon interaction ~ ~ ~ {height:2f,Tags:["abyss_interaction_3","abyss_interaction","kill_npc"]}

execute in raurus:abyss positioned -1 16 -19 unless entity @e[type=armor_stand,tag=abyss_stand_4] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["abyss_stand_4","kill_npc"],Pose:{LeftArm:[305f,21f,348f],RightArm:[300f,335f,12f],LeftLeg:[11f,0f,0f],RightLeg:[0f,13f,0f],Head:[38f,0f,0f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:14277081}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:14277081}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14277081}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;750528527,1360282727,-1077735319,1116799519],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTE0M2FlZDg4ZjEwZGUwNjM0MTJkNzRjZmFlNTFlNjZjM2E4YTg3NDQ4YTIzZDFlMWM4NDA1Y2UxZWU2OGY3ZSJ9fX0="}]}}}}]}
execute in raurus:abyss positioned -1 18.3 -19 unless entity @e[type=text_display,tag=abyss_text_4] run summon text_display ~ ~ ~ {Rotation:[0F,0F],Tags:["abyss_text_4","kill_npc"],text:'{"text":"Seraph Cleric"}'}
execute in raurus:abyss positioned -1 16 -19 unless entity @e[type=interaction,tag=abyss_interaction_4] run summon interaction ~ ~ ~ {height:2f,Tags:["abyss_interaction_4","abyss_interaction","kill_npc"]}

execute in raurus:abyss positioned 2 16 -17 unless entity @e[type=armor_stand,tag=abyss_stand_5] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["abyss_stand_5","kill_npc"],Pose:{LeftArm:[0f,0f,354f],RightArm:[336f,0f,12f]},DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:11}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:10857840}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10857840}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:10857840}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1779915210,-1927788222,-1556852215,-1028581008],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGM2ZjI3MmZjMzI0MDU1NzUxMGQ2ZTQ2MzRhZmEzNzRjZTZjMDJmOThiYjU2YmE2MzEyMjk5ZTU1MWM3Nzg1YSJ9fX0="}]}}}}]}
execute in raurus:abyss positioned 2 18.3 -17 unless entity @e[type=text_display,tag=abyss_text_5] run summon text_display ~ ~ ~ {Rotation:[90F,0F],Tags:["abyss_text_5","kill_npc"],text:'{"text":"Druid"}'}
execute in raurus:abyss positioned 2 16 -17 unless entity @e[type=interaction,tag=abyss_interaction_5] run summon interaction ~ ~ ~ {height:2f,Tags:["abyss_interaction_5","abyss_interaction","kill_npc"]}

execute in raurus:abyss positioned 2 16 -14 unless entity @e[type=armor_stand,tag=abyss_stand_6] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["abyss_stand_6","kill_npc"],Pose:{LeftArm:[0f,0f,334f],RightArm:[0f,0f,23f],Head:[38f,0f,0f]},DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;819729334,-388086571,-1642131965,-1635275101],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGY2MTUyYzY0MzFkNGUzZjIzYmQ4Yzg1ZWQ4YzdjOGI1MTU0ZmMwMTI2ODMzMjkzNDhkNDY0NWJiODE4ZmQ3ZiJ9fX0="}]}}}}]}
execute in raurus:abyss positioned 2 18.3 -14 unless entity @e[type=text_display,tag=abyss_text_6] run summon text_display ~ ~ ~ {Rotation:[90F,0F],Tags:["abyss_text_6","kill_npc"],text:'{"text":"Blood Demon"}'}
execute in raurus:abyss positioned 2 16 -14 unless entity @e[type=interaction,tag=abyss_interaction_6] run summon interaction ~ ~ ~ {height:2f,Tags:["abyss_interaction_6","abyss_interaction","kill_npc"]}

execute in raurus:abyss positioned 2 16 -11 unless entity @e[type=armor_stand,tag=abyss_stand_7] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["abyss_stand_7","kill_npc"],Pose:{Head:[0f,21f,0f]},DisabledSlots:4144959,Rotation:[90F,0F],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1637315987,-590723099,-2058748405,-923352674],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY1Y2NjZTM5OTFmZTkwZGNhOGJkZGQ5MTY3YjQ0M2NjZDk5ODllMmYzOTNiN2UyOWNkZGRkZWY2OWZkZmE5MCJ9fX0="}]}}}}]}
execute in raurus:abyss positioned 2 18.3 -11 unless entity @e[type=text_display,tag=abyss_text_7] run summon text_display ~ ~ ~ {Rotation:[90F,0F],Tags:["abyss_text_7","kill_npc"],text:'{"text":"Interstice Warrior"}'}
execute in raurus:abyss positioned 2 16 -11 unless entity @e[type=interaction,tag=abyss_interaction_7] run summon interaction ~ ~ ~ {height:2f,Tags:["abyss_interaction_7","abyss_interaction","kill_npc"]}


## CENTRAL INFORMATION

execute in raurus:abyss positioned -1 17.5 -9.5 unless entity @e[type=text_display,tag=abyss_text] run summon text_display ~ ~ ~ {height:2f,billboard:"vertical",Tags:["abyss_text","kill_npc"],text:'{"text":"Left Click - Information\\nRight Click - Choose"}'}










## soul lake
execute in raurus:soul_lake positioned 9885 57.5 10038 unless entity @e[tag=soul_lake_info] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["kill_npc","soul_lake_info"],text:'{"text":"To get in you must sacrifice:\\n- Tundra Heart\\n- Arcane Heart\\n- Abyssal Heart\\n- Heart of the Sea\\n- Heart of Fire\\n- Wither Star","color":"#00FFB3"}'}




## death counter
execute in raurus:interstice positioned -27 83 -6 unless entity @e[type=text_display,tag=death_text] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["death_text","kill_npc"],text:'{"text":"Total Deaths","color":"red"}',background:-2113929216}
execute in raurus:interstice positioned -27 82.3 -6 unless entity @e[type=text_display,tag=death_text2] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["death_text2","kill_npc"],text:'{"text":"---","color":"red"}',background:-2113929216}


## fire-keeper

execute in raurus:interstice positioned 9 74 0 unless entity @e[type=armor_stand,tag=level_up_stand] run summon armor_stand ~ ~ ~ {ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["level_up_stand","kill_npc"],Pose:{LeftArm:[327f,0f,27f],RightArm:[322f,0f,332f],Head:[24f,0f,0f]},DisabledSlots:4144959,Rotation:[-110F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7551232}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7551232}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7551232}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1707871365,1965771528,-1126702289,230108861],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODYxZTA1MzA2Y2FjYTIyMWNiYWE3MmJmZDQ4ZGQzYTk4YjJhOTdhMGExNDEzMzZhZGEyZGU5YmVjOWNhMWIxNyJ9fX0="}]}}}}]}
execute in raurus:interstice positioned 9 76.3 0 unless entity @e[type=text_display,tag=level_up_text] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["level_up_text","kill_npc"],text:'{"text":"Level Up - Right Click\\nTalk - Left Click","color":"#00FF00"}',background:-2113929216}
execute in raurus:interstice positioned 9 74 0 unless entity @e[type=interaction,tag=level_up_interaction] run summon interaction ~ ~ ~ {height:2f,Tags:["level_up_interaction","kill_npc"]}






# blood npcs

execute in raurus:interstice positioned -11 78 -7 unless entity @e[type=armor_stand,tag=blood_stand] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["kill_npc","blood_stand"],Pose:{LeftArm:[331f,0f,323f],RightArm:[331f,0f,38f],Head:[342f,0f,0f]},Rotation:[-10F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16728642}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16728642}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16728642}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;264784441,1097024009,-1577408949,-1755964095],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Y5YWQyZDc0NDE5Zjk0MWM1ZmY5MzQ2ZTA5MjMyNTlhODE0YjcyZjM3YzUwNGRmZWM0OTYwNTc4MTgxOTdlOCJ9fX0="}]}}}}]}
execute in raurus:interstice positioned -11 80.3 -7 unless entity @e[type=text_display,tag=blood_text] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["blood_text","kill_npc"],text:'{"text":"Right Click - Blood Essence (10 blood)\\nLeft Click - Talk about Arcane Heart","color":"red"}',background:-2113929216}

execute in raurus:interstice positioned -11 78 -7 unless entity @e[type=interaction,tag=blood_interaction] run summon interaction ~ ~ ~ {height:2f,Tags:["blood_interaction","kill_npc"]}









# jerry 

execute in raurus:interstice positioned -1 64 -23 unless entity @e[type=armor_stand,tag=jerry_stand] run summon armor_stand ~ ~ ~ {ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["jerry_stand","kill_npc"],Pose:{LeftArm:[0f,0f,352f],RightArm:[0f,0f,151f]},DisabledSlots:4144959,Rotation:[79F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:1408256}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1408256}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1408256}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-605963336,-920369972,-2016970048,-2065642082],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzU1ODg2ZjIxY2NkMWVlY2Q3MDA5ZGM2MzMyODRmZjQ5ZGM5OWI5MjAwYmJhOWU3ODc2ZWQ3NDY0MDk5NTlmYyJ9fX0="}]}}}}]}


# interstice npc

execute in raurus:interstice positioned -56 78 13 unless entity @e[type=armor_stand,tag=interstice_stand] run summon armor_stand ~ ~ ~ {ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,Tags:["interstice_stand","kill_npc"],Pose:{Head:[353f,0f,0f]},DisabledSlots:4144959,Rotation:[130F,0F],HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-795372469,-684178465,-1379839093,986883616],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDY4ZWVkYmQ3YmJlMGUxOTAwYmRmNzg0ZWQwMTNhMjIzZDRhZGQwNjU0MmQyZGFhZjc1ZDFkMDNmNzIwMzc5In19fQ=="}]}}}}]}
execute in raurus:interstice positioned -6 78 -16 unless entity @e[type=armor_stand,tag=ophan_stand] run summon armor_stand ~ ~ ~-0.27 {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["ophan_stand","kill_npc"],Pose:{Head:[20f,0f,0f]},DisabledSlots:4144959,Rotation:[-180F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:15}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9051252}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9051252}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9051252}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;304520043,349980876,-2123071319,-1213091813],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDg4ZWI0YjRjYWZhMWYzY2JlMDZjZjBlOTAzMGFkNzVjMjhiYjUwMGU4MDBiNjE5NmJkZjMyOTg2NWE1YzcxOCJ9fX0="}]}}}}]}
execute in raurus:interstice positioned -37 82 21 unless entity @e[type=armor_stand,tag=blacksmith_stand] run summon armor_stand ~ ~ ~0.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["blacksmith_stand","kill_npc"],Pose:{LeftArm:[24f,0f,345f],RightArm:[0f,26f,131f],Head:[20f,0f,0f]},DisabledSlots:4144959,Rotation:[115F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:67}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;31297363,-1194636032,-2126960900,-694258368],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGJjOGQxYWJlMTJjNDVjNmRiM2RmODZhZGJjZjEyZDRjZWY0Yzk3YTc1ZmJhMmY4YmU0ZTVmZTU4ZTM2MjVkNCJ9fX0="}]}}}}]}
execute in raurus:interstice positioned -42 64 21 unless entity @e[type=armor_stand,tag=blood_stand2] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["blood_stand2","kill_npc"],Pose:{LeftArm:[0f,0f,317f],RightArm:[0f,0f,41f],Head:[333f,0f,0f]},DisabledSlots:4144959,Rotation:[-49F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:9051164}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:9051164}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9051164}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1321723756,-596621326,-1407829991,-674116210],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmNjODljMzNmOTViNDM3ZTBkYjNiZmMxNzVkZWM3N2Y3N2E1OWMzMTVhZmJjM2E1NDQxZmIyYjZjYzU3ZTZiNiJ9fX0="}]}}}}]}
execute in raurus:interstice positioned -39 75 24 unless entity @e[type=armor_stand,tag=sorcerer_stand] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["sorcerer_stand","kill_npc"],Pose:{LeftArm:[0f,328f,0f]},DisabledSlots:4144959,Rotation:[-120F,0F],HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:13}},{id:"minecraft:book",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:5523082}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5523082}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:5523082}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-923772101,-799716957,-1139664562,57847253],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2YyODE5Mjk1YzAxZTEyYTI1YTRjYWJjNzYwYTY5MDBjODM0MDFhZWQxZTI0N2Q0NGI2YjkyOTJkYzZjMTBkYSJ9fX0="}]}}}}]}
execute in raurus:interstice positioned -49 88 25 unless entity @e[type=armor_stand,tag=seraph_stand] run summon armor_stand ~ ~-0.5 ~-0.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["seraph_stand","kill_npc"],Pose:{Head:[353f,0f,0f]},DisabledSlots:4144959,Rotation:[90F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;750528527,1360282727,-1077735319,1116799519],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTE0M2FlZDg4ZjEwZGUwNjM0MTJkNzRjZmFlNTFlNjZjM2E4YTg3NDQ4YTIzZDFlMWM4NDA1Y2UxZWU2OGY3ZSJ9fX0="}]}}}}]}

