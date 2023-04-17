

replaceitem entity @a[tag=seraph] hotbar.8 written_book{display:{Name:'{"text":"Arcane Spellbook","color":"#DE07D7"}'},spellbook:1b,Enchantments:[{id:"minecraft:soul_speed",lvl:10s}],title:"",author:"",pages:['[{"text":"Speed\\n","color":"#94F4FF","clickEvent":{"action":"run_command","value":"/effect give @p speed 40 1 true"}},{"text":"Regeneration\\n","color":"#C90202","clickEvent":{"action":"run_command","value":"/effect give @a[distance=..3] regeneration 10 0 true"}},{"text":"Jump Boost\\n","color":"#4CE300","clickEvent":{"action":"run_command","value":"/effect give @p jump_boost 6 3 true"}},{"text":"Safe Landing\\n","color":"#BFBFBF","clickEvent":{"action":"run_command","value":"/effect give @p slow_falling 40 10 true"}},{"text":"Combustion\\n","color":"#F57200","clickEvent":{"action":"run_command","value":"/execute as @e[distance=..8,type=!player,type=!armor_stand,type=!item,type=!item_frame,type=!painting] run data merge entity @s {Fire:220}"}},{"text":"Invisibility\\n","color":"#E0E0E0","clickEvent":{"action":"run_command","value":"/effect give @p invisibility 320 10 true "}},{"text":"Levitate Attack\\n","color":"#E3B8B1","clickEvent":{"action":"run_command","value":"/effect give @e[type=!player,distance=..8] levitation 8 1 true"}},{"text":"Revive player\\n","color":"#FFC300","clickEvent":{"action":"run_command","value":"/gamemode survival @a[distance=..3,gamemode=spectator]"}},{"text":"Clear effects\\n","color":"#000000","clickEvent":{"action":"run_command","value":"/effect clear @p"}},{"text":"Spawn Thunder\\n","color":"#FFE014","clickEvent":{"action":"run_command","value":"/summon minecraft:lightning_bolt ^ ^ ^7"}},{"text":"Blind Players\\n","color":"#685169","clickEvent":{"action":"run_command","value":"/effect give @a[distance=1..5] blindness 8 0 true"}},{"text":"Invulnerability\\n","color":"#2B3B2A","clickEvent":{"action":"run_command","value":"/effect give @p resistance 60 100 true"}},{"text":"Cure Bones\\n","color":"#2B5B61","clickEvent":{"action":"run_command","value":"/tag @a[distance=..3] remove broken_leg"}},{"text":"Cure Half Health\\n","color":"#61372D","clickEvent":{"action":"run_command","value":"/tag @a[distance=..3] remove half_health"}},{"text":"Cure Blindness\\n","color":"#615A30","clickEvent":{"action":"run_command","value":"/tag @a[distance=..3] remove blind"}},{"text":"Cure Lust\\n","color":"#8A0707","clickEvent":{"action":"run_command","value":"/tag @a[distance=..3] remove lust"}}]','[{"text":"Clear Weather\\n","color":"#FFE712","clickEvent":{"action":"run_command","value":"/weather clear"}},{"text":"Rainy Weather\\n","color":"#0022FF","clickEvent":{"action":"run_command","value":"/weather rain"}},{"text":"Thunder Weather\\n","color":"#FFB303","clickEvent":{"action":"run_command","value":"/weather thunder"}},{"text":"Daytime\\n","color":"#FFFFA1","clickEvent":{"action":"run_command","value":"/time set 100"}},{"text":"Nighttime\\n","color":"#AE84B8","clickEvent":{"action":"run_command","value":"/time set night"}},{"text":"Feed","color":"#B84C44","clickEvent":{"action":"run_command","value":"/effect give @a[distance=..2] saturation 1 10 true"}}]']} 1
kill @e[type=minecraft:item,nbt={Item:{tag:{spellbook:1b}}}]


execute at @a[gamemode=spectator,tag=seraph] run particle dust 0.9 0.7 0.5 0.1 ~ ~1 ~ 0 0 0 0 1 force
execute at @a[gamemode=!spectator,gamemode=!creative,tag=seraph] run particle dust 1 1 1 1 ^0.5 ^1.5 ^-0.2 0.1 0.1 0.1 0 1 force
execute at @a[gamemode=!creative,gamemode=!spectator,tag=seraph] run particle dust 1 1 1 1 ^-0.5 ^1.5 ^-0.2 0.1 0.1 0.1 0 1 force
execute at @a[gamemode=!creative,gamemode=!spectator,tag=seraph] run particle dust 1 1 1 1 ^0.8 ^1.8 ^-0.2 0.1 0.1 0.1 0 1 force
execute at @a[gamemode=!creative,gamemode=!spectator,tag=seraph] run particle dust 1 1 1 1 ^-0.8 ^1.8 ^-0.2 0.1 0.1 0.1 0 1 force

tag @a[tag=seraph] remove players
tag @a[tag=seraph] remove dark_seraph








