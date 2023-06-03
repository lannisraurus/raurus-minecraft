tellraw @s[scores={mana=..44},tag=!in_interstice,tag=knows_levitation_orb] {"text":"- Not enough mana -","color":"red"}
tellraw @s[tag=!in_interstice,tag=!knows_levitation_orb] {"text":"- You do not know this spell -","color":"red"}
execute as @s[scores={mana=45..},tag=!in_interstice,tag=knows_levitation_orb] at @s run function raurus:magic/spells/shoot_levitation_orb