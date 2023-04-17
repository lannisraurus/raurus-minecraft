item replace entity @a[scores={armour=0 , cloak_time=..0}] armor.head with air
item replace entity @a[scores={armour=0 , cloak_time=..0}] armor.chest with air
item replace entity @a[scores={armour=0 , cloak_time=..0}] armor.legs with air
item replace entity @a[scores={armour=0 , cloak_time=..0}] armor.feet with air



########### REMOVE ARMOUR
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=1}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Slime Armour","color":"#004015","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#00FF80","italic":false}','{"text":"Physical Defense: Light","color":"#00FF80","italic":false}','{"text":"Magical Defense: None","color":"#00FF80","italic":false}','{"text":"Abilities: Hold shift to charge high jump.","color":"#00FF80","italic":false}','{"text":"Req: None","color":"#00FF80","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:48,equip_armour:1b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=2}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Biomechanical Armour","color":"#007326","italic":false}',Lore:['{"text":"Movement Speed: Fast","color":"#00FF80","italic":false}','{"text":"Physical Defense: Light","color":"#00FF80","italic":false}','{"text":"Magical Defense: None","color":"#00FF80","italic":false}','{"text":"Abilities: Running makes you run progressively faster","color":"#00FF80","italic":false}','{"text":"Req: 2 END, 3 AGI","color":"#00FF80","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:49,equip_armour:2b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=3}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Steamcharged Armour","color":"#730F00","italic":false}',Lore:['{"text":"Movement Speed: Very Slow","color":"#FF4603","italic":false}','{"text":"Physical Defense: High","color":"#FF4603","italic":false}','{"text":"Magical Defense: Light","color":"#FF4603","italic":false}','{"text":"Abilities: Running makes you run progressively faster","color":"#FF4603","italic":false}','{"text":"Req: 5 END, 3 AGI","color":"#FF4603","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:50,equip_armour:3b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=4}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Herald Armour","color":"#009CCC","italic":false}',Lore:['{"text":"Movement Speed: Slow","color":"#70D4FF","italic":false}','{"text":"Physical Defense: Medium","color":"#70D4FF","italic":false}','{"text":"Magical Defense: Light","color":"#70D4FF","italic":false}','{"text":"Abilities: Faster mana regeneration","color":"#70D4FF","italic":false}','{"text":"Req: 3 END, 2 ATT, 1 KNO","color":"#70D4FF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:51,equip_armour:4b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=5}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Necromancer Armour","color":"#5F00CC","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#AA2BFF","italic":false}','{"text":"Physical Defense: Light","color":"#AA2BFF","italic":false}','{"text":"Magical Defense: High","color":"#AA2BFF","italic":false}','{"text":"Abilities: Faster mana regeneration, less poison time and necromancy (kills spawn undead)","color":"#AA2BFF","italic":false}','{"text":"Req: 5 ATT, 5 KNO","color":"#AA2BFF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:52,equip_armour:5b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=6}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Assassin Armour","color":"#6E6E6E","italic":false}',Lore:['{"text":"Movement Speed: Fast","color":"#BABABA","italic":false}','{"text":"Physical Defense: Light","color":"#BABABA","italic":false}','{"text":"Magical Defense: None","color":"#BABABA","italic":false}','{"text":"Abilities: None","color":"#BABABA","italic":false}','{"text":"Req: None","color":"#BABABA","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:53,equip_armour:6b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=7}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sorcerer Armour","color":"#0040D6","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#2F7BDE","italic":false}','{"text":"Physical Defense: Light","color":"#2F7BDE","italic":false}','{"text":"Magical Defense: High","color":"#2F7BDE","italic":false}','{"text":"Abilities: Faster mana regeneration","color":"#2F7BDE","italic":false}','{"text":"Req: 2 ATT, 2 KNO","color":"#2F7BDE","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:54,equip_armour:7b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=8}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Light Armour","color":"#734900","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#B36B00","italic":false}','{"text":"Physical Defense: Light","color":"#B36B00","italic":false}','{"text":"Magical Defense: None","color":"#B36B00","italic":false}','{"text":"Abilities: None","color":"#B36B00","italic":false}','{"text":"Req: None","color":"#B36B00","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:55,equip_armour:8b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=9}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Medium Armour","color":"#595656","italic":false}',Lore:['{"text":"Movement Speed: Slow","color":"#B3B3B3","italic":false}','{"text":"Physical Defense: Medium","color":"#B3B3B3","italic":false}','{"text":"Magical Defense: None","color":"#B3B3B3","italic":false}','{"text":"Abilities: None","color":"#B3B3B3","italic":false}','{"text":"Req: 2 END","color":"#B3B3B3","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:56,equip_armour:9b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=10}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Heavy Armour","color":"#B5AFAF","italic":false}',Lore:['{"text":"Movement Speed: Slow+","color":"#CCCCCC","italic":false}','{"text":"Physical Defense: High","color":"#CCCCCC","italic":false}','{"text":"Magical Defense: None","color":"#CCCCCC","italic":false}','{"text":"Abilities: None","color":"#CCCCCC","italic":false}','{"text":"Req: 5 END","color":"#CCCCCC","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:57,equip_armour:10b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=11}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Ultra Heavy Armour","color":"#302936","italic":false}',Lore:['{"text":"Movement Speed: Very Slow","color":"#BCA5CC","italic":false}','{"text":"Physical Defense: Very High","color":"#BCA5CC","italic":false}','{"text":"Magical Defense: None","color":"#BCA5CC","italic":false}','{"text":"Abilities: None","color":"#BCA5CC","italic":false}','{"text":"Req: 8 END","color":"#BCA5CC","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:58,equip_armour:11b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=12}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Golden Armour","color":"#FFBB00","italic":false}',Lore:['{"text":"Movement Speed: Slow","color":"#FFFB7D","italic":false}','{"text":"Physical Defense: Medium","color":"#FFFB7D","italic":false}','{"text":"Magical Defense: Light","color":"#FFFB7D","italic":false}','{"text":"Abilities: Reduced stun-time","color":"#FFFB7D","italic":false}','{"text":"Req: 4 END, 3 ATT","color":"#FFFB7D","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:59,equip_armour:12b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=13}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Abyss-walker Armour","color":"#5B00A1","italic":false}',Lore:['{"text":"Movement Speed: Slow","color":"#9D47FF","italic":false}','{"text":"Physical Defense: Medium","color":"#9D47FF","italic":false}','{"text":"Magical Defense: Light","color":"#9D47FF","italic":false}','{"text":"Abilities: Hold shift and look down to travel to the Abyss (cost: 3 hearts)","color":"#9D47FF","italic":false}','{"text":"Req: 4 END, 3 KNO, 2 VIT","color":"#9D47FF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:60,equip_armour:13b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=14}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Shadow-veil Armour","color":"#5B00A1","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#9D47FF","italic":false}','{"text":"Physical Defense: Light","color":"#9D47FF","italic":false}','{"text":"Magical Defense: None","color":"#9D47FF","italic":false}','{"text":"Abilities: Hold shift while out of combat to become invisible","color":"#9D47FF","italic":false}','{"text":"Req: 3 KNO, 3 AGI","color":"#9D47FF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:61,equip_armour:14b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=15}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Blood Knight Armour","color":"#A13000","italic":false}',Lore:['{"text":"Movement Speed: Slow+","color":"#FF0000","italic":false}','{"text":"Physical Defense: High","color":"#FF0000","italic":false}','{"text":"Magical Defense: Light","color":"#FF0000","italic":false}','{"text":"Abilities: Out of combat regeneration","color":"#FF0000","italic":false}','{"text":"Req: 5 VIT, 5 END","color":"#FF0000","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:62,equip_armour:15b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=16}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Angel Armour","color":"#D971D5","italic":false}',Lore:['{"text":"Movement Speed: Fast","color":"#FFB8FD","italic":false}','{"text":"Physical Defense: Light","color":"#FFB8FD","italic":false}','{"text":"Magical Defense: Light","color":"#FFB8FD","italic":false}','{"text":"Abilities: Slow Falling","color":"#FFB8FD","italic":false}','{"text":"Req: 3 KNO, 3 ATT","color":"#FFB8FD","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:63,equip_armour:16b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=17}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Paladin Armour","color":"#E0D100","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#FFFB7D","italic":false}','{"text":"Physical Defense: Medium","color":"#FFFB7D","italic":false}','{"text":"Magical Defense: Light","color":"#FFFB7D","italic":false}','{"text":"Abilities: Slow Falling","color":"#FFFB7D","italic":false}','{"text":"Req: 3 KNO, 3 ATT, 4 END","color":"#FFFB7D","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:64,equip_armour:17b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=18}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Warden Armour","color":"#6A6696","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#9EA1FF","italic":false}','{"text":"Physical Defense: Light","color":"#9EA1FF","italic":false}','{"text":"Magical Defense: None","color":"#9EA1FF","italic":false}','{"text":"Abilities: Hold shift to activate defense mode (mana drain cost)","color":"#9EA1FF","italic":false}','{"text":"Req: 1 ATT, 1 KNO, 1 END","color":"#9EA1FF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:65,equip_armour:18b}}}
execute at @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1.., armour=19}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Hunter Armour","color":"#4A2A14","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#7A421C","italic":false}','{"text":"Physical Defense: Light","color":"#7A421C","italic":false}','{"text":"Magical Defense: None","color":"#7A421C","italic":false}','{"text":"Abilities: Strength boost when low on health","color":"#7A421C","italic":false}','{"text":"Req: None","color":"#7A421C","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:66,equip_armour:19b}}}

scoreboard players set @a[nbt={SelectedItem:{tag:{remove_armour:1b}}},scores={right_click=1..}] armour 0

################ EQUIP ARMOUR



tag @a[nbt={SelectedItem:{tag:{equip_armour:1b}}},scores={right_click=1.. , armour=0}] add armour1
tag @a[nbt={SelectedItem:{tag:{equip_armour:2b}}},scores={right_click=1.. ,armour=0, end=2.. , agi=3..}] add armour2
tag @a[nbt={SelectedItem:{tag:{equip_armour:3b}}},scores={right_click=1.. ,armour=0, end=5.. , agi=3..}] add armour3
tag @a[nbt={SelectedItem:{tag:{equip_armour:4b}}},scores={right_click=1.. ,armour=0, end=3.., att=2.., kno=1..}] add armour4
tag @a[nbt={SelectedItem:{tag:{equip_armour:5b}}},scores={right_click=1.. ,armour=0, att=5.., kno=5..}] add armour5
tag @a[nbt={SelectedItem:{tag:{equip_armour:6b}}},scores={right_click=1.. ,armour=0}] add armour6
tag @a[nbt={SelectedItem:{tag:{equip_armour:7b}}},scores={right_click=1.. ,armour=0, att=2.., kno=2..}] add armour7
tag @a[nbt={SelectedItem:{tag:{equip_armour:8b}}},scores={right_click=1.. ,armour=0}] add armour8
tag @a[nbt={SelectedItem:{tag:{equip_armour:9b}}},scores={right_click=1.. ,armour=0, end=2..}] add armour9
tag @a[nbt={SelectedItem:{tag:{equip_armour:10b}}},scores={right_click=1.. ,armour=0, end=5..}] add armour10
tag @a[nbt={SelectedItem:{tag:{equip_armour:11b}}},scores={right_click=1.. ,armour=0, end=8..}] add armour11
tag @a[nbt={SelectedItem:{tag:{equip_armour:12b}}},scores={right_click=1.. ,armour=0, end=4.. , att=3..}] add armour12
tag @a[nbt={SelectedItem:{tag:{equip_armour:13b}}},scores={right_click=1.. ,armour=0, end=4.. , kno=3.. , vit=2..}] add armour13
tag @a[nbt={SelectedItem:{tag:{equip_armour:14b}}},scores={right_click=1.. ,armour=0, kno=3.. , agi=3..}] add armour14
tag @a[nbt={SelectedItem:{tag:{equip_armour:15b}}},scores={right_click=1.. ,armour=0, end=5.. , vit=5..}] add armour15
tag @a[nbt={SelectedItem:{tag:{equip_armour:16b}}},scores={right_click=1.. ,armour=0, att=3.. , kno=3..}] add armour16
tag @a[nbt={SelectedItem:{tag:{equip_armour:17b}}},scores={right_click=1.. ,armour=0, att=3.. , kno=3.. , end=4..}] add armour17
tag @a[nbt={SelectedItem:{tag:{equip_armour:18b}}},scores={right_click=1.. ,armour=0, att=1.. , kno=1.. , end=1..}] add armour18
tag @a[nbt={SelectedItem:{tag:{equip_armour:19b}}},scores={right_click=1.. ,armour=0}] add armour19



tellraw @a[nbt={SelectedItem:{tag:{equip_armour:1b}}},scores={right_click=1..},tag=!armour1] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:2b}}},scores={right_click=1..},tag=!armour2] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:3b}}},scores={right_click=1..},tag=!armour3] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:4b}}},scores={right_click=1..},tag=!armour4] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:5b}}},scores={right_click=1..},tag=!armour5] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:6b}}},scores={right_click=1..},tag=!armour6] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:7b}}},scores={right_click=1..},tag=!armour7] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:8b}}},scores={right_click=1..},tag=!armour8] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:9b}}},scores={right_click=1..},tag=!armour9] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:10b}}},scores={right_click=1..},tag=!armour10] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:11b}}},scores={right_click=1..},tag=!armour11] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:12b}}},scores={right_click=1..},tag=!armour12] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:13b}}},scores={right_click=1..},tag=!armour13] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:14b}}},scores={right_click=1..},tag=!armour14] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:15b}}},scores={right_click=1..},tag=!armour15] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:16b}}},scores={right_click=1..},tag=!armour16] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:17b}}},scores={right_click=1..},tag=!armour17] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:18b}}},scores={right_click=1..},tag=!armour18] {"text":"Cannot equip this armour!","color":"red"}
tellraw @a[nbt={SelectedItem:{tag:{equip_armour:19b}}},scores={right_click=1..},tag=!armour19] {"text":"Cannot equip this armour!","color":"red"}



scoreboard players set @a[tag=armour1] armour 1
scoreboard players set @a[tag=armour2] armour 2
scoreboard players set @a[tag=armour3] armour 3
scoreboard players set @a[tag=armour4] armour 4
scoreboard players set @a[tag=armour5] armour 5
scoreboard players set @a[tag=armour6] armour 6
scoreboard players set @a[tag=armour7] armour 7
scoreboard players set @a[tag=armour8] armour 8
scoreboard players set @a[tag=armour9] armour 9
scoreboard players set @a[tag=armour10] armour 10
scoreboard players set @a[tag=armour11] armour 11
scoreboard players set @a[tag=armour12] armour 12
scoreboard players set @a[tag=armour13] armour 13
scoreboard players set @a[tag=armour14] armour 14
scoreboard players set @a[tag=armour15] armour 15
scoreboard players set @a[tag=armour16] armour 16
scoreboard players set @a[tag=armour17] armour 17
scoreboard players set @a[tag=armour18] armour 18
scoreboard players set @a[tag=armour19] armour 19









clear @a[tag=armour1] minecraft:carrot_on_a_stick{equip_armour:1b} 1
clear @a[tag=armour2] minecraft:carrot_on_a_stick{equip_armour:2b} 1
clear @a[tag=armour3] minecraft:carrot_on_a_stick{equip_armour:3b} 1
clear @a[tag=armour4] minecraft:carrot_on_a_stick{equip_armour:4b} 1
clear @a[tag=armour5] minecraft:carrot_on_a_stick{equip_armour:5b} 1
clear @a[tag=armour6] minecraft:carrot_on_a_stick{equip_armour:6b} 1
clear @a[tag=armour7] minecraft:carrot_on_a_stick{equip_armour:7b} 1
clear @a[tag=armour8] minecraft:carrot_on_a_stick{equip_armour:8b} 1
clear @a[tag=armour9] minecraft:carrot_on_a_stick{equip_armour:9b} 1
clear @a[tag=armour10] minecraft:carrot_on_a_stick{equip_armour:10b} 1
clear @a[tag=armour11] minecraft:carrot_on_a_stick{equip_armour:11b} 1
clear @a[tag=armour12] minecraft:carrot_on_a_stick{equip_armour:12b} 1
clear @a[tag=armour13] minecraft:carrot_on_a_stick{equip_armour:13b} 1
clear @a[tag=armour14] minecraft:carrot_on_a_stick{equip_armour:14b} 1
clear @a[tag=armour15] minecraft:carrot_on_a_stick{equip_armour:15b} 1
clear @a[tag=armour16] minecraft:carrot_on_a_stick{equip_armour:16b} 1
clear @a[tag=armour17] minecraft:carrot_on_a_stick{equip_armour:17b} 1
clear @a[tag=armour18] minecraft:carrot_on_a_stick{equip_armour:18b} 1
clear @a[tag=armour19] minecraft:carrot_on_a_stick{equip_armour:19b} 1






tag @a remove armour1
tag @a remove armour2
tag @a remove armour3
tag @a remove armour4
tag @a remove armour5
tag @a remove armour6
tag @a remove armour7
tag @a remove armour8
tag @a remove armour9
tag @a remove armour10
tag @a remove armour11
tag @a remove armour12
tag @a remove armour13
tag @a remove armour14
tag @a remove armour15
tag @a remove armour16
tag @a remove armour17
tag @a remove armour18
tag @a remove armour19








# set movement speed

tag @a[scores={armour=1}] add movement_speed_3
tag @a[scores={armour=2}] add movement_speed_4
tag @a[scores={armour=3}] add movement_speed_0
tag @a[scores={armour=4}] add movement_speed_2
tag @a[scores={armour=5}] add movement_speed_3
tag @a[scores={armour=6}] add movement_speed_4
tag @a[scores={armour=7}] add movement_speed_3
tag @a[scores={armour=8}] add movement_speed_3
tag @a[scores={armour=9}] add movement_speed_2
tag @a[scores={armour=10}] add movement_speed_1
tag @a[scores={armour=11}] add movement_speed_0
tag @a[scores={armour=12}] add movement_speed_2
tag @a[scores={armour=13}] add movement_speed_2
tag @a[scores={armour=14}] add movement_speed_3
tag @a[scores={armour=15}] add movement_speed_1
tag @a[scores={armour=16}] add movement_speed_4
tag @a[scores={armour=17}] add movement_speed_3
tag @a[scores={armour=18}] add movement_speed_3
tag @a[scores={armour=19}] add movement_speed_3

# set magic defense

scoreboard players set @a[scores={armour=..0}] magic_def 0
scoreboard players set @a[scores={armour=1}] magic_def 0
scoreboard players set @a[scores={armour=2}] magic_def 0
scoreboard players set @a[scores={armour=3}] magic_def 1
scoreboard players set @a[scores={armour=4}] magic_def 1
scoreboard players set @a[scores={armour=5}] magic_def 2
scoreboard players set @a[scores={armour=6}] magic_def 0
scoreboard players set @a[scores={armour=7}] magic_def 2
scoreboard players set @a[scores={armour=8}] magic_def 0
scoreboard players set @a[scores={armour=9}] magic_def 0
scoreboard players set @a[scores={armour=10}] magic_def 0
scoreboard players set @a[scores={armour=11}] magic_def 0
scoreboard players set @a[scores={armour=12}] magic_def 1
scoreboard players set @a[scores={armour=13}] magic_def 1
scoreboard players set @a[scores={armour=14}] magic_def 0
scoreboard players set @a[scores={armour=15}] magic_def 1
scoreboard players set @a[scores={armour=16}] magic_def 1
scoreboard players set @a[scores={armour=17}] magic_def 1
scoreboard players set @a[scores={armour=18}] magic_def 0
scoreboard players set @a[scores={armour=19}] magic_def 0

# set physical defense

scoreboard players set @a[scores={armour=..0}] phys_def 0
scoreboard players set @a[scores={armour=1}] phys_def 1
scoreboard players set @a[scores={armour=2}] phys_def 1
scoreboard players set @a[scores={armour=3}] phys_def 3
scoreboard players set @a[scores={armour=4}] phys_def 2
scoreboard players set @a[scores={armour=5}] phys_def 1
scoreboard players set @a[scores={armour=6}] phys_def 1
scoreboard players set @a[scores={armour=7}] phys_def 1
scoreboard players set @a[scores={armour=8}] phys_def 1
scoreboard players set @a[scores={armour=9}] phys_def 2
scoreboard players set @a[scores={armour=10}] phys_def 3
scoreboard players set @a[scores={armour=11}] phys_def 4
scoreboard players set @a[scores={armour=12}] phys_def 2
scoreboard players set @a[scores={armour=13}] phys_def 2
scoreboard players set @a[scores={armour=14}] phys_def 1
scoreboard players set @a[scores={armour=15}] phys_def 3
scoreboard players set @a[scores={armour=16}] phys_def 1
scoreboard players set @a[scores={armour=17}] phys_def 2
scoreboard players set @a[scores={armour=18}] phys_def 1
scoreboard players set @a[scores={armour=19}] phys_def 1





tag @a[tag=!movement_speed_0,tag=!movement_speed_1,tag=!movement_speed_2,tag=!movement_speed_4] add movement_speed_3




###### MOVEMENT SPEED

effect give @a[tag=movement_speed_0] slowness 1 2 true
effect give @a[tag=movement_speed_1] slowness 1 1 true
effect give @a[tag=movement_speed_2] slowness 1 0 true
effect give @a[tag=movement_speed_4] speed 1 0 true




###### ARMOUR PHYSICAL DEFENSE

execute as @a[scores={phys_def=0}] run attribute @s minecraft:generic.armor base set 0
execute as @a[scores={phys_def=1}] run attribute @s minecraft:generic.armor base set 6
execute as @a[scores={phys_def=2}] run attribute @s minecraft:generic.armor base set 12
execute as @a[scores={phys_def=3}] run attribute @s minecraft:generic.armor base set 18
execute as @a[scores={phys_def=4}] run attribute @s minecraft:generic.armor base set 24

execute as @a[scores={phys_def=0}] run attribute @s minecraft:generic.armor_toughness base set 0
execute as @a[scores={phys_def=1}] run attribute @s minecraft:generic.armor_toughness base set 3
execute as @a[scores={phys_def=2}] run attribute @s minecraft:generic.armor_toughness base set 5
execute as @a[scores={phys_def=3}] run attribute @s minecraft:generic.armor_toughness base set 8
execute as @a[scores={phys_def=4}] run attribute @s minecraft:generic.armor_toughness base set 10




###### MAGIC DAMAGE DEALING

execute as @a[scores={deal_magic_dmg=1.. , magic_def=1}] run scoreboard players operation @s deal_magic_dmg /= 2 num
execute as @a[scores={deal_magic_dmg=1.. , magic_def=2}] run scoreboard players operation @s deal_magic_dmg /= 3 num
execute as @a[scores={deal_magic_dmg=1.. , magic_def=3}] run scoreboard players operation @s deal_magic_dmg /= 4 num

execute as @a[scores={deal_magic_dmg=1..}] run scoreboard players operation @s deal_dmg = @s deal_magic_dmg

scoreboard players set @a deal_magic_dmg 0


############## ARMOUR CUSTOM PARTICLES

##armour 4
execute at @a[scores={armour=4}] run particle dust 0.3 0.7 1 0.75 ~ ~ ~ 0.3 0.1 0.3 0 3 normal

##armour 5
execute at @a[scores={armour=5}] run particle dust 0.3 0 0.35 0.75 ~ ~ ~ 0.3 0.1 0.3 0 3 normal

##armour 7
execute at @a[scores={armour=7}] run particle dust 0.3 0.7 1 0.75 ~ ~ ~ 0.3 0.1 0.3 0 3 normal

##armour 12
execute at @a[scores={armour=12}] run particle dust 1 0.7 0 0.75 ~ ~ ~ 0.3 0.1 0.3 0 3 normal

##armour 13
execute at @a[scores={armour=13}] run particle dust 0.5 0 0.5 0.75 ~ ~ ~ 0.3 0.1 0.3 0 3 normal

##armour 15
execute at @a[scores={armour=15}] run particle dust .35 0 0 0.75 ~ ~ ~ 0.3 0.1 0.3 0 3 normal

##armour 16
execute at @a[scores={armour=16..17}] run particle dust 1 1 1 0.75 ~ ~ ~ 0.3 0.1 0.3 0 3 normal
execute as @a[scores={armour=16..17}] at @s anchored eyes run particle dust 1 1 1 0.75 ^-0.4 ^ ^-0.3 0.1 0.1 0.1 0 1 normal
execute as @a[scores={armour=16..17}] at @s anchored eyes run particle dust 1 1 1 0.75 ^0.4 ^ ^-0.3 0.1 0.1 0.1 0 1 normal
execute as @a[scores={armour=16..17}] at @s anchored eyes run particle dust 1 1 1 0.75 ^-0.6 ^0.2 ^-0.3 0.1 0.1 0.1 0 1 normal
execute as @a[scores={armour=16..17}] at @s anchored eyes run particle dust 1 1 1 0.75 ^0.6 ^0.2 ^-0.3 0.1 0.1 0.1 0 1 normal
execute as @a[scores={armour=16..17}] at @s anchored eyes run particle dust 1 1 1 0.75 ^-0.8 ^0.3 ^-0.4 0.1 0.1 0.1 0 1 normal
execute as @a[scores={armour=16..17}] at @s anchored eyes run particle dust 1 1 1 0.75 ^0.8 ^0.3 ^-0.4 0.1 0.1 0.1 0 1 normal






############### SPECIAL ABILITIES ARMOURS

############## MISSING ABILITIES: ABYSSWALKER WALK, NECORMANCER DEAD RISE, TURTLE ARMOUR AND SACRIFICE ARMOUR

## armour 1

scoreboard players add @a[scores={armour=1 , is_sneaking=1..}] slime_tick 1
scoreboard players remove @a[scores={armour=1 , is_sneaking=..0}] slime_tick 1

scoreboard players set @a[scores={armour=1, slime_tick=..0}] slime_tick 0
scoreboard players set @a[scores={armour=1, slime_tick=40..}] slime_tick 40


execute as @a[scores={armour=1 , slime_tick=1..}] at @s run playsound minecraft:entity.slime.squish ambient @a[distance=..2] ~ ~ ~ 0.1 0.5
execute as @a[scores={armour=1 , slime_tick=1..}] at @s run particle minecraft:item_slime ~ ~ ~ 0.1 0 0.1 0 2 normal

execute as @a[scores={armour=1 , slime_tick=1}] at @s run playsound minecraft:block.note_block.pling ambient @a[distance=..2] ~ ~ ~ 0.2 1
execute as @a[scores={armour=1 , slime_tick=10}] at @s run playsound minecraft:block.note_block.pling ambient @a[distance=..2] ~ ~ ~ 0.2 1.25
execute as @a[scores={armour=1 , slime_tick=20}] at @s run playsound minecraft:block.note_block.pling ambient @a[distance=..2] ~ ~ ~ 0.2 1.5
execute as @a[scores={armour=1 , slime_tick=30}] at @s run playsound minecraft:block.note_block.pling ambient @a[distance=..2] ~ ~ ~ 0.2 1.75
execute as @a[scores={armour=1 , slime_tick=39}] at @s run playsound minecraft:block.note_block.pling ambient @a[distance=..2] ~ ~ ~ 0.2 2


effect give @a[scores={armour=1, slime_tick=0..10}] jump_boost 1 0 true
effect give @a[scores={armour=1, slime_tick=1..20}] jump_boost 1 1 true
effect give @a[scores={armour=1, slime_tick=21..30}] jump_boost 1 2 true
effect give @a[scores={armour=1, slime_tick=31..39}] jump_boost 1 3 true
effect give @a[scores={armour=1, slime_tick=40..}] jump_boost 2 4 true


scoreboard players set @a[scores={armour=1, slime_tick=1.., is_jumping=1..}] slime_tick 0



## armour 2

scoreboard players set @a[scores={armour=2, biomech_tick=..0}] biomech_tick 0
scoreboard players add @a[scores={armour=2 , is_running=1..}] biomech_tick 1
scoreboard players remove @a[scores={armour=2 , is_running=..0}] biomech_tick 2

execute as @a[scores={armour=2 , biomech_tick=10..}] at @s run particle smoke ~ ~ ~ 0.2 0.1 0.2 0.01 3 normal
execute as @a[scores={armour=2 , biomech_tick=60..}] at @s run particle poof ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
execute as @a[scores={armour=2 , biomech_tick=120..}] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 1 normal


effect give @a[scores={armour=2 , biomech_tick=10..59}] speed 1 1 true
effect give @a[scores={armour=2 , biomech_tick=60..119}] speed 1 2 true
effect give @a[scores={armour=2 , biomech_tick=120..}] speed 1 3 true

scoreboard players set @a[scores={armour=2, biomech_tick=120..}] biomech_tick 120


## armour 3

scoreboard players set @a[scores={armour=3, clockwork_tick=..0}] clockwork_tick 0
scoreboard players add @a[scores={armour=3 , is_running=1..}] clockwork_tick 1
scoreboard players remove @a[scores={armour=3 , is_running=..0}] clockwork_tick 2

execute as @a[scores={armour=3 , clockwork_tick=10..}] at @s run particle smoke ~ ~ ~ 0.2 0.1 0.2 0.01 3 normal
execute as @a[scores={armour=3 , clockwork_tick=60..}] at @s run particle poof ~ ~ ~ 0.1 0.1 0.1 0.1 1 normal
execute as @a[scores={armour=3 , clockwork_tick=120..}] at @s run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 1 normal


effect give @a[scores={armour=3 , clockwork_tick=10..59}] speed 1 1 true
effect give @a[scores={armour=3 , clockwork_tick=60..119}] speed 1 2 true
effect give @a[scores={armour=3 , clockwork_tick=120..}] speed 1 3 true

scoreboard players set @a[scores={armour=3, clockwork_tick=120..}] clockwork_tick 120


## armour 4
scoreboard players add @a[scores={armour=4}] mana_tick 3

## armour 5
scoreboard players add @a[scores={armour=5}] mana_tick 1
scoreboard players remove @a[scores={armour=5}] poison_time 1
effect clear @a[scores={armour=5, poison_time=100}] wither 

execute at @a[scores={armour=5},team=red] run scoreboard players set @a[distance=..8,team=blue] undead_spawn 100
execute at @a[scores={armour=5},team=blue] run scoreboard players set @a[distance=..8,team=red] undead_spawn 100
execute at @a[scores={armour=5},team=player] run scoreboard players set @a[distance=2..8] undead_spawn 100







## armour 7
scoreboard players add @a[scores={armour=7}] mana_tick 4

## armour 12
scoreboard players remove @a[scores={armour=12}] stun_time 1

## armour 14
scoreboard players set @a[scores={armour=0}] spy_tick 0
scoreboard players set @a[scores={armour=14, is_hurt=1..}] spy_tick 100
scoreboard players remove @a[scores={spy_tick=1..}] spy_tick 1
tag @a[scores={armour=14, is_sneaking=1.., spy_tick=..0}] add cloaked

## armour 15
scoreboard players set @a[scores={armour=15, is_hurt=1..}] defender_time 300
scoreboard players set @a[scores={defender_time=1..}] defender_regen 0
scoreboard players remove @a[scores={armour=15}] defender_time 1
scoreboard players set @a[scores={defender_time=..0}] defender_time 0
scoreboard players add @a[scores={armour=15, defender_time=..0}] defender_regen 1
effect give @a[scores={defender_regen=30..}] regeneration 2 1 true
scoreboard players set @a[scores={defender_regen=30..}] defender_regen 0

## armour 16
effect give @a[scores={armour=16}] slow_falling 1 0 true

## armour 17
effect give @a[scores={armour=17}] slow_falling 1 0 true

##armour 18
effect give @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] resistance 1 3 true
effect give @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] slowness 1 3 true

execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~1 ~1 ~1 0 0.5 0 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~-1 ~1 ~1 0 0.5 0 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~1 ~1 ~-1 0 0.5 0 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~-1 ~1 ~-1 0 0.5 0 0 2 normal

execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~1 ~ ~ 0 0 0.7 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~1 ~2 ~ 0 0 0.7 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~-1 ~ ~ 0 0 0.7 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~-1 ~2 ~ 0 0 0.7 0 2 normal

execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~ ~ ~1 0.7 0 0 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~ ~2 ~1 0.7 0 0 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~ ~ ~-1 0.7 0 0 0 2 normal
execute at @a[scores={armour=18 , is_sneaking=1.. , mana=1..}] run particle dust 0.5 0.5 0.5 1 ~ ~2 ~-1 0.7 0 0 0 2 normal


scoreboard players add @a[scores={armour=18 , is_sneaking=1..}] defense_mode 1
scoreboard players remove @a[scores={defense_mode=2..}] mana 1
scoreboard players set @a[scores={defense_mode=2..}] defense_mode 0


##armour 19
execute as @a[scores={armour=19}] at @s if score @s health matches ..10 anchored eyes run effect give @s strength 1 0 true
execute as @a[scores={armour=19}] at @s if score @s health matches ..10 anchored eyes run effect give @s speed 1 0 true















############### ARMOURS COSMETIC


item replace entity @a[scores={armour=1 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#960000"}'},HideFlags:127,Unbreakable:1b,kill:1b,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1405363844,-1974647805,-1608404970,203600820]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1088828631,660229640,-1185871250,-692078193]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1009069225,524502659,-1107849367,-231803572]}],SkullOwner:{Id:[I;-1110773346,-1020769826,-1616250556,2105592263],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODJkYzRiY2I5NzY3ZDNmMTMzNjI5OWFiMjQ2OTBiMzRhNGM2ZTVhNDI3ZWM1YzM4MWQ2YzU5ODk4YTVlZjEifX19"}]}}} 1

item replace entity @a[scores={armour=1 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:768},HideFlags:127,Unbreakable:1b,kill:1b,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1783558818,977423066,-1402671678,1844290359]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1599479757,-974829125,-1280528742,-1385332575]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1616962973,1370638418,-1687791132,2007392679]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;230707550,1084507194,-1103253529,369941589]}]} 1

item replace entity @a[scores={armour=1 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:768},HideFlags:127,Unbreakable:1b,kill:1b,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1783558818,977423066,-1402671678,1844290359]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1599479757,-974829125,-1280528742,-1385332575]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1616962973,1370638418,-1687791132,2007392679]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;230707550,1084507194,-1103253529,369941589]}]} 1

item replace entity @a[scores={armour=1 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:768},HideFlags:127,Unbreakable:1b,kill:1b,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1783558818,977423066,-1402671678,1844290359]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1599479757,-974829125,-1280528742,-1385332575]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1616962973,1370638418,-1687791132,2007392679]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;230707550,1084507194,-1103253529,369941589]}]} 1












item replace entity @a[scores={armour=2 , cloak_time=..0}] armor.head with observer{kill:1b}

item replace entity @a[scores={armour=2 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:8490886},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;746384826,1159678938,-2077297475,87091920]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1272274669,1264992856,-1732222434,-1403080224]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-2072388336,-613136335,-1885381254,-140855795]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;695357276,-729658028,-1444282560,208691140]}]} 1

item replace entity @a[scores={armour=2 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:8490886},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;746384826,1159678938,-2077297475,87091920]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1272274669,1264992856,-1732222434,-1403080224]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-2072388336,-613136335,-1885381254,-140855795]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;695357276,-729658028,-1444282560,208691140]}]} 1

item replace entity @a[scores={armour=2 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:8490886},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;746384826,1159678938,-2077297475,87091920]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1272274669,1264992856,-1732222434,-1403080224]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-2072388336,-613136335,-1885381254,-140855795]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;695357276,-729658028,-1444282560,208691140]}]} 1















item replace entity @a[scores={armour=3 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-1068105783,1192971976,-1627142992,-190737827],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODk2OWZmMTdkOWZjMzQ5ZDRhMzA1YjA2NTYzNjAyOGRiOTAwZTAzMjIzMjdkMmM0N2Q2ZjYyNjJmMmIwZDBmMSJ9fX0="}]}}} 1

item replace entity @a[scores={armour=3 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:6180674},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1984246437,-696893091,-1336285004,222654622]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-413757777,-929545190,-2088291089,-63632679]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1316999706,1958824808,-1927905878,-1955087948]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1450071858,-1128378469,-1440235268,-1784721111]}]} 1

item replace entity @a[scores={armour=3 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:6180674},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1984246437,-696893091,-1336285004,222654622]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-413757777,-929545190,-2088291089,-63632679]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1316999706,1958824808,-1927905878,-1955087948]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1450071858,-1128378469,-1440235268,-1784721111]}]} 1

item replace entity @a[scores={armour=3 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:6180674},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1984246437,-696893091,-1336285004,222654622]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-413757777,-929545190,-2088291089,-63632679]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1316999706,1958824808,-1927905878,-1955087948]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1450071858,-1128378469,-1440235268,-1784721111]}]} 1








item replace entity @a[scores={armour=4 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-142995363,-1677900920,-1702195651,-1324779803],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDkzNmJiMWNjNGFiNmVjY2U2NWI2NDI5ODM5NGZhZmM1ZmUzZjc4NzZkN2M5NDFkMDVhOTI5NGZhMzkyYjdjIn19fQ=="}]}}} 1
item replace entity @a[scores={armour=4 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3552822},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;25597081,807029951,-1124494466,-1405002519]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;496873318,1412974668,-1317223983,-1077860653]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;668314245,1587432803,-1265652781,-1569571495]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1111041406,-1012185023,-1466247644,1459422976]}]} 1
item replace entity @a[scores={armour=4 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3552822},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;25597081,807029951,-1124494466,-1405002519]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;496873318,1412974668,-1317223983,-1077860653]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;668314245,1587432803,-1265652781,-1569571495]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1111041406,-1012185023,-1466247644,1459422976]}]} 1
item replace entity @a[scores={armour=4 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3552822},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;25597081,807029951,-1124494466,-1405002519]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;496873318,1412974668,-1317223983,-1077860653]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;668314245,1587432803,-1265652781,-1569571495]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1111041406,-1012185023,-1466247644,1459422976]}]} 1









item replace entity @a[scores={armour=5 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;1713789267,923225836,-1337929388,1697029643],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTk1NDgwODkwZDU3OTg0YWQwZjk5YmQzZTM2NzUwYzg1ZTZhZDFmNWMzZGQ0NTFmNTQ4YmNhZDVmNDY3YmMxMCJ9fX0="}]}}} 1
item replace entity @a[scores={armour=5 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:2821189},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1707220178,-837532212,-1909379700,-251811208]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2116730284,-1123924080,-1862905236,-436029933]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;254839069,814236554,-1792825024,277889152]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1017538098,-693744388,-1651031940,-469836509]}]} 1
item replace entity @a[scores={armour=5 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:2821189},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1707220178,-837532212,-1909379700,-251811208]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2116730284,-1123924080,-1862905236,-436029933]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;254839069,814236554,-1792825024,277889152]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1017538098,-693744388,-1651031940,-469836509]}]} 1
item replace entity @a[scores={armour=5 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:2821189},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1707220178,-837532212,-1909379700,-251811208]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2116730284,-1123924080,-1862905236,-436029933]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;254839069,814236554,-1792825024,277889152]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1017538098,-693744388,-1651031940,-469836509]}]} 1









item replace entity @a[scores={armour=6 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-895777264,-406632214,-1501580592,816101391],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzRiYjg0ZTU2YzgzYThjZGE4YTE2MDkyOThmMDg2ZGU2ZTczY2I3NTE3YzVhMzQxNGVlN2M3ZDUwN2I4MzU3MSJ9fX0="}]}}} 1
item replace entity @a[scores={armour=6 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:1644825},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1334158254,295061839,-1322167407,-414963411]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1961406810,1424051166,-1339986113,-113995729]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-184909518,491998562,-1477519987,1700565902]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1513444746,150356858,-1765753224,1474856589]}]} 1
item replace entity @a[scores={armour=6 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:1644825},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1334158254,295061839,-1322167407,-414963411]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1961406810,1424051166,-1339986113,-113995729]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-184909518,491998562,-1477519987,1700565902]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1513444746,150356858,-1765753224,1474856589]}]} 1
item replace entity @a[scores={armour=6 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:1644825},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1334158254,295061839,-1322167407,-414963411]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1961406810,1424051166,-1339986113,-113995729]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-184909518,491998562,-1477519987,1700565902]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;1513444746,150356858,-1765753224,1474856589]}]} 1







item replace entity @a[scores={armour=7 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-238284530,1919240605,-1361580584,1798622527],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTE0YTZhZmEzNmM5N2M1MzE5ZWFmNTVkZTI0Y2JlN2UwNjc5ZjUwZTJhMTNkY2ZmOWUzZGE0MDg0Mzk3YTBjNiJ9fX0="}]}}} 1
item replace entity @a[scores={armour=7 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:120},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;626443061,1905147935,-1400618179,2116865052]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;137430266,-605469341,-1816300258,-1183571939]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-505055781,1406749972,-1870761772,473315398]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-801355003,369116108,-1905245927,-1044644753]}]} 1
item replace entity @a[scores={armour=7 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:120},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;626443061,1905147935,-1400618179,2116865052]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;137430266,-605469341,-1816300258,-1183571939]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-505055781,1406749972,-1870761772,473315398]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-801355003,369116108,-1905245927,-1044644753]}]} 1
item replace entity @a[scores={armour=7 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:120},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;626443061,1905147935,-1400618179,2116865052]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;137430266,-605469341,-1816300258,-1183571939]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-505055781,1406749972,-1870761772,473315398]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-801355003,369116108,-1905245927,-1044644753]}]} 1





item replace entity @a[scores={armour=8 , cloak_time=..0}] armor.head with air
item replace entity @a[scores={armour=8 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3546624},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;798461016,-933804678,-2042652414,-1354712272]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;469315349,989873682,-1514176650,851057148]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-882660382,1904362887,-1101919892,1990785413]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-246414615,160841973,-1555757333,-1575699127]}]} 1
item replace entity @a[scores={armour=8 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3546624},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;798461016,-933804678,-2042652414,-1354712272]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;469315349,989873682,-1514176650,851057148]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-882660382,1904362887,-1101919892,1990785413]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-246414615,160841973,-1555757333,-1575699127]}]} 1
item replace entity @a[scores={armour=8 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3546624},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;798461016,-933804678,-2042652414,-1354712272]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;469315349,989873682,-1514176650,851057148]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-882660382,1904362887,-1101919892,1990785413]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-246414615,160841973,-1555757333,-1575699127]}]} 1








item replace entity @a[scores={armour=9 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;864431335,1436894342,-1274960042,1899380984],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGFmZjNmZmYzYWQ1ZDEwODA4Mzc5YWUyMDFiODMyYmZlZThhYzIyNjVmYmJlNjg0MTdkMTBmYjVmNThiMmQ4NSJ9fX0="}]}}} 1
item replace entity @a[scores={armour=9 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:9079434},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;474537484,-1395438309,-1805973972,-670703717]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;954455964,2047625631,-2134086525,-1834880034]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1017995958,412436283,-1860413120,-175946251]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-10961672,-443724140,-1623667609,2015571561]}]} 1
item replace entity @a[scores={armour=9 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:9079434},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;474537484,-1395438309,-1805973972,-670703717]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;954455964,2047625631,-2134086525,-1834880034]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1017995958,412436283,-1860413120,-175946251]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-10961672,-443724140,-1623667609,2015571561]}]} 1
item replace entity @a[scores={armour=9 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:9079434},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;474537484,-1395438309,-1805973972,-670703717]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;954455964,2047625631,-2134086525,-1834880034]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1017995958,412436283,-1860413120,-175946251]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-10961672,-443724140,-1623667609,2015571561]}]} 1









item replace entity @a[scores={armour=10 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-1255775168,-1694874633,-1477935636,1339990740],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTkwMTA2MzE4NGM5ZWZjZTJkY2FhYTllODRjYTJhYzRlZGRlMjIyNjlmZWIyODcwYzA4NWMxNzg1M2Y2Y2UzYyJ9fX0="}]}}} 1
item replace entity @a[scores={armour=10 , cloak_time=..0}] armor.chest with iron_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1
item replace entity @a[scores={armour=10 , cloak_time=..0}] armor.legs with iron_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1
item replace entity @a[scores={armour=10 , cloak_time=..0}] armor.feet with iron_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1









item replace entity @a[scores={armour=11 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;1491465876,-1452981111,-1518795344,1646727253],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzFiMzYxM2RmNTBlZmY2MGIxNjM0MDU3YzJlZjc2MWQzNTlkMmEwYTJhODEyMDM4NTczYTMyNjc3NmUwYzMxYSJ9fX0="}]}}} 1
item replace entity @a[scores={armour=11 , cloak_time=..0}] armor.chest with netherite_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1
item replace entity @a[scores={armour=11 , cloak_time=..0}] armor.legs with netherite_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1
item replace entity @a[scores={armour=11 , cloak_time=..0}] armor.feet with netherite_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1








item replace entity @a[scores={armour=12 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-513320816,-1826795737,-1765215074,-26544695],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDJjZDg0NzUzMGY4MzBjZjA1M2EyOWVlNTE5ODAzZDA0OTZjMjY2ZGYyMjlhYjVmYjNlOGVhM2MwMmIzNzM0YyJ9fX0="}]}}} 1
item replace entity @a[scores={armour=12 , cloak_time=..0}] armor.chest with golden_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1
item replace entity @a[scores={armour=12 , cloak_time=..0}] armor.legs with golden_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1
item replace entity @a[scores={armour=12 , cloak_time=..0}] armor.feet with golden_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1420171809,1362709778,-1824764997,-743828534]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1470844235,-470005739,-1586311054,1505228107]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1251079133,-336771681,-1230675410,-2137092544]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1528836186,-210744250,-1421718136,-1779611568]}]} 1










item replace entity @a[scores={armour=13 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-1682483474,1548635171,-1358168049,-934572892],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2Y3YzNkM2E3ODg1MTlhZjQ3ODQyZDZhODM2ZWFlYTA4ZGY4MDlhZjhmNzAwNDE0ZjNmNGRjZjQ1ODI0NTM0YiJ9fX0="}]}}} 1
item replace entity @a[scores={armour=13 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:0},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1660200183,331827881,-2016059077,-999193145]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1030535342,-1703263003,-1180952816,2091127037]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1023894476,1202670829,-1518658491,1884066671]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1504647210,560416326,-1622700279,-144270547]}]} 1
item replace entity @a[scores={armour=13 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:0},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1660200183,331827881,-2016059077,-999193145]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1030535342,-1703263003,-1180952816,2091127037]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1023894476,1202670829,-1518658491,1884066671]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1504647210,560416326,-1622700279,-144270547]}]} 1
item replace entity @a[scores={armour=13 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:0},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1660200183,331827881,-2016059077,-999193145]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1030535342,-1703263003,-1180952816,2091127037]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1023894476,1202670829,-1518658491,1884066671]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1504647210,560416326,-1622700279,-144270547]}]} 1










item replace entity @a[scores={armour=14 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;618777352,1069631542,-1936139412,1506659229],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWY2Y2Q5YzRhNWRhYzRhYTcyN2YxNzdiMTRiMDQyMDFhODJhNGNjOGE0MTE0ZmIwY2U4MDY1MmI5YTM3YThmIn19fQ=="}]}}} 1
item replace entity @a[scores={armour=14 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:0},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1660200183,331827881,-2016059077,-999193145]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1030535342,-1703263003,-1180952816,2091127037]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1023894476,1202670829,-1518658491,1884066671]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1504647210,560416326,-1622700279,-144270547]}]} 1
item replace entity @a[scores={armour=14 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:0},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1660200183,331827881,-2016059077,-999193145]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1030535342,-1703263003,-1180952816,2091127037]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1023894476,1202670829,-1518658491,1884066671]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1504647210,560416326,-1622700279,-144270547]}]} 1
item replace entity @a[scores={armour=14 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:0},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;1660200183,331827881,-2016059077,-999193145]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1030535342,-1703263003,-1180952816,2091127037]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1023894476,1202670829,-1518658491,1884066671]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1504647210,560416326,-1622700279,-144270547]}]} 1












item replace entity @a[scores={armour=15 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;794602635,620907965,-1833209122,-1680103592],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzQ2OWExNDBlOWEyODg3YzU3NTUwODZjMDFhY2ViNGJlZTk2M2IwMTZhZDBjMTUxZmNhMzUyYzRjZmZjNTU1OCJ9fX0="}]}}} 1
item replace entity @a[scores={armour=15 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:6684672},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1246041407,1480083621,-1452562079,-1486899719]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;622111014,-1790751653,-1302782076,252167326]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-949682069,839272462,-2087563303,-586398426]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-901248788,-1233303569,-1439333908,-990056441]}]} 1
item replace entity @a[scores={armour=15 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:6684672},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1246041407,1480083621,-1452562079,-1486899719]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;622111014,-1790751653,-1302782076,252167326]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-949682069,839272462,-2087563303,-586398426]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-901248788,-1233303569,-1439333908,-990056441]}]} 1
item replace entity @a[scores={armour=15 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:6684672},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1246041407,1480083621,-1452562079,-1486899719]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;622111014,-1790751653,-1302782076,252167326]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-949682069,839272462,-2087563303,-586398426]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-901248788,-1233303569,-1439333908,-990056441]}]} 1










item replace entity @a[scores={armour=16 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-1111175380,732580825,-1808411875,463423053],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMThmYTg3MTU4NmU1YmY2MzY2ZmRhZmFiMTExMWU0Mjk2YzZlNmNmYmQ1MWViY2E1ODFjYTVmZTZkNTNiYTIxMiJ9fX0="}]}}} 1
item replace entity @a[scores={armour=16 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:16633855},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-248937401,-309835527,-1873460282,-1318505586]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-2049527336,135548240,-1542236260,-1419313]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1824282163,-479574255,-1130735560,1810110202]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-668192904,1359891147,-1396333596,-1645451242]}]} 1
item replace entity @a[scores={armour=16 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:16633855},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-248937401,-309835527,-1873460282,-1318505586]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-2049527336,135548240,-1542236260,-1419313]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1824282163,-479574255,-1130735560,1810110202]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-668192904,1359891147,-1396333596,-1645451242]}]} 1
item replace entity @a[scores={armour=16 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:16633855},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-248937401,-309835527,-1873460282,-1318505586]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-2049527336,135548240,-1542236260,-1419313]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1824282163,-479574255,-1130735560,1810110202]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-668192904,1359891147,-1396333596,-1645451242]}]} 1












item replace entity @a[scores={armour=17 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-1105689204,-1035056490,-1751327369,1994120051],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDBmMWU4MDVlMjljYjliMzI2ZDg0NGI3N2U2ZjA0ZGVhZDc1ZTljNTg1YzJjZmQ0YjRkZGMxZmVlYmVhMTIwMyJ9fX0="}]}}} 1
item replace entity @a[scores={armour=17 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:16777159},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1980061529,340610603,-1763315955,-377724366]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1686066094,-1819195446,-1144217239,-1437815999]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1764079636,1766080802,-2109165841,398284629]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-549352035,-963231270,-1327857503,-1406212547]}]} 1
item replace entity @a[scores={armour=17 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:16777159},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1980061529,340610603,-1763315955,-377724366]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1686066094,-1819195446,-1144217239,-1437815999]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1764079636,1766080802,-2109165841,398284629]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-549352035,-963231270,-1327857503,-1406212547]}]} 1
item replace entity @a[scores={armour=17 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:16777159},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;-1980061529,340610603,-1763315955,-377724366]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;1686066094,-1819195446,-1144217239,-1437815999]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1764079636,1766080802,-2109165841,398284629]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-549352035,-963231270,-1327857503,-1406212547]}]} 1









item replace entity @a[scores={armour=18 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-334512259,-327794633,-1402515570,1511050475],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlkZjdmMTU2ZDEyZjZlYjQ4NDNlY2NiM2U0OTkxMDk1NzQwZmI4NDBiZTc4OTRkZDhlZWY1OTFkMTEyNTdkZSJ9fX0="}]}}} 1
item replace entity @a[scores={armour=18 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3289408},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;363796516,-1289401388,-1999660379,545178907]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1969203418,428427813,-1783034657,959678197]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1681122773,-421900393,-2055266735,1186186727]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1902212663,1850820654,-1417786791,-1160241075]}]} 1
item replace entity @a[scores={armour=18 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3289408},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;363796516,-1289401388,-1999660379,545178907]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1969203418,428427813,-1783034657,959678197]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1681122773,-421900393,-2055266735,1186186727]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1902212663,1850820654,-1417786791,-1160241075]}]} 1
item replace entity @a[scores={armour=18 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:3289408},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;363796516,-1289401388,-1999660379,545178907]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1969203418,428427813,-1783034657,959678197]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;-1681122773,-421900393,-2055266735,1186186727]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-1902212663,1850820654,-1417786791,-1160241075]}]} 1











item replace entity @a[scores={armour=19 , cloak_time=..0}] armor.head with player_head{display:{Name:'{"text":"Armour","color":"#7D0000"}'},HideFlags:127,Unbreakable:1b,kill:1b,SkullOwner:{Id:[I;-1219999952,14501759,-1226004903,-1657336337],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTA2YzE2ODE3YzczZmY2NGE0YTQ5YjU5MGQyY2RiMjViY2ZhNTJjNjMwZmU3MjgxYTE3N2VhYmFjZGFhODU3YiJ9fX0="}]}}} 1
item replace entity @a[scores={armour=19 , cloak_time=..0}] armor.chest with leather_chestplate{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:4011573},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;265983693,375342564,-1155214282,1636840743]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2081114150,652889406,-1322163198,2119813472]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1703684461,-1882046411,-1935011877,167351801]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-668573369,-1340193136,-1820558030,1423685164]}]} 1
item replace entity @a[scores={armour=19 , cloak_time=..0}] armor.legs with leather_leggings{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:4011573},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;265983693,375342564,-1155214282,1636840743]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2081114150,652889406,-1322163198,2119813472]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1703684461,-1882046411,-1935011877,167351801]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-668573369,-1340193136,-1820558030,1423685164]}]} 1
item replace entity @a[scores={armour=19 , cloak_time=..0}] armor.feet with leather_boots{display:{Name:'{"text":"Armour","color":"#7D0000"}',color:4011573},HideFlags:127,Unbreakable:1b,kill:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0,Operation:0,UUID:[I;265983693,375342564,-1155214282,1636840743]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;2081114150,652889406,-1322163198,2119813472]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:0,Operation:0,UUID:[I;1703684461,-1882046411,-1935011877,167351801]},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:0,UUID:[I;-668573369,-1340193136,-1820558030,1423685164]}]} 1



























