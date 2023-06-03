tellraw @s[scores={mana=..14}] {"text":"- Not enough mana -","color":"red"}
tellraw @s[tag=!knows_levitae] {"text":"- You do not know this spell -","color":"red"}
execute as @s[scores={mana=15..},tag=!in_interstice,tag=knows_levitae] at @s run function raurus:magic/spells/shoot_levitae

