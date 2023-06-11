title @a[distance=..9] title {"text":"- Bonfire Lit -","color":"gold"}
setblock ~ ~ ~ campfire
particle flash ~ ~ ~ 0 0 0 0 5 force
particle poof ~ ~ ~ 0.2 0.2 0.2 0.06 50 force
summon marker ~ ~ ~ {OnGround:0b,Tags:["warm_up"]}
kill @s