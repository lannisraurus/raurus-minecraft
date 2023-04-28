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




# interstice warrior bow


execute as @a[tag=interstice_warrior,nbt={SelectedItem:{id:"minecraft:bow"}}] at @s unless entity @e[tag=interstice_warrior_active,distance=..1] run summon interaction ~ ~ ~ {height:0.5f,Tags:["interstice_warrior_active"]}
execute as @e[tag=interstice_warrior_active] at @s run tp @s @a[limit=1,sort=nearest,distance=..1]
execute as @e[tag=interstice_warrior_active] at @s unless entity @a[distance=..0.1,limit=1,sort=nearest,nbt={SelectedItem:{id:"minecraft:bow"}}] run kill @s

execute as @e[tag=interstice_warrior_active] on target run tag @s[tag=interstice_warrior,scores={mana=50..}] add interstice_warrior_ability
execute as @e[tag=interstice_warrior_active] on target at @s run playsound minecraft:block.beacon.activate ambient @a[distance=..5] ~ ~ ~ 10 2
execute as @e[tag=interstice_warrior_active] on target at @s run particle enchant ~ ~ ~ 1 1 1 0.2 80 force
execute as @e[tag=interstice_warrior_active] on target run scoreboard players remove @s[tag=interstice_warrior,scores={mana=50..}] mana 50

execute as @a[tag=interstice_warrior_ability,scores={use_bow=1..}] at @s run ride @s mount @e[type=arrow,distance=..5,limit=1,sort=nearest]
tag @a[tag=interstice_warrior_ability,scores={use_bow=1..}] remove interstice_warrior_ability

tag @a[scores={use_bow=1..}] remove interstice_warrior_ability









## passive insanity

scoreboard players add @a lunacy_time 1

execute as @a[scores={lunacy_time=3000..},tag=!ghost] at @s run summon bat ^ ^ ^-4 {Silent:1b,DeathLootTable:"raurus:entities/abyss_mob",Health:2f,Tags:["insanity_orb"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:20000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:2}]}
execute at @e[tag=insanity_orb,type=bat] run particle witch ~ ~ ~ 0 0 0 0 5 force @a[tag=interstice_warrior]
execute at @e[tag=insanity_orb,type=bat] run particle witch ~ ~ ~ 0 0 0 0 5 force @a[tag=ghost]

execute as @e[tag=insanity_orb,type=bat] at @s unless block ~ ~ ~ air run tp @s ~ -200 ~
execute as @e[tag=insanity_orb,type=bat] at @s unless block ~ ~ ~ air run kill @s
scoreboard players add @e[tag=insanity_orb,type=bat] life 1
execute as @e[tag=insanity_orb,type=bat,scores={life=1000..}] at @s run tp @s ~ -200 ~
kill @e[tag=insanity_orb,type=bat,scores={life=1000..}]


scoreboard players set @a[scores={lunacy_time=3000..}] lunacy_time 0
















