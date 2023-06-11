tellraw @s[scores={mana=..19}] {"text":"- Not enough mana -","color":"red"}
tellraw @s[tag=!knows_soul_pellet] {"text":"- You do not know this spell -","color":"red"}
execute as @s[scores={mana=20..},tag=knows_soul_pellet] at @s anchored eyes run function raurus:magic/spells/shoot_soul_pellet