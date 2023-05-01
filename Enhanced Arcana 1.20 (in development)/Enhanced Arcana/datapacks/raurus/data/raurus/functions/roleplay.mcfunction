item replace entity @a[tag=admin] hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Change character - Right Click","color":"#FFF700"}'},CustomModelData:27,admin_change_character:1b,kill:1b,Enchantments:[{}]} 1
item replace entity @a[tag=admin] hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Reset to ghost - Right Click","color":"#B00000"}'},CustomModelData:26,kill:1b,admin_reset:1b,Enchantments:[{}]} 1


scoreboard players add @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] roleplay 1
scoreboard players set @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{admin_reset:1b}}}] roleplay 0


scoreboard players set @a[scores={roleplay=6..}] roleplay 0


title @a[scores={use_carrot_on_a_stick=1..,roleplay=0},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] title {"text":"Invisible"}
title @a[scores={use_carrot_on_a_stick=1..,roleplay=1},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] title {"text":"Floating Head"}
title @a[scores={use_carrot_on_a_stick=1..,roleplay=2},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] title {"text":"Lannis"}
title @a[scores={use_carrot_on_a_stick=1..,roleplay=3},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] title {"text":"Raurus"}
title @a[scores={use_carrot_on_a_stick=1..,roleplay=4},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] title {"text":"Robert"}
title @a[scores={use_carrot_on_a_stick=1..,roleplay=5},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] title {"text":"Thief"}


clear @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{admin_change_character:1b}}}]
clear @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{admin_reset:1b}}}]





### INVISIBLE
effect give @a[scores={roleplay=0}] saturation 1 100 true
effect give @a[scores={roleplay=0}] resistance 1 100 true
effect give @a[scores={roleplay=0}] instant_health 1 0 true
effect give @a[scores={roleplay=0..1}] invisibility 1 0 true
effect give @a[scores={roleplay=0}] speed 1 6 true
effect give @a[scores={roleplay=0}] jump_boost 1 2 true






### GHOST HEAD
item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=1}] armor.head with player_head{display:{Name:'{"text":"???","color":"#1D00B0"}'},kill:1b,Enchantments:[{}],SkullOwner:{Id:[I;-609492153,971130542,-1091554993,-968068783],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2I1YjBjNzdhMmQ0MWQ4ZDcxNDRlOGE1NmJiOWM0NTZlYTk4MTJkMWNlNjY1Yzc4NjdmYWU4NDllOGM3YzkzMSJ9fX0="}]}}} 1

execute at @a[tag=admin,scores={roleplay=1}] anchored eyes run particle falling_dust bone_block ~ ~1.3 ~ 0.2 0 0.2 0 2 force
execute at @a[tag=admin,scores={roleplay=1}] anchored eyes run particle dust 1 1 0.8 1 ~ ~0.5 ~ 0.1 0.5 0.1 0 5 force
execute at @a[tag=admin,scores={roleplay=1}] anchored eyes run particle falling_dust bone_block ~ ~1.3 ~ 0.1 0 0.1 0 2 force
item replace entity @a[tag=admin,scores={roleplay=1}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"LIGHT STAFF","color":"#FFB300"}'},CustomModelData:27,kill:1b,light_staff:1b,magic_item:1b} 1






### LANNIS
item replace entity @a[tag=admin,scores={roleplay=2}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"VOID STAFF","color":"#F700FF"}'},CustomModelData:15,kill:1b,void_staff:1b,magic_item:1b} 1
item replace entity @a[tag=admin,scores={roleplay=2}] hotbar.1 with carrot_on_a_stick{display:{Name:'{"text":"SOUL STAFF","color":"blue"}'},CustomModelData:15,kill:1b,soul_staff:1b,magic_item:1b} 1
item replace entity @a[tag=admin,scores={roleplay=2}] hotbar.2 with carrot_on_a_stick{display:{Name:'{"text":"BLOOD STAFF","color":"red"}'},CustomModelData:15,kill:1b,blood_staff:1b,magic_item:1b} 1

execute at @a[tag=admin,scores={roleplay=2}] anchored eyes positioned ~ ~0.6 ~ run particle witch ^0.4 ^ ^ 0 0 0 0 3 force
execute at @a[tag=admin,scores={roleplay=2}] anchored eyes positioned ~ ~0.6 ~ run particle witch ^-0.4 ^ ^ 0 0 0 0 3 force


item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=2}] armor.head with player_head{display:{Name:'{"text":"???","color":"#6F00B0"}'},kill:1b,Enchantments:[{}],SkullOwner:{Id:[I;-1176464469,-1813494989,-1188383833,-1514964952],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzVlNWZhN2IzMTc5YjlhZjY2MTFiNGJhMjU1NmJkY2ViNjU1OWE3ZGNmZTRmYzliODQwYjE1MGI3ODkzMmI0OSJ9fX0="}]}}} 1
item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=2}] armor.chest with leather_chestplate{display:{color:0},kill:1b} 1
item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=2}] armor.legs with leather_leggings{display:{color:0},kill:1b} 1
item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=2}] armor.feet with leather_boots{display:{color:0},kill:1b} 1









### Raurus
execute at @a[tag=admin,scores={roleplay=3}] anchored eyes positioned ~ ~0.7 ~ run particle end_rod ^0.4 ^ ^ 0 0 0 0 3 force
execute at @a[tag=admin,scores={roleplay=3}] anchored eyes positioned ~ ~0.7 ~ run particle end_rod ^-0.4 ^ ^ 0 0 0 0 3 force


item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=3}] armor.head with player_head{display:{Name:'{"text":"???","color":"#FFB300"}'},kill:1b,SkullOwner:{Id:[I;-1857956603,358042226,-1913102068,-544535251],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTM0YjY1OTlkMDQ0MTkyZjVkY2RjZWJkZDMzMzQ0NTliZTM2YzI3ZjMwZGU0YzRlNThlYTdhYTIzZjQxYWU4OCJ9fX0="}]}}} 1

item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=3}] armor.chest with leather_chestplate{display:{color:16447113},kill:1b} 1
item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=3}] armor.legs with leather_leggings{display:{color:16447113},kill:1b} 1
item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=3}] armor.feet with leather_boots{display:{color:16447113},kill:1b} 1

item replace entity @a[tag=admin,scores={roleplay=3}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"LIGHT STAFF","color":"#FFB300"}'},CustomModelData:12,kill:1b,light_staff:1b,magic_item:1b} 1








### Robert
execute at @a[tag=admin,scores={roleplay=4}] anchored eyes positioned ~ ~0.7 ~ run particle glow ^0.4 ^ ^ 0 0 0 0 3 force
execute at @a[tag=admin,scores={roleplay=4}] anchored eyes positioned ~ ~0.7 ~ run particle glow ^-0.4 ^ ^ 0 0 0 0 3 force


item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=4}] armor.head with player_head{kill:1b,SkullOwner:{Id:[I;1478941452,730351036,-1591821855,1205762075],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWNjNWNhMWRlZTgyYThmNjg2NzI2ZmM2M2MyMjFhZmZhMTNjZjg1YmJiYzg3YzNmZjU4NjFlMjI3NGIzNGYzIn19fQ=="}]}}} 1

item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=4}] armor.chest with leather_chestplate{display:{color:5395077},kill:1b} 1
item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=4}] armor.legs with leather_leggings{display:{color:5395077},kill:1b} 1
item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=4}] armor.feet with leather_boots{display:{color:5395077},kill:1b} 1

item replace entity @a[tag=admin,scores={roleplay=4}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"SOUL STAFF","color":"blue"}'},CustomModelData:13,kill:1b,soul_staff:1b,magic_item:1b} 1
















### Thief
item replace entity @a[tag=admin,scores={roleplay=5}] hotbar.1 with splash_potion{display:{Name:'{"text":"???"}'},kill:1b,steal:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:60},{Id:20,Amplifier:0b,Duration:30}],CustomPotionColor:0} 1

item replace entity @a[tag=admin,scores={use_carrot_on_a_stick=1..,roleplay=5}] hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Reveal - Steal","color":"#9900FF","bold":true}'},CustomModelData:42,kill:1b,steal:1b,Enchantments:[{}]} 1
effect give @a[scores={roleplay=5}] speed 1 1 true
effect give @a[scores={roleplay=5},nbt=!{SelectedItem:{tag:{steal:1b}}}] invisibility 1 0 true

item replace entity @a[tag=!thief_hide,scores={roleplay=5},nbt={SelectedItem:{tag:{steal:1b}}}] armor.head with player_head{display:{Name:'{"text":"???","color":"#9900FF","bold":true}'},kill:1b,Enchantments:[{}],SkullOwner:{Id:[I;1412666834,1963213920,-1623591593,1598105759],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjZkOWRmZjBiZTkzNTlmODExODIyYmZlNGJkOGRkNDBkMDVhZmNjZGJkMTE0ZGUwODFlMWJmNDY5MzA3MWVmYiJ9fX0="}]}}} 1
item replace entity @a[tag=!thief_hide,scores={roleplay=5},nbt={SelectedItem:{tag:{steal:1b}}}] armor.chest with leather_chestplate{display:{color:0},kill:1b} 1
item replace entity @a[tag=!thief_hide,scores={roleplay=5},nbt={SelectedItem:{tag:{steal:1b}}}] armor.legs with leather_leggings{display:{color:0},kill:1b} 1
item replace entity @a[tag=!thief_hide,scores={roleplay=5},nbt={SelectedItem:{tag:{steal:1b}}}] armor.feet with leather_boots{display:{color:0},kill:1b} 1

tag @a[scores={roleplay=5},nbt={SelectedItem:{tag:{steal:1b}}}] add thief_hide
tag @a[scores={roleplay=5},nbt=!{SelectedItem:{tag:{steal:1b}}}] remove thief_hide


item replace entity @a[scores={roleplay=5},nbt=!{SelectedItem:{tag:{steal:1b}}}] armor.feet with air
item replace entity @a[scores={roleplay=5},nbt=!{SelectedItem:{tag:{steal:1b}}}] armor.chest with air
item replace entity @a[scores={roleplay=5},nbt=!{SelectedItem:{tag:{steal:1b}}}] armor.legs with air
item replace entity @a[scores={roleplay=5},nbt=!{SelectedItem:{tag:{steal:1b}}}] armor.head with air
