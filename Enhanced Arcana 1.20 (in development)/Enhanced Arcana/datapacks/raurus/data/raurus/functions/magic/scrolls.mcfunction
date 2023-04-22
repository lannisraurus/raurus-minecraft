
tag @a[scores={use_carrot_on_a_stick=1..},nbt={SelectedItem:{tag:{soul_orb_scroll:1b}}},tag=!knows_soul_orb] add learn_soul_orb
tag @a[tag=learn_soul_orb] add knows_soul_orb
clear @a[tag=learn_soul_orb] carrot_on_a_stick{soul_orb_scroll:1b} 1
execute at @a[tag=learn_soul_orb] run playsound minecraft:block.enchantment_table.use ambient @a[distance=..4]
execute at @a[tag=learn_soul_orb] run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0 40 force
tag @a remove learn_soul_orb



