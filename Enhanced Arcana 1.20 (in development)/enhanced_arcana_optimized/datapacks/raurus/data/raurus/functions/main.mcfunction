#### FUNCTIONS

function raurus:abyss/safe
function raurus:overworld/safe
function raurus:tundra/settings
function raurus:soul_lake/settings

function raurus:welcome
function raurus:hint
function raurus:death
function raurus:crafting

function raurus:classes/blacksmith
function raurus:classes/arcane_sorcerer
function raurus:classes/ophan_cleric
function raurus:classes/seraph_cleric
function raurus:classes/druid
function raurus:classes/blood_demon
function raurus:classes/interstice_warrior

function raurus:abyss/classes
function raurus:interstice/lobby
function raurus:interstice/npcs
function raurus:magic/warp
function raurus:magic/levels
function raurus:magic/mana
function raurus:magic/spells
function raurus:magic/scrolls
function raurus:magic/display

function raurus:npc_interact
function raurus:roleplay

function raurus:magic/exp

function raurus:status_effects/status_effects

function raurus:reset_tags_and_scoreboards





### FUNCTIONALITIES


# kill items
kill @e[type=item,nbt={Item:{tag:{kill:1b}}}]
kill @e[tag=kill]

# death counter update
execute as @e[tag=death_text2] run data merge entity @s {text:'{"score":{"name":"deaths","objective":"deaths"},"color":"red"}'}

# time
execute store result score time time run time query daytime
execute store result score day time run time query day

# interstice mechanic

scoreboard players set interstice time 0
execute if score time time matches 22700..24000 run scoreboard players set interstice time 1
execute if score time time matches 0..800 run scoreboard players set interstice time 1
execute if score time time matches 11800..14000 run scoreboard players set interstice time 1


# fire time
execute as @a store result score @s fire run data get entity @s Fire

# pig brainless hehe
execute as @e[type=pig] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}

# admin
scoreboard players set @a[tag=admin] blood 1000
scoreboard players set @a[tag=admin] mana 1000
scoreboard players set @a[tag=admin] freeze 0


# ender chest
clear @a minecraft:red_stained_glass_pane{erase:1b}
item replace entity @a enderchest.0 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.1 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.2 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.2 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.3 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.4 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.5 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.6 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.7 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.8 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.9 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.10 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1

item replace entity @a enderchest.16 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.17 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.18 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.19 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.20 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.21 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.22 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.23 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.24 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.25 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1
item replace entity @a enderchest.26 with red_stained_glass_pane{display:{Name:'{"text":"BLOCKED","color":"#FF0000","italic":false}'},erase:1b} 1


# entity Count
scoreboard players set total count 0
scoreboard players set skeletons count 0
scoreboard players set creepers count 0
scoreboard players set zombies count 0
scoreboard players set items count 0
scoreboard players set players count 0

execute as @e[type=!player] run scoreboard players add total count 1
execute as @e[type=skeleton] run scoreboard players add skeletons count 1
execute as @e[type=creeper] run scoreboard players add creepers count 1
execute as @e[type=zombie] run scoreboard players add zombies count 1
execute as @e[type=item] run scoreboard players add items count 1
execute as @a run scoreboard players add players count 1



# player id system
execute as @a[tag=!player_id] run scoreboard players add total player_id 1
scoreboard players operation @a[tag=!player_id] player_id = total player_id
tag @a add player_id