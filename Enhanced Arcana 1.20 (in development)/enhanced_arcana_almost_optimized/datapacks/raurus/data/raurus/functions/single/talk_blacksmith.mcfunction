
tellraw @s[scores={talk_blacksmith=100},tag=!blacksmith] ["",{"text":"<"},{"text":"Andre","color":"red"},{"text":"> Hiya there! I am Andre, the blacksmith serving this realm."}]
tellraw @s[scores={talk_blacksmith=1},tag=!blacksmith] ["",{"text":"<"},{"text":"Andre","color":"red"},{"text":"> I have nothing to sell as of now... You can pass by later, I might have something!"}]
tellraw @s[scores={talk_blacksmith=100},tag=blacksmith] ["",{"text":"<"},{"text":"Andre","color":"red"},{"text":"> Hiya there! I am Andre, the blacksmith serving this realm."}]
tellraw @s[scores={talk_blacksmith=1},tag=blacksmith] ["",{"text":"<"},{"text":"Andre","color":"red"},{"text":"> I see you too are a blacksmith! If you ever lose your hammer, I can sell you one for 200 blood. Just [left click] me!"}]

scoreboard players remove @s talk_blacksmith 1