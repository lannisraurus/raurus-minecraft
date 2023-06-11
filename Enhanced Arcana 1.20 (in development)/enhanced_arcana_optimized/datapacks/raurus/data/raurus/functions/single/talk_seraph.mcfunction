
tellraw @s[scores={talk_seraph=100},tag=!seraph_cleric] ["",{"text":"<"},{"text":"Eleanor","color":"aqua"},{"text":"> ..."}]
tellraw @s[scores={talk_seraph=1},tag=!seraph_cleric] ["",{"text":"<"},{"text":"Eleanor","color":"aqua"},{"text":"> I am afraid I have nothing I can help you with... Good luck on your travels"}]
tellraw @s[scores={talk_seraph=100},tag=seraph_cleric] ["",{"text":"<"},{"text":"Eleanor","color":"aqua"},{"text":"> ...Oh, hello there, a fellow scholar of the Seraph... I am Eleanor..."}]
tellraw @s[scores={talk_seraph=1},tag=seraph_cleric] ["",{"text":"<"},{"text":"Eleanor","color":"aqua"},{"text":"> Have you lost your talisman? Worry not... I will sell you one for 200 blood... Just [left-click] me..."}]
scoreboard players remove @s talk_seraph 1