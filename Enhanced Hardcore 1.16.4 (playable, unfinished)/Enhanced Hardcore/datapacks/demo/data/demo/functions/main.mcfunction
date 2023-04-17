#functions

function demo:spawn_protection
function demo:custom_mobs
function demo:teams
function demo:effects
function demo:npcs
function demo:killing
function demo:darklurker
function demo:seraph
function demo:dark_seraph
function demo:players
function demo:teleports
function demo:bossbars
function demo:curses
function demo:arcane_revive
function demo:magic
function demo:classes
function demo:bonfire
function demo:random
function demo:sky_castle_tp
function demo:entity_count
function demo:time
function demo:sky_castle_ritual
function demo:music
function demo:welcome
function demo:affinity
function demo:rain
function demo:wilderness
function demo:ender_dragon
function demo:teleport_spell



#reset player classes upon filling up slots
execute if score king class matches 1 if score warrior class matches 1 if score miner class matches 1 if score farmer class matches 1 if score lumberjack class matches 1 if score sorcerer class matches 1 run function demo:reset_class_scores