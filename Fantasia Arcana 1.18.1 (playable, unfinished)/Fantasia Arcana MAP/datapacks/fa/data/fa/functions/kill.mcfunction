execute if score rand rand matches 1..2 run tag @a[scores={kill_player=1..},tag=!insane] add get_insane
execute if score rand rand matches 3..9 run tellraw @a[scores={kill_player=1..},tag=!insane] {"text":"Careful with what you do to your own mind...","color":"gray","italic":"true"}
execute if score rand rand matches 3..9 run effect give @a[scores={kill_player=1..},tag=!insane] blindness 1 0 true

tellraw @a[tag=get_insane] {"text":"Your mind has shattered, you are now insane.","color":"gray","italic":"true"}
execute as @a[tag=get_insane] at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 100 0.00
execute as @a[tag=get_insane] at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 100 1.00
execute as @a[tag=get_insane] at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 100 2.00
execute as @a[tag=get_insane] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.5 0.00
effect give @a[tag=get_insane] slowness 1 2 true
effect give @a[tag=get_insane] blindness 1 2 true
tag @a[tag=get_insane] add insane
tag @a[tag=get_insane] remove get_insane

give @a[scores={kill_player=1..}] clay_ball{display:{Name:'{"text":"Human Soul","color":"#DABAFF","bold":true,"underlined":true}',Lore:['{"text":"Still fresh...","color":"#EFE0FF"}']},human_soul:1b,Enchantments:[{}]} 1