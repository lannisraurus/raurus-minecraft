### Thief
item replace entity @s hotbar.1 with splash_potion{display:{Name:'{"text":"???"}'},kill:1b,steal:1b,CustomPotionEffects:[{Id:15,Amplifier:0b,Duration:60},{Id:20,Amplifier:0b,Duration:30}],CustomPotionColor:0} 1

item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'{"text":"Reveal - Steal","color":"#9900FF","bold":true}'},CustomModelData:42,kill:1b,steal:1b,Enchantments:[{}]} 1
effect give @s speed 1 1 true
effect give @s[nbt=!{SelectedItem:{tag:{steal:1b}}}] invisibility 1 0 true

execute as @s[tag=!thief_hide,nbt={SelectedItem:{tag:{steal:1b}}}] run function raurus:single/thief_hide
execute as @s[tag=thief_hide,nbt=!{SelectedItem:{tag:{steal:1b}}}] run function raurus:single/thief_show
