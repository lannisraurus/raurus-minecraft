title @s title {"text":"- Level up! -","color":"green"}
title @s subtitle {"text":" "}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 0.6 0.5
scoreboard players add @s lvl_up 1
tag @s add lvl_up_update_exp