execute as @a[tag=!day_affinity,tag=!night_affinity,tag=!darkness_affinity,tag=!rain_affinity,tag=!no_affinity,tag=!moonlight_affinity,tag=!sunrise_affinity] if score rand9 random matches 1 if score rand6 random matches ..2 run function demo:get_day_affinity
execute as @a[tag=!day_affinity,tag=!night_affinity,tag=!darkness_affinity,tag=!rain_affinity,tag=!no_affinity,tag=!moonlight_affinity,tag=!sunrise_affinity] if score rand9 random matches 2 if score rand6 random matches ..2 run function demo:get_night_affinity
execute as @a[tag=!day_affinity,tag=!night_affinity,tag=!darkness_affinity,tag=!rain_affinity,tag=!no_affinity,tag=!moonlight_affinity,tag=!sunrise_affinity] if score rand9 random matches 3 if score rand6 random matches ..2 run function demo:get_darkness_affinity
execute as @a[tag=!day_affinity,tag=!night_affinity,tag=!darkness_affinity,tag=!rain_affinity,tag=!no_affinity,tag=!moonlight_affinity,tag=!sunrise_affinity] if score rand9 random matches 4 if score rand6 random matches ..2 run function demo:get_rain_affinity
execute as @a[tag=!day_affinity,tag=!night_affinity,tag=!darkness_affinity,tag=!rain_affinity,tag=!no_affinity,tag=!moonlight_affinity,tag=!sunrise_affinity] if score rand9 random matches 5 if score rand6 random matches ..2 run function demo:get_moonlight_affinity
execute as @a[tag=!day_affinity,tag=!night_affinity,tag=!darkness_affinity,tag=!rain_affinity,tag=!no_affinity,tag=!moonlight_affinity,tag=!sunrise_affinity] if score rand9 random matches 6 if score rand6 random matches ..2 run function demo:get_sunrise_affinity
execute as @a[tag=!day_affinity,tag=!night_affinity,tag=!darkness_affinity,tag=!rain_affinity,tag=!no_affinity,tag=!moonlight_affinity,tag=!sunrise_affinity] run function demo:get_no_affinity



execute if score time time matches 14000..23000 unless score rain rain matches 1.. as @a[tag=night_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run effect give @s[distance=..196] night_vision 12 0 true



execute if score time time matches 13000 unless score rain rain matches 1.. as @a[tag=moonlight_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run effect give @s[distance=..196] night_vision 30 0 true
execute if score time time matches 13000 unless score rain rain matches 1.. as @a[tag=moonlight_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run effect give @s[distance=..196] speed 15 0 true
execute if score time time matches 13000 unless score rain rain matches 1.. as @a[tag=moonlight_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run effect give @s[distance=..196] regeneration 6 0 true
execute if score time time matches 13000 unless score rain rain matches 1.. as @a[tag=moonlight_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run playsound minecraft:ambient.soul_sand_valley.mood ambient @s[distance=..196] ~ ~ ~ 200 1.50
execute if score time time matches 13000 unless score rain rain matches 1.. as @a[tag=moonlight_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run tellraw @s[distance=..196] {"text":"Your soul resonates with the emergent moonlight...","color":"#C9F4FF"}


execute if score time time matches 23000 unless score rain rain matches 1.. as @a[tag=sunrise_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run effect give @s[distance=..196] speed 10 1 true
execute if score time time matches 23000 unless score rain rain matches 1.. as @a[tag=sunrise_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run effect give @s[distance=..196] strength 15 0 true
execute if score time time matches 23000 unless score rain rain matches 1.. as @a[tag=sunrise_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run effect give @s[distance=..196] saturation 1 2 true
execute if score time time matches 23000 unless score rain rain matches 1.. as @a[tag=sunrise_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run playsound minecraft:ambient.soul_sand_valley.mood ambient @s[distance=..196] ~ ~ ~ 200 1.50
execute if score time time matches 23000 unless score rain rain matches 1.. as @a[tag=sunrise_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 256 ~ run tellraw @s[distance=..196] {"text":"Your soul resonates with the rising sun...","color":"#FCC49A"}

execute as @a[tag=darkness_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 0 ~ run effect give @s[distance=..16] haste 1 0 true
execute as @a[tag=darkness_affinity,nbt={Dimension:"minecraft:overworld"}] at @s positioned ~ 0 ~ run effect give @s[distance=..16] resistance 1 0 true

execute if score rain rain matches 1.. run effect give @a[tag=rain_affinity,nbt={Dimension:"minecraft:overworld"}] minecraft:dolphins_grace 1 0 true
execute if score rain rain matches 1.. run effect give @a[tag=rain_affinity,nbt={Dimension:"minecraft:overworld"}] jump_boost 1 1 true
execute if score rain rain matches 1.. run effect give @a[tag=rain_affinity,nbt={Dimension:"minecraft:overworld"}] haste 1 0 true

scoreboard players add @a[tag=day_affinity] day_cd 1
execute if score time time matches 0..13000 unless score rain rain matches 1.. as @a[tag=day_affinity,nbt={Dimension:"minecraft:overworld"},scores={day_cd=1}] at @s positioned ~ 256 ~ run effect give @s absorption 61 0 true
scoreboard players set @a[scores={day_cd=1200..}] day_cd 0