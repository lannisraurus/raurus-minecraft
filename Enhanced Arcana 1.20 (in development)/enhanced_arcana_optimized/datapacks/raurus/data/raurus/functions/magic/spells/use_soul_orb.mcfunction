tellraw @s[scores={mana=..69}] {"text":"- Not enough mana -","color":"red"}
tellraw @s[tag=!knows_soul_orb] {"text":"- You do not know this spell -","color":"red"}
execute as @s[scores={mana=70..},tag=knows_soul_orb] at @s anchored eyes run function raurus:magic/spells/shoot_soul_orb