## death counter
execute in raurus:interstice positioned -27 83 -6 unless entity @e[type=text_display,tag=death_text] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["death_text","kill_npc"],text:'{"text":"Total Deaths","color":"red"}',background:-2113929216}
execute in raurus:interstice positioned -27 82.3 -6 unless entity @e[type=text_display,tag=death_text2] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["death_text2","kill_npc"],text:'{"text":"---","color":"red"}',background:-2113929216}
execute as @e[tag=death_text2] run data merge entity @s {text:'{"score":{"name":"deaths","objective":"deaths"},"color":"red"}'}

## fire-keeper

execute in raurus:interstice positioned 9 74 0 unless entity @e[type=armor_stand,tag=level_up_stand] run summon armor_stand ~ ~ ~ {ShowArms:1b,Marker:1b,Invisible:0b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["level_up_stand","kill_npc"],Pose:{LeftArm:[327f,0f,27f],RightArm:[322f,0f,332f],Head:[24f,0f,0f]},DisabledSlots:4144959,Rotation:[-110F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7551232}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7551232}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7551232}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1707871365,1965771528,-1126702289,230108861],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODYxZTA1MzA2Y2FjYTIyMWNiYWE3MmJmZDQ4ZGQzYTk4YjJhOTdhMGExNDEzMzZhZGEyZGU5YmVjOWNhMWIxNyJ9fX0="}]}}}}]}
execute in raurus:interstice positioned 9 76.3 0 unless entity @e[type=text_display,tag=level_up_text] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["level_up_text","kill_npc"],text:'{"text":"Level Up - Left Click\\nTalk - Right Click","color":"#00FF00"}',background:-2113929216}
execute in raurus:interstice positioned 9 74 0 unless entity @e[type=interaction,tag=level_up_interaction] run summon interaction ~ ~ ~ {height:2f,Tags:["level_up_interaction","kill_npc"]}

execute as @e[type=interaction,tag=level_up_interaction] on attacker run scoreboard players set @s level_up_talk 0
scoreboard players add @a[scores={level_up_talk=..80}] level_up_talk 1
tellraw @a[scores={level_up_talk=1}] ["",{"text":"<"},{"text":"Firekeeper","color":"#FFAD00"},{"text":"> ..."}]
tellraw @a[scores={level_up_talk=80}] {"text":"- She cannot speak, for she has no tongue."}

execute as @e[type=interaction,tag=level_up_interaction] on target run tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"- Overview -","bold":true,"color":"white"},{"text":"\nLevel: "},{"score":{"name":"@s","objective":"lvl"}},{"text":"\nAvailable level ups: "},{"score":{"name":"@s","objective":"lvl_up"}},{"text":"\n"},{"text":"- Stats -","bold":true},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_vit add 1"}},{"text":"] VIT - "},{"score":{"name":"@s","objective":"vit"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_str add 1"}},{"text":"] STR - "},{"score":{"name":"@s","objective":"str"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_dex add 1"}},{"text":"] DEX - "},{"score":{"name":"@s","objective":"dex"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_kno add 1"}},{"text":"] KNO - "},{"score":{"name":"@s","objective":"kno"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_att add 1"}},{"text":"] ATT - "},{"score":{"name":"@s","objective":"att"}},{"text":"\n["},{"text":"^","clickEvent":{"action":"run_command","value":"/trigger lvl_agi add 1"}},{"text":"] AGI - "},{"score":{"name":"@s","objective":"agi"}}]

execute as @e[type=interaction,tag=level_up_interaction] on attacker run kill @e[type=interaction,tag=level_up_interaction]
execute as @e[type=interaction,tag=level_up_interaction] on target run kill @e[type=interaction,tag=level_up_interaction]




# blood npcs

execute in raurus:interstice positioned -11 78 -7 unless entity @e[type=armor_stand,tag=blood_stand] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,NoBasePlate:1b,Tags:["kill_npc","blood_stand"],Pose:{LeftArm:[331f,0f,323f],RightArm:[331f,0f,38f],Head:[342f,0f,0f]},Rotation:[-10F,0F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16728642}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16728642}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16728642}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;264784441,1097024009,-1577408949,-1755964095],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Y5YWQyZDc0NDE5Zjk0MWM1ZmY5MzQ2ZTA5MjMyNTlhODE0YjcyZjM3YzUwNGRmZWM0OTYwNTc4MTgxOTdlOCJ9fX0="}]}}}}]}
execute in raurus:interstice positioned -11 80.3 -7 unless entity @e[type=text_display,tag=blood_text] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["blood_text","kill_npc"],text:'{"text":"Right Click - Blood Essence (5 blood)\\nLeft Click - Talk about Arcane Heart","color":"red"}',background:-2113929216}

execute in raurus:interstice positioned -11 78 -7 unless entity @e[type=interaction,tag=blood_interaction] run summon interaction ~ ~ ~ {height:2f,Tags:["blood_interaction","kill_npc"]}

execute as @e[type=interaction,tag=blood_interaction] on attacker run tellraw @s ["",{"text":"<"},{"text":"Blood Sorcerer","color":"red"},{"text":"> The Arcane Heart? A very useful artifact, used for reviving players stuck in the interstice... To craft it all you need is [10 Blood Essence], [3 Sticks] and [2 Rotten Flesh]. Just drop these items on top of a crafting table."}]
execute as @e[type=interaction,tag=blood_interaction] on target if score @s blood matches 5.. run give @s red_dye{display:{Name:'{"text":"Blood Essence","color":"#FF0000"}'},blood_essence:1b} 1
execute as @e[type=interaction,tag=blood_interaction] on target if score @s blood matches 5.. at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.00
execute as @e[type=interaction,tag=blood_interaction] on target if score @s blood matches 5.. at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 2.00
execute as @e[type=interaction,tag=blood_interaction] on target if score @s blood matches 5.. at @s run playsound minecraft:block.note_block.bit ambient @s ~ ~ ~ 1 1.50
execute as @e[type=interaction,tag=blood_interaction] on target if score @s blood matches 5.. run scoreboard players remove @s blood 5

execute as @e[type=interaction,tag=blood_interaction] on attacker run kill @e[type=interaction,tag=blood_interaction]
execute as @e[type=interaction,tag=blood_interaction] on target run kill @e[type=interaction,tag=blood_interaction]




