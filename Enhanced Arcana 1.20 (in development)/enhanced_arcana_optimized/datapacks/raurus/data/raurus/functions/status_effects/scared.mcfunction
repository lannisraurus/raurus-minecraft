# SCARED
title @s times 20 20 20
title @s subtitle {"text":"You are scared!","color":"#B40082"}
title @s title {"text":""}

playsound minecraft:entity.ghast.hurt ambient @s ~ ~ ~ 1 0.50
playsound minecraft:entity.ghast.hurt ambient @s ~ ~ ~ 1 0.00
playsound minecraft:entity.ghast.hurt ambient @s ~ ~ ~ 1 1.50

effect give @s blindness 3 0 true
effect give @s slowness 5 1 true
effect give @s nausea 8 0 true