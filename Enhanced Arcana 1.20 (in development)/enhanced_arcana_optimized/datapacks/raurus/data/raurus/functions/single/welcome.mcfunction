execute in raurus:abyss run spawnpoint @s 1 16 5
function raurus:reset
scoreboard players set @s welcome_dialogue_tick 0
effect give @s invisibility 1000000 255 true
effect give @s weakness 1000000 255 true
effect give @s resistance 1000000 255 true
gamemode adventure @s[gamemode=survival]
execute in raurus:abyss run tp @s 1 16 5
tag @s add welcome