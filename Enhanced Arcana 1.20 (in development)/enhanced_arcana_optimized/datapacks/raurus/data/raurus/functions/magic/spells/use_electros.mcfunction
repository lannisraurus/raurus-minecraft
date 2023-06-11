tellraw @s[scores={mana=..29}] {"text":"- Not enough mana -","color":"red"}
tellraw @s[tag=!knows_electros] {"text":"- You do not know this spell -","color":"red"}

execute as @s[scores={mana=30..,is_sneaking=0},tag=!in_interstice,tag=knows_electros] at @s run function raurus:magic/spells/shoot_electros1
execute as @s[scores={mana=30..,is_sneaking=1},tag=!in_interstice,tag=knows_electros] at @s run function raurus:magic/spells/shoot_electros2