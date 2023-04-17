execute as @a[tag=!knockback_curse] run attribute @s minecraft:generic.max_health base set 20

title @a[scores={death1=1.. , death2=1},tag=!tp_home] subtitle {"text":"Die 5 more times and you'll be sent to the Purgatory.","bold":"true","color":"red"}
title @a[scores={death1=1.. , death2=2},tag=!tp_home] subtitle {"text":"Die 4 more times and you'll be sent to the Purgatory.","bold":"true","color":"red"}
title @a[scores={death1=1.. , death2=3},tag=!tp_home] subtitle {"text":"Die 3 more times and you'll be sent to the Purgatory.","bold":"true","color":"red"}
title @a[scores={death1=1.. , death2=4},tag=!tp_home] subtitle {"text":"Die 2 more times and you'll be sent to the Purgatory.","bold":"true","color":"red"}
title @a[scores={death1=1.. , death2=5},tag=!tp_home] subtitle {"text":"Die 1 more time and you'll be sent to the Purgatory.","bold":"true","color":"red"}
title @a[scores={death1=1.. , death2=6},tag=!tp_home] subtitle {"text":"You will now be sent to the Purgatory.","bold":"true","color":"red"}

title @a[scores={death1=1..},tag=!tp_home] title {"text":"YOU DIED","color":"dark_red","bold":"true"}

tag @a[scores={death1=1.. , death2=6..},tag=!tp_home] add purgatory_tp

execute at @a[scores={death1=1..},tag=!tp_home] as @e[type=item,distance=..2] run data merge entity @s {CustomNameVisible:1b,Age:-32768,Tags:["death_loot"],CustomName:'{"text":"Death Loot"}',Item:{}}
execute at @e[type=item,tag=death_loot] run particle end_rod ~ ~ ~ 0 1 0 0 1 force