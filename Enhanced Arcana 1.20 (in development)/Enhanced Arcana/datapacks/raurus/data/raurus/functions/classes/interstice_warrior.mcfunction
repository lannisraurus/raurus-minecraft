# interstice mechanic

scoreboard players set interstice time 0
execute if score time time matches 22700..24000 run scoreboard players set interstice time 1
execute if score time time matches 0..800 run scoreboard players set interstice time 1
execute if score time time matches 11800..14000 run scoreboard players set interstice time 1




execute if score time time matches 22700 run tellraw @a[tag=interstice_warrior] {"text":"Your soul resonates with the interstice. The dawn approaches","color":"gold"}
execute if score time time matches 11800 run tellraw @a[tag=interstice_warrior] {"text":"Your soul resonates with the interstice. The dusk approaches","color":"blue"}

execute if score time time matches 22700..24000 run effect give @a[tag=interstice_warrior] speed 1 0 true
execute if score time time matches 0..800 run effect give @a[tag=interstice_warrior] speed 1 0 true
execute if score time time matches 22700..24000 run effect give @a[tag=interstice_warrior] resistance 1 0 true
execute if score time time matches 0..800 run effect give @a[tag=interstice_warrior] resistance 1 0 true
execute if score time time matches 22700..24000 run effect give @a[tag=interstice_warrior] luck 1 2 true
execute if score time time matches 0..800 run effect give @a[tag=interstice_warrior] luck 1 2 true
execute if score time time matches 22700..24000 run scoreboard players add @a[tag=interstice_warrior] mana_tick 14
execute if score time time matches 0..800 run scoreboard players add @a[tag=interstice_warrior] mana_tick 14

execute if score time time matches 11800..14000 run effect give @a[tag=interstice_warrior] speed 1 0 true
execute if score time time matches 11800..13700 run effect give @a[tag=interstice_warrior,nbt=!{Dimension:"raurus:abyss"}] night_vision 20 0 true
execute if score time time matches 11800..14000 run effect give @a[tag=interstice_warrior] jump_boost 1 0 true
execute if score time time matches 11800..14000 run scoreboard players add @a[tag=interstice_warrior] mana_tick 14