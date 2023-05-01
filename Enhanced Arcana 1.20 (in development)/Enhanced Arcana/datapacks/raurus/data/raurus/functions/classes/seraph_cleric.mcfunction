execute as @a[tag=seraph_cleric,nbt={SelectedItem:{tag:{seraph_charm:1b}}}] run tag @s add seraph_charm
execute as @a[tag=seraph_cleric,nbt={Inventory:[{Slot:-106b,tag:{seraph_charm:1b}}]}] run tag @s add seraph_charm

tellraw @a[tag=seraph_charm,scores={blood=..4,is_sneaking=1..,use_carrot_on_a_stick=1..}] {"text":"- Not enough blood -","color":"red"}
effect give @a[tag=seraph_charm] resistance 1 0 true
tag @a[tag=seraph_charm,scores={blood=5..,is_sneaking=1..,use_carrot_on_a_stick=1..}] add cured
effect give @a[tag=seraph_charm,scores={blood=5..,is_sneaking=1..,use_carrot_on_a_stick=1..}] instant_health
execute at @a[tag=seraph_charm,scores={blood=5..,is_sneaking=1..,use_carrot_on_a_stick=1..}] run particle glow ~ ~1 ~ 0.5 0.5 0.5 0 20 force
scoreboard players remove @a[tag=seraph_charm,scores={blood=5..,is_sneaking=1..,use_carrot_on_a_stick=1..}] blood 5

tag @a remove seraph_charm