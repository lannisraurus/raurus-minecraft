item replace entity @a[tag=admin] hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Change character - Right Click","color":"#FFF700"}'},CustomModelData:27,admin_change_character:1b,kill:1b,Enchantments:[{}]} 1
item replace entity @a[tag=admin] hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Reset to player - Right Click","color":"#B00000"}'},CustomModelData:26,kill:1b,admin_reset:1b,Enchantments:[{}]} 1


scoreboard players set @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{admin_reset:1b}}}] roleplay -1
clear @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{admin_reset:1b}}}]
scoreboard players add @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] roleplay 1
scoreboard players set @a[scores={roleplay=8..}] roleplay 0


execute as @a[scores={use_carrot_on_a_stick=1..,roleplay=0},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] run function raurus:single/select_invisible
execute as @a[scores={use_carrot_on_a_stick=1..,roleplay=1},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] run function raurus:single/select_floating_head
execute as @a[scores={use_carrot_on_a_stick=1..,roleplay=2},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] run function raurus:single/select_lannis
execute as @a[scores={use_carrot_on_a_stick=1..,roleplay=3},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] run function raurus:single/select_raurus
execute as @a[scores={use_carrot_on_a_stick=1..,roleplay=4},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] run function raurus:single/select_robert
execute as @a[scores={use_carrot_on_a_stick=1..,roleplay=5},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] run function raurus:single/select_thief

execute as @a[scores={roleplay=0}] run function raurus:single/invisible
execute as @a[scores={roleplay=1}] run function raurus:single/floating_head
execute as @a[scores={roleplay=2}] run function raurus:single/lannis
execute as @a[scores={roleplay=3}] run function raurus:single/raurus
execute as @a[scores={roleplay=4}] run function raurus:single/robert
execute as @a[scores={roleplay=5}] run function raurus:single/thief




## NO NEED FOR FUNCTION

effect give @a[scores={roleplay=6..7}] invisibility 1 1 true
execute as @a[scores={use_carrot_on_a_stick=1..,roleplay=6},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] run title @s title {"text":"Cow Morph"}
execute as @a[scores={use_carrot_on_a_stick=1..,roleplay=7},nbt={SelectedItem:{tag:{admin_change_character:1b}}}] run title @s title {"text":"Zombie Morph"}


execute at @a[scores={roleplay=6}] unless entity @e[distance=..10,tag=cow_morph] run summon cow ~ ~ ~ {Invulnerable:1b,Tags:["cow_morph"]}
execute as @e[tag=cow_morph] at @s run tp @s @a[scores={roleplay=6},sort=nearest,limit=1]
execute as @e[tag=cow_morph] at @s unless entity @a[scores={roleplay=6},sort=nearest,limit=1] run tp @s ~ -200 ~

execute at @a[scores={roleplay=7}] unless entity @e[distance=..10,tag=zombie_morph] run summon zombie ~ ~ ~ {Invulnerable:1b,Tags:["zombie_morph","selected"]}
execute as @e[tag=zombie_morph] at @s run tp @s @a[scores={roleplay=7},sort=nearest,limit=1]
execute as @e[tag=zombie_morph] at @s unless entity @a[scores={roleplay=7},sort=nearest,limit=1] run tp @s ~ -200 ~