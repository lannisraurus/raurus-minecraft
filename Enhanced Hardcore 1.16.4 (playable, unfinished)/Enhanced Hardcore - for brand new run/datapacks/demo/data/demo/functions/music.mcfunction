scoreboard players add sky_castle music 1
execute in minecraft:hardcore_dimensions/void if score sky_castle music matches 500.. run setblock 544 115 560 redstone_block
execute in minecraft:hardcore_dimensions/void if score sky_castle music matches 520.. run scoreboard players set sky_castle music 0
execute in minecraft:hardcore_dimensions/void if score sky_castle music matches ..500 run setblock 544 115 560 air