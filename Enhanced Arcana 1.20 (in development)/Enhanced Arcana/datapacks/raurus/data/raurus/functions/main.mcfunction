function raurus:abyss/safe

function raurus:welcome
function raurus:hint
function raurus:death
function raurus:crafting

function raurus:overworld/safe
function raurus:tundra/settings
function raurus:soul_lake/settings

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
function raurus:magic/exp
function raurus:status_effects/status_effects








function raurus:reset_tags_and_scoreboards




# time
execute store result score time time run time query daytime
execute store result score day time run time query day

# fire time
execute as @a store result score @s fire run data get entity @s Fire

# pig brainless hehe
execute as @e[type=pig] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}

# admin
scoreboard players set @a[tag=admin] blood 1000
scoreboard players add @a[tag=admin] mana 1000