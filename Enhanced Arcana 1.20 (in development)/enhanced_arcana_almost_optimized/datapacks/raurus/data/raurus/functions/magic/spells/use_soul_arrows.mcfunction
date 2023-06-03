tellraw @s[scores={mana=..49}] {"text":"- Not enough mana -","color":"red"}
tellraw @s[tag=!knows_soul_arrows] {"text":"- You do not know this spell -","color":"red"}
execute as @s[scores={mana=50..},tag=knows_soul_arrows] at @s anchored eyes run function raurus:magic/spells/shoot_soul_arrows