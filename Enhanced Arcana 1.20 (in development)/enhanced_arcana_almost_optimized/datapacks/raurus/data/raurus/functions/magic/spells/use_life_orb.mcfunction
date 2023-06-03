tellraw @s[scores={mana=..19}] {"text":"- Not enough mana -","color":"red"}
execute as @s[scores={mana=20..,is_sneaking=0}] at @s run function raurus:magic/spells/shoot_life_orb
tag @s[scores={mana=20..,is_sneaking=1..}] add use_life_regen
scoreboard players remove @s[scores={mana=20..,is_sneaking=1..}] mana 20
scoreboard players add @s[scores={mana=20..,is_sneaking=1..}] exp 3