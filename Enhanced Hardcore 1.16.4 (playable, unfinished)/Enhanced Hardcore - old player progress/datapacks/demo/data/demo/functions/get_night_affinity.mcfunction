tag @s add night_affinity
tellraw @s {"text":"You have an affinity for the night.","color":"#4C0078"}
tag @s remove day_affinity
tag @s remove darkness_affinity
tag @s remove moonlight_affinity
tag @s remove sunrise_affinity
tag @s remove rain_affinity
tag @s remove no_affinity