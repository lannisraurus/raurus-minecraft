effect give @a[tag=druid] luck 1 2 true
execute as @a[tag=druid] at @s if block ~ ~ ~ minecraft:tall_grass run effect give @s minecraft:invisibility 1 1 true
tag @a[tag=druid] add knows_bottany

#################### BOTTANY SKILL

execute as @a[tag=knows_bottany,scores={is_sneaking=1..}] at @s if block ~ ~0.1 ~ #minecraft:crops unless block ~ ~0.1 ~ #minecraft:crops[age=7] run summon interaction ~ ~ ~ {width:0.5f,height:1.1f,Tags:["grow_crop","bottany_interaction"]}

execute as @a[tag=knows_bottany,scores={is_sneaking=1..}] at @s if block ~ ~0.1 ~ cornflower run summon interaction ~ ~ ~ {width:0.5f,height:1.1f,Tags:["enchant_flower","bottany_interaction"]}
execute as @a[tag=knows_bottany,scores={is_sneaking=1..}] at @s if block ~ ~0.1 ~ blue_orchid run summon interaction ~ ~ ~ {width:0.5f,height:1.1f,Tags:["enchant_flower","bottany_interaction"]}
execute as @a[tag=knows_bottany,scores={is_sneaking=1..}] at @s if block ~ ~0.1 ~ allium run summon interaction ~ ~ ~ {width:0.5f,height:1.1f,Tags:["enchant_flower","bottany_interaction"]}

execute as @a[tag=knows_bottany,scores={is_sneaking=1..}] at @s if block ~ ~0.1 ~ brown_mushroom run summon interaction ~ ~ ~ {width:0.5f,height:1.1f,Tags:["enchant_shroom","bottany_interaction"]}
execute as @a[tag=knows_bottany,scores={is_sneaking=1..}] at @s if block ~ ~0.1 ~ red_mushroom run summon interaction ~ ~ ~ {width:0.5f,height:1.1f,Tags:["curse_shroom","bottany_interaction"]}

execute as @a[tag=knows_bottany,scores={is_sneaking=1..}] at @s if block ~ ~0.1 ~ #minecraft:saplings run summon interaction ~ ~ ~ {width:0.5f,height:1.1f,Tags:["sap_life","bottany_interaction"]}





execute at @e[tag=grow_crop] run particle happy_villager ~ ~-0.1 ~ 0.2 0 0.2 10 1 force
execute at @e[tag=enchant_flower] run particle soul_fire_flame ~ ~-0.03 ~ 0.2 0 0.2 0 1 force





# grow crop
execute as @e[tag=grow_crop] at @s on target run effect give @s[scores={mana=50..}] slowness 1 0 true
execute as @e[tag=grow_crop] at @s on target if entity @s[scores={mana=50..}] run playsound minecraft:block.enchantment_table.use ambient @a[distance=..4] ~ ~ ~ 1 2
execute as @e[tag=grow_crop] at @s on target if entity @s[scores={mana=50..}] run particle flash ~ ~1 ~ 0 0 0 0 3 force
execute as @e[tag=grow_crop] on target at @s if entity @s[scores={mana=50..}] if block ~ ~0.1 ~ wheat run setblock ~ ~0.1 ~ wheat[age=7]
execute as @e[tag=grow_crop] on target at @s if entity @s[scores={mana=50..}] if block ~ ~0.1 ~ potatoes run setblock ~ ~0.1 ~ potatoes[age=7]
execute as @e[tag=grow_crop] on target at @s if entity @s[scores={mana=50..}] if block ~ ~0.1 ~ carrots run setblock ~ ~0.1 ~ carrots[age=7]
execute as @e[tag=grow_crop] on target at @s if entity @s[scores={mana=50..}] if block ~ ~0.1 ~ beetroots run setblock ~ ~0.1 ~ beetroots[age=3]
execute as @e[tag=grow_crop] at @s on target run scoreboard players remove @s[scores={mana=50..}] mana 50


# enchant flower
execute as @e[tag=enchant_flower] at @s on target unless entity @e[tag=enchanted_flower,distance=..1] run effect give @s[scores={blood=50..}] slowness 1 0 true
execute as @e[tag=enchant_flower] at @s on target if entity @s[scores={blood=50..}] unless entity @e[tag=enchanted_flower,distance=..1] run playsound minecraft:block.enchantment_table.use ambient @a[distance=..4] ~ ~ ~ 1 0
execute as @e[tag=enchant_flower] at @s on target if entity @s[scores={blood=50..}] unless entity @e[tag=enchanted_flower,distance=..1] run particle flash ~ ~1 ~ 0 0 0 0 3 force

execute as @e[tag=enchant_flower] at @s on target if entity @s[scores={blood=50..}] unless entity @e[tag=enchanted_flower,distance=..1] run summon marker ~ ~ ~ {Tags:["enchanted_flower"]}

execute as @e[tag=enchanted_flower] at @s if block ~ ~ ~ air run kill @s
execute at @e[tag=enchanted_flower] run particle soul_fire_flame ~ ~0.2 ~ 0.1 0.1 0.1 0.01 1 force

execute as @e[tag=enchant_flower] at @s on target unless entity @e[tag=enchanted_flower,distance=..1] run scoreboard players remove @s[scores={blood=50..}] blood 50

scoreboard players add @e[tag=enchanted_flower] time 1
execute at @e[tag=enchanted_flower,scores={time=6500..}] run particle minecraft:enchanted_hit ~ ~1.4 ~
execute at @e[tag=enchanted_flower,scores={time=6500..}] if entity @a[distance=..1,scores={is_sneaking=1..}] run summon item ~ ~ ~ {Item:{id:"minecraft:light_blue_dye",Count:1b,tag:{display:{Name:'{"text":"Magic Essence","color":"blue"}'},magic_essence:1b}}}
execute as @e[tag=enchanted_flower,scores={time=6500..}] at @s if entity @a[distance=..1,scores={is_sneaking=1..}] run scoreboard players set @s time 0





# enchant shroom
execute as @e[tag=enchant_shroom] at @s on target unless entity @e[tag=enchanted_shroom,distance=..1] run effect give @s[scores={blood=50..}] slowness 1 0 true
execute as @e[tag=enchant_shroom] at @s on target if entity @s[scores={blood=50..}] unless entity @e[tag=enchanted_shroom,distance=..1] run playsound minecraft:block.enchantment_table.use ambient @a[distance=..4] ~ ~ ~ 1 0
execute as @e[tag=enchant_shroom] at @s on target if entity @s[scores={blood=50..}] unless entity @e[tag=enchanted_shroom,distance=..1] run particle flash ~ ~1 ~ 0 0 0 0 3 force

execute as @e[tag=enchant_shroom] at @s on target if entity @s[scores={blood=50..}] unless entity @e[tag=enchanted_shroom,distance=..1] run summon marker ~ ~ ~ {Tags:["enchanted_shroom"]}

execute as @e[tag=enchanted_shroom] at @s if block ~ ~ ~ air run kill @s
execute at @e[tag=enchanted_shroom] run particle enchant ~ ~0.2 ~ 0.2 0.2 0.2 0.01 1 force

execute as @e[tag=enchant_shroom] at @s on target unless entity @e[tag=enchanted_shroom,distance=..1] run scoreboard players remove @s[scores={blood=50..}] blood 50

scoreboard players add @e[tag=enchanted_shroom] time 1
execute at @e[tag=enchanted_shroom,scores={time=12000..}] run particle minecraft:crit ~ ~1.4 ~
execute at @e[tag=enchanted_shroom,scores={time=12000..}] if entity @a[distance=..1,scores={is_sneaking=1..}] run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Poison Charm","color":"#22AB00"}',Lore:['{"text":"Right Click to throw","color":"#22FF00"}']},CustomModelData:28,poison_charm:1b,Enchantments:[{}]}}}
execute as @e[tag=enchanted_shroom,scores={time=12000..}] at @s if entity @a[distance=..1,scores={is_sneaking=1..}] run scoreboard players set @s time 0



# poison Charm

execute as @a[nbt={SelectedItem:{tag:{poison_charm:1b}}},scores={use_carrot_on_a_stick=1..}] at @s anchored eyes run summon marker ~ ~ ~ {Tags:["poison_orb"]}
execute as @a[nbt={SelectedItem:{tag:{poison_charm:1b}}},scores={use_carrot_on_a_stick=1..}] run clear @s minecraft:carrot_on_a_stick{poison_charm:1b} 1 

scoreboard players add @e[tag=poison_orb,type=marker] time 1
execute as @e[tag=poison_orb,type=marker,scores={time=1}] at @s run tp @s @a[limit=1,sort=nearest]
execute as @e[tag=poison_orb,type=marker,scores={time=1}] at @s positioned ~ ~1.4 ~ run tp @s ^ ^ ^2
execute at @e[tag=poison_orb,type=marker,scores={time=1..}] run particle minecraft:spore_blossom_air ~ ~ ~ 0.02 0.02 0.02 0.006 2 force
execute as @e[tag=poison_orb,type=marker,scores={time=1..}] at @s run tp @s ^ ^ ^1.4

execute at @e[tag=poison_orb,type=marker,scores={time=1..}] run tag @e[distance=..1.5,type=!item,tag=!poison_orb,limit=1,sort=nearest,type=!marker,type=!text_display,type=!armor_stand,type=!interaction] add poisoned
execute as @e[tag=poison_orb,type=marker,scores={time=1..}] at @s if entity @e[distance=..1.5,type=!item,tag=!poison_orb,type=!marker,type=!text_display,type=!armor_stand,type=!interaction] run kill @s

kill @e[tag=poison_orb,type=marker,scores={time=20..}]






# curse shroom
execute as @e[tag=curse_shroom] at @s on target unless entity @e[tag=cursed_shroom,distance=..1] run effect give @s[scores={blood=20..}] slowness 1 0 true
execute as @e[tag=curse_shroom] at @s on target if entity @s[scores={blood=20..}] unless entity @e[tag=cursed_shroom,distance=..1] run playsound minecraft:block.enchantment_table.use ambient @a[distance=..4] ~ ~ ~ 1 0
execute as @e[tag=curse_shroom] at @s on target if entity @s[scores={blood=20..}] unless entity @e[tag=cursed_shroom,distance=..1] run particle flash ~ ~1 ~ 0 0 0 0 3 force

execute as @e[tag=curse_shroom] at @s on target if entity @s[scores={blood=20..}] unless entity @e[tag=cursed_shroom,distance=..1] run summon marker ~ ~ ~ {Tags:["cursed_shroom"]}

execute as @e[tag=curse_shroom] at @s if block ~ ~ ~ air run kill @s
execute at @e[tag=curse_shroom] run particle minecraft:soul ~ ~-0.2 ~ 0.2 0.1 0.2 0 1 force

execute as @e[tag=curse_shroom] at @s on target unless entity @e[tag=enchanted_shroom,distance=..1] run scoreboard players remove @s[scores={blood=20..}] blood 20

execute at @e[tag=cursed_shroom] run particle minecraft:spore_blossom_air ~ ~0.2 ~ 0.2 0.1 0.2 0 1 force @a[tag=knows_bottany]

execute at @e[tag=cursed_shroom] as @e[tag=!knows_bottany,tag=!cursed_shroom,distance=..1.3,type=!marker,type=!interaction] run tag @s add poisoned
execute at @e[tag=cursed_shroom] as @e[tag=!knows_bottany,tag=!cursed_shroom,distance=..1.3,type=!marker,type=!interaction] run effect give @s slowness 2 0 true
execute at @e[tag=cursed_shroom] as @e[tag=!knows_bottany,tag=!cursed_shroom,distance=..1.3,type=!marker,type=!interaction] run particle flash ~ ~1 ~ 0 0 0 0 1 force
execute at @e[tag=cursed_shroom] as @e[tag=!knows_bottany,tag=!cursed_shroom,distance=..1.3,type=!marker,type=!interaction] run particle minecraft:spore_blossom_air ~ ~1 ~ 0 0 0 0 10 force
execute as @e[tag=cursed_shroom] at @s if entity @e[tag=!knows_bottany,tag=!cursed_shroom,distance=..1.3,type=!marker,type=!interaction] run kill @s





# grow crop
execute as @e[tag=sap_life] at @s on target run effect give @s[scores={mana=50..}] slowness 1 0 true
execute as @e[tag=sap_life] at @s on target if entity @s[scores={mana=50..}] run playsound minecraft:block.enchantment_table.use ambient @a[distance=..4] ~ ~ ~ 1 2
execute as @e[tag=sap_life] at @s on target if entity @s[scores={mana=50..}] run particle flash ~ ~1 ~ 0 0 0 0 3 force
execute as @e[tag=sap_life] on target at @s if entity @s[scores={mana=50..}] if block ~ ~ ~ #minecraft:saplings run setblock ~ ~ ~ dead_bush
execute as @e[tag=sap_life] at @s on target run scoreboard players add @s[scores={mana=50..}] blood 6
execute as @e[tag=sap_life] at @s on target run scoreboard players remove @s[scores={mana=50..}] mana 50
























scoreboard players add @e[tag=bottany_interaction] time 1
kill @e[tag=bottany_interaction,scores={time=2..}]



