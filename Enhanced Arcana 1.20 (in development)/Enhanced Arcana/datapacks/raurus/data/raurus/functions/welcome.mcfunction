execute in raurus:abyss run spawnpoint @a[tag=!welcome] 1 16 5
execute as @a[tag=!welcome] at @s run function raurus:reset
scoreboard players set @a[tag=!welcome] welcome_dialogue_tick 0
effect give @a[tag=!welcome] invisibility 1000000 255 true
effect give @a[tag=!welcome] weakness 1000000 255 true
effect give @a[tag=!welcome] resistance 1000000 255 true
gamemode adventure @a[tag=!welcome,gamemode=survival]
execute in raurus:abyss run tp @a[tag=!welcome] 1 16 5
tag @a[tag=!welcome] add welcome


scoreboard players add @a[scores={welcome_dialogue_tick=..950}] welcome_dialogue_tick 1
tellraw @a[scores={welcome_dialogue_tick=50}] {"text":"<???> Hello..."}
tellraw @a[scores={welcome_dialogue_tick=200}] {"text":"<???> It seems as if you have ended up here, in the void..."}
tellraw @a[scores={welcome_dialogue_tick=350}] {"text":"<???> Do not be afraid. I am here to guide you..."}
tellraw @a[scores={welcome_dialogue_tick=500}] {"text":"<???> For now you are simply an idea, a spec of consciousness..."}
tellraw @a[scores={welcome_dialogue_tick=650}] {"text":"<???> ..."}
tellraw @a[scores={welcome_dialogue_tick=800}] {"text":"<???> So, what are you going to be? Feel free to choose..."}
tellraw @a[scores={welcome_dialogue_tick=950}] {"text":"<???> Good luck..."}