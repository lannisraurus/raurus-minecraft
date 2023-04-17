##  Misc
kill @e[type=item]
bossbar set minecraft:boss players @a
tag @a[tag=!boss,tag=!spectator,tag=!start_game,tag=!players] add players
effect give @a saturation 1000000 10 true


## PLAYER WEAPONS

tag @a[tag=choose_ls_s] add ls_s
scoreboard players set @a[tag=choose_ls_s] guard_break 0
scoreboard players set @a[tag=choose_ls_s] stamina 100
tellraw @a[tag=choose_ls_s] {"text":"You have selected Longsword/Shield. Abilities: Hold right click to block attacks.","color":"gray"}
tag @a[tag=choose_ls_s] remove fs
tag @a[tag=choose_ls_s] remove hs
tag @a[tag=choose_ls_s] remove ws

tag @a[tag=choose_fs,scores={money=200..}] add fs
tellraw @a[tag=choose_fs,scores={money=200..}] {"text":"You have selected the Flaming Sword. Abilities: Cast fire onto enemies by hitting them; right click to make a fire slash from afar.","color":"#FF3908"}
tellraw @a[tag=choose_fs,scores={money=..199}] {"text":"This weapon requires 200 points to wield.","color":"#FF3908"}
tag @a[tag=choose_fs,scores={money=200..}] remove ls_s
tag @a[tag=choose_fs,scores={money=200..}] remove hs
tag @a[tag=choose_fs,scores={money=200..}] remove ws

tag @a[tag=choose_hs,tag=has_holy_sword] add hs
scoreboard players set @a[tag=choose_hs] hs_cooldown 0
tellraw @a[tag=choose_hs,tag=has_holy_sword] {"text":"You have selected the Holy Sword. Abilities: Weaken the enemy with normal attacks; right click to emmit a shockwave of light that stuns enemies.","color":"white"}
tellraw @a[tag=choose_hs,tag=!has_holy_sword] {"text":"This weapon has not been acquired yet.","color":"white"}
tag @a[tag=choose_hs,tag=has_holy_sword] remove ls_s
tag @a[tag=choose_hs,tag=has_holy_sword] remove fs
tag @a[tag=choose_hs,tag=has_holy_sword] remove ws

tag @a[tag=choose_ws,tag=has_wraith_sword] add ws
scoreboard players set @a[tag=choose_ws] ws_hit 0
scoreboard players set @a[tag=choose_ws] wraith_cooldown 0
tellraw @a[tag=choose_ws,tag=has_wraith_sword] {"text":"You have selected the Wraith Sword. Abilities: Increased damage the longer one attacks; right click to use a life steal ability.","color":"#75001F"}
tellraw @a[tag=choose_ws,tag=!has_wraith_sword] {"text":"This weapon has not been acquired yet.","color":"#75001F"}
tag @a[tag=choose_ws] remove ls_s
tag @a[tag=choose_ws] remove fs
tag @a[tag=choose_ws] remove hs








tag @a[tag=choose_ls_s] remove choose_ls_s
tag @a[tag=choose_fs] remove choose_fs
tag @a[tag=choose_hs] remove choose_hs
tag @a[tag=choose_ws] remove choose_ws







## LONGSWORD AND SHIELD
tag @a[nbt={Inventory:[{Slot:-106b,tag:{shield:1b}}]}] add shield
replaceitem entity @a[tag=ls_s] hotbar.0 iron_sword{display:{Name:'{"text":"Longsword","color":"#D4D4D4","bold":true}'},Unbreakable:1b,CustomModelData:2,m_shield:1b,Enchantments:[{id:"minecraft:sweeping",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1701136406,-2146809669,-1772008123,-572337908],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.5,Operation:0,UUID:[I;535752415,-503624331,-1398051088,-607999026],Slot:"mainhand"}]} 1
replaceitem entity @a[tag=ls_s,scores={guard_break=..0},tag=!shield] weapon.offhand shield{shield:1b,display:{Name:'{"text":"Medium Shield","color":"#D4D4D4","bold":true}'},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:10s}]} 1
replaceitem entity @a[tag=ls_s,scores={guard_break=1..}] weapon.offhand air
tag @a[nbt={SelectedItem:{tag:{m_shield:1b}}}] add m_shield
execute as @a[tag=m_shield] run title @s actionbar ["",{"text":"Stamina: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"stamina"},"bold":true,"color":"dark_green"}]
tag @a remove m_shield
tag @a remove shield
scoreboard players remove @a[tag=ls_s,scores={guard_break=1..}] guard_break 1
scoreboard players add @a[tag=ls_s,scores={stamina=..99}] stamina_tick 1
scoreboard players add @a[tag=ls_s,scores={stamina_tick=2..}] stamina 1
scoreboard players set @a[tag=ls_s,scores={stamina_tick=2..}] stamina_tick 0
scoreboard players set @a[tag=ls_s,scores={stamina=..1}] guard_break 120
effect give @a[tag=ls_s,scores={guard_break=119..120}] blindness 5 1 true
effect give @a[tag=ls_s,scores={guard_break=119..120}] slowness 2 4 true
effect give @a[tag=ls_s,scores={guard_break=119..120}] weakness 3 4 true
execute as @a[tag=ls_s,scores={guard_break=119..120}] at @s run playsound minecraft:item.armor.equip_iron ambient @a[distance=..5] ~ ~ ~ 100 0.00
execute as @a[tag=ls_s,scores={guard_break=119..120}] at @s run playsound minecraft:item.armor.equip_iron ambient @a[distance=..5] ~ ~ ~ 100 1.00
execute as @a[tag=ls_s,scores={guard_break=119..120}] at @s run playsound minecraft:item.armor.equip_iron ambient @a[distance=..5] ~ ~ ~ 100 2.00
scoreboard players remove @a[tag=ls_s,scores={block=1..50}] stamina 10
scoreboard players remove @a[tag=ls_s,scores={block=51..100}] stamina 20
scoreboard players remove @a[tag=ls_s,scores={block=101..150}] stamina 40
scoreboard players remove @a[tag=ls_s,scores={block=151..}] stamina 60
scoreboard players set @a[tag=ls_s,scores={stamina=..-1}] stamina 0
scoreboard players set @a[tag=ls_s,scores={block=1..}] block 0

## HOLY SWORD
replaceitem entity @a[tag=hs] weapon.offhand air
replaceitem entity @a[tag=hs] hotbar.0 carrot_on_a_stick{display:{Name:'{"text":"Holy Sword","color":"#FFFFCF","bold":true}'},Unbreakable:1b,CustomModelData:4,holy_sword:1b,Enchantments:[{id:"minecraft:smite",lvl:10s},{id:"minecraft:silk_touch",lvl:1s},{id:"minecraft:loyalty",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4.5,Operation:0,UUID:[I;-1045382905,-277133766,-1590738031,8528619],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;-1978645864,-2055779715,-1159054673,-898156934],Slot:"mainhand"}]} 1
tag @a[nbt={SelectedItem:{tag:{holy_sword:1b}}}] add holy_sword
execute as @a[tag=holy_sword,scores={hs_cooldown=..799}] run title @s actionbar ["",{"text":"Charging... (","bold":true,"underlined":false,"color":"white"},{"score":{"name":"@s","objective":"hs_cooldown"},"bold":true,"underlined":false,"color":"white"},{"text":"/800)","bold":true,"underlined":false,"color":"white"}]
execute as @a[tag=holy_sword,scores={hs_cooldown=800..}] run title @s actionbar ["",{"text":"Charged! (","bold":true,"underlined":true,"color":"white"},{"score":{"name":"@s","objective":"hs_cooldown"},"bold":true,"underlined":true,"color":"white"},{"text":"/800)","bold":true,"underlined":true,"color":"white"}]
execute as @a[tag=holy_sword,scores={hit_hs=1..}] at @s run particle cloud ^ ^1 ^2 0 0 0 0.01 2 force
execute as @a[tag=holy_sword,scores={hit_hs=1..}] at @s run particle end_rod ^ ^1 ^2 0.2 0.2 0.2 0.01 3 force
execute as @a[tag=holy_sword,scores={hit_hs=1..}] at @s run effect give @e[distance=..4,tag=!players] weakness 2 0
scoreboard players set @a[tag=hs,scores={hit_hs=1..}] hit_hs 0
scoreboard players add @a[tag=hs,scores={hs_cooldown=..799}] hs_cooldown 1

scoreboard players set @a[tag=holy_sword,scores={use_ability=1.. , hs_cooldown=800..}] hs_active 60
scoreboard players set @a[tag=holy_sword,scores={use_ability=1.. , hs_cooldown=800..}] hs_cooldown 0
scoreboard players set @a[tag=holy_sword,scores={use_ability=1..}] use_ability 0
tag @a remove holy_sword


effect give @a[scores={hs_active=1..}] slowness 1 3 true
execute at @a[scores={hs_active=1..}] run playsound minecraft:block.beacon.ambient ambient @a[distance=..8] ~ ~ ~ 10 2.00
execute at @a[scores={hs_active=1..}] run playsound minecraft:block.beacon.ambient ambient @a[distance=..8] ~ ~ ~ 10 1.00
execute at @a[scores={hs_active=1..}] run playsound minecraft:block.beacon.ambient ambient @a[distance=..8] ~ ~ ~ 10 0.00
execute at @a[scores={hs_active=1..}] run particle end_rod ~ ~ ~ 1 1 1 0.1 10 force
execute at @a[scores={hs_active=1..}] run particle dust 1 1 1 1 ~ ~ ~ 0.5 0.5 0.5 0 2 force
execute as @a[scores={hs_active=1..30}] at @s run tp @s @s
execute at @a[scores={hs_active=1..2}] run scoreboard players remove @a[tag=boss,distance=..6] boss_health 100
execute at @a[scores={hs_active=1..2}] run effect give @e[tag=!players,distance=..6] slowness 3 10
execute at @a[scores={hs_active=1..2}] run effect give @e[tag=!players,distance=..6] blindness 3 10
execute at @a[scores={hs_active=1..2}] run effect give @e[tag=!players,distance=..6] weakness 3 10
execute at @a[scores={hs_active=1..2}] run particle cloud ~ ~ ~ 2 2 2 3 120 force
execute at @a[scores={hs_active=1..2}] run particle dust 1 1 1 10 ~ ~ ~ 2 2 2 3 120 force
execute at @a[scores={hs_active=1..2}] run particle flash ~ ~ ~ 3 3 3 0 120 force
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..10] ~ ~ ~ 100 0.00
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..10] ~ ~ ~ 100 0.50
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..10] ~ ~ ~ 100 1.00
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..10] ~ ~ ~ 100 1.50
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.deactivate ambient @a[distance=..10] ~ ~ ~ 100 2.00
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.activate ambient @a[distance=..10] ~ ~ ~ 100 0.00
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.activate ambient @a[distance=..10] ~ ~ ~ 100 0.50
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.activate ambient @a[distance=..10] ~ ~ ~ 100 1.00
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.activate ambient @a[distance=..10] ~ ~ ~ 100 1.50
execute at @a[scores={hs_active=1..2}] run playsound minecraft:block.beacon.activate ambient @a[distance=..10] ~ ~ ~ 100 2.00


scoreboard players remove @a[scores={hs_active=1..}] hs_active 1










## WRAITH SWORD
tag @a[nbt={SelectedItem:{tag:{wraith_sword:1b}}}] add wraith_sword
replaceitem entity @a[tag=ws] hotbar.0 carrot_on_a_stick{display:{Name:'{"text":"Wraith Sword","color":"#75001F","bold":true}',Lore:['{"text":"This blood seeking sword sharpens upon being in contact with fresh blood...","color":"#960028"}']},Unbreakable:1b,CustomModelData:5,wraith_sword:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:piercing",lvl:5s},{id:"minecraft:soul_speed",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;-1074167756,-980139212,-2068538500,1489491779],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.5,Operation:0,UUID:[I;1693144116,-73840312,-1074674561,-1857459333],Slot:"mainhand"}]} 1
replaceitem entity @a[tag=ws] weapon.offhand air
scoreboard players add @a[scores={ws_hit=1..}] ws_hit_remove 1
scoreboard players remove @a[scores={ws_hit_remove=4..}] ws_hit 1
scoreboard players remove @a[scores={ws_hit_remove=4.. , ws_hit=20..}] ws_hit 2
scoreboard players set @a[scores={ws_hit_remove=4..}] ws_hit_remove 0
scoreboard players set @a[tag=ws,scores={ws_hit=85..}] ws_hit 84
effect give @a[scores={ws_hit=20..},tag=wraith_sword] strength 5 0 true
effect give @a[scores={ws_hit=80..},tag=wraith_sword] strength 5 1 true
execute at @a[scores={ws_hit=1.. , ws_hit_e=1..},tag=wraith_sword] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..3] ~ ~ ~ 1 0.00
execute at @a[scores={ws_hit=20.. , ws_hit_e=1..},tag=wraith_sword] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..3] ~ ~ ~ 1 1.00
execute at @a[scores={ws_hit=80.. , ws_hit_e=1..},tag=wraith_sword] run playsound minecraft:entity.ender_dragon.hurt ambient @a[distance=..3] ~ ~ ~ 1 2.00
scoreboard players set @a[tag=ws,scores={ws_hit_e=1..}] ws_hit_e 0
execute at @a[scores={ws_hit=1..},tag=wraith_sword] run particle entity_effect ^-0.5 ^0.7 ^ 0.4 0 0 1 0 force
execute at @a[scores={ws_hit=20..},tag=wraith_sword] run particle entity_effect ^-0.5 ^0.7 ^ 0.7 0 0 1 0 force
execute at @a[scores={ws_hit=80..},tag=wraith_sword] run particle entity_effect ^-0.5 ^0.7 ^ 1 0 0 1 0 force

scoreboard players add @a[tag=ws,scores={wraith_cooldown=..799}] wraith_cooldown 1
execute as @a[tag=wraith_sword,scores={wraith_cooldown=..799}] run title @s actionbar ["",{"text":"Charging... (","bold":true,"underlined":false,"color":"#75001F"},{"score":{"name":"@s","objective":"wraith_cooldown"},"bold":true,"underlined":false,"color":"#75001F"},{"text":"/800)","bold":true,"underlined":false,"color":"#75001F"}]
execute as @a[tag=wraith_sword,scores={wraith_cooldown=800..}] run title @s actionbar ["",{"text":"Charged! (","bold":true,"underlined":true,"color":"#75001F"},{"score":{"name":"@s","objective":"wraith_cooldown"},"bold":true,"underlined":true,"color":"#75001F"},{"text":"/800)","bold":true,"underlined":true,"color":"#75001F"}]
scoreboard players set @a[tag=wraith_sword,scores={use_ability=1.. , wraith_cooldown=800..}] wraith_active 30
scoreboard players set @a[tag=wraith_sword,scores={use_ability=1.. , wraith_cooldown=800..}] wraith_cooldown 0
scoreboard players set @a[tag=wraith_sword,scores={use_ability=1..}] use_ability 0
scoreboard players remove @a[scores={wraith_active=1..}] wraith_active 1
effect give @a[scores={wraith_active=20..30}] slowness 1 10 true
execute at @a[scores={wraith_active=20}] run playsound minecraft:entity.player.attack.sweep ambient @a[distance=..6] ~ ~ ~ 0.5 0.00
execute as @a[scores={wraith_active=1..10}] at @s rotated ~ 0 if block ^ ^1 ^1 air if block ^ ^1 ^2 air run tp @s ^ ^ ^2
execute at @a[scores={wraith_active=1..10}] run particle falling_dust crimson_hyphae ~ ~1 ~ 0.5 0 0.5 10 100 force
execute at @a[scores={wraith_active=1..10}] run particle minecraft:sweep_attack ~ ~1 ~ 1.2 1.2 1.2 0 2 force
execute as @a[scores={wraith_active=1..10}] at @s if entity @a[tag=boss,distance=..3] run effect give @s instant_health 1 0 true
execute at @a[scores={wraith_active=1..10}] run effect give @e[tag=!players,distance=..3] wither 2 5 true
execute at @a[scores={wraith_active=1..10}] run scoreboard players remove @a[tag=boss,distance=..3] boss_health 10
execute at @a[scores={wraith_active=1..10}] run playsound minecraft:entity.player.attack.sweep ambient @a[distance=..6] ~ ~ ~ 0.5 2.00
execute at @a[scores={wraith_active=1..10}] run playsound minecraft:entity.player.attack.sweep ambient @a[distance=..6] ~ ~ ~ 0.5 1.00
execute at @a[scores={wraith_active=1..10}] run playsound minecraft:entity.player.attack.sweep ambient @a[distance=..6] ~ ~ ~ 0.5 0.00


tag @a remove wraith_sword





## FIRE SWORD


replaceitem entity @a[tag=fs] weapon.offhand air
replaceitem entity @a[tag=fs] hotbar.0 carrot_on_a_stick{display:{Name:'{"text":"Flaming Sword","color":"#DE4A00","bold":true}',Lore:['{"text":"Dear flame...","color":"#FF4D00"}']},Unbreakable:1b,CustomModelData:6,fire_sword:1b,Enchantments:[{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:fire_aspect",lvl:1s},{id:"minecraft:flame",lvl:2s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-1483538046,1638550550,-1746150998,1670942817],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;-2119805614,935545617,-1893058113,-940146051],Slot:"mainhand"}]} 1











## TEAM

team join players @a[tag=players]
team join spectator @a[tag=spectator]
team join boss @a[tag=boss]



##Artifacts

particle dust 1 1 1 1 213 71.2 1 0 0 0 0 1 force
execute positioned 213 71.2 1 run tellraw @a[distance=..1,tag=!has_holy_sword] {"text":"Acquired Holy Sword","bold":"true"}
execute positioned 213 71.2 1 run tag @a[distance=..1,tag=!has_holy_sword] add has_holy_sword

particle dust 0 0 0 1 199 61.2 -21.0 0 0 0 0 1 force
execute positioned 199 61.2 -21.0 run tellraw @a[distance=..1,tag=!has_wraith_sword] {"text":"Acquired Wraith Sword","bold":"true","color":"dark_gray"}
execute positioned 199 61.2 -21.0 run tag @a[distance=..1,tag=!has_wraith_sword] add has_wraith_sword

## SPECTATOR

gamemode spectator @a[tag=spectator]
tag @a[tag=spectator] remove start_game
tag @a[tag=spectator] remove players
execute at @a[tag=spectator] run particle dust 0.5 0.5 0 0.5 ~ ~2 ~ 0 0 0 0 1 force


## START GAME

execute if score boss ready matches 1.. if score players ready matches 1.. run tag @a[tag=!spectator] add start_game
execute if score boss ready matches 1.. if score players ready matches 1.. run scoreboard players set start_game start_game 1

execute if score start_game start_game matches 1.. run scoreboard players set boss ready 0
execute if score start_game start_game matches 1.. run scoreboard players set players ready 0

execute if score start_game start_game matches 1.. run scoreboard players add start_game start_game 1
execute if score start_game start_game matches 1..2 run title @a title {"text":"Game starting","color":"blue","bold":"true"}
execute if score start_game start_game matches 60..120 run particle minecraft:squid_ink 224 70 -13 1.5 1.5 1.5 0 30 force
execute if score start_game start_game matches 60..62 run tp @a[tag=players,tag=start_game] 189 65 -13 -90 0
execute if score start_game start_game matches 119..120 run tp @a[tag=boss,tag=start_game] 224 70 -13 90 0
execute if score start_game start_game matches 120.. run scoreboard players set start_game start_game 0


## BOSS WIN

execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run tp @a 28 77 28
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run scoreboard players add @a[tag=boss] money 200
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run title @a[tag=!boss] title {"text":"You have been defeated","color":"dark_red"}
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run title @a[tag=boss] title {"text":"Enemies defeated","color":"dark_green"}
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run bossbar set minecraft:boss value 2000
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] as @a at @s run playsound minecraft:entity.wither.death ambient @s ~ ~ ~ 1 0.50
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run gamemode adventure @a
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run clear @a
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run effect clear @a
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run effect give @a instant_health 1 10 true
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run scoreboard players set boss ready 0
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run scoreboard players set players ready 0
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run scoreboard players set @a boss_health 2000
execute if score start_game start_game matches 0 unless entity @a[tag=players,tag=start_game] if entity @a[tag=boss,tag=start_game] run tag @a add reset



## PLAYERS WIN

execute if entity @a[scores={boss_health=..0}] at @a[tag=boss] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute if entity @a[scores={boss_health=..0}] run kill @a[tag=boss]
execute if entity @a[scores={boss_health=..0}] run tp @a[tag=boss] 28 77 28

execute if entity @a[scores={boss_health=..0}] run tag @a[tag=!boss] add tp_cd
scoreboard players add @a[tag=tp_cd] tp_cd 1
tp @a[tag=tp_cd,scores={tp_cd=160..}] 28 77 28
tag @a[scores={tp_cd=160..}] remove tp_cd
scoreboard players set @a[scores={tp_cd=160..}] tp_cd 0

execute if entity @a[scores={boss_health=..0}] run scoreboard players add @a[tag=player] money 100
execute if entity @a[scores={boss_health=..0}] run title @a[tag=players] title {"text":"Enemy defeated","color":"dark_green"}
execute if entity @a[scores={boss_health=..0}] run title @a[tag=boss] title {"text":"You were vanquished","color":"dark_red"}
execute if entity @a[scores={boss_health=..0}] run bossbar set minecraft:boss value 2000
execute if entity @a[scores={boss_health=..0}] as @a at @s run playsound minecraft:music_disc.13 ambient @s ~ ~ ~ 0.1 1.01
execute if entity @a[scores={boss_health=..0}] run gamemode adventure @a
execute if entity @a[scores={boss_health=..0}] run clear @a
execute if entity @a[scores={boss_health=..0}] run effect clear @a
execute if entity @a[scores={boss_health=..0}] run effect give @a instant_health 1 10 true
execute if entity @a[scores={boss_health=..0}] run scoreboard players set boss ready 0
execute if entity @a[scores={boss_health=..0}] run scoreboard players set players ready 0
execute if entity @a[scores={boss_health=..0}] run tag @a add reset
execute if entity @a[scores={boss_health=..0}] run scoreboard players set @a boss_health 2000



## RESET TAGS

tag @a[tag=reset] remove start_game
tag @a[tag=reset] remove boss
tag @a[tag=reset] remove spectator
tag @a[tag=reset] add players
effect clear @a[tag=reset]
tag @a[tag=reset] remove reset


## PLAYERS DEATH

tp @a[tag=start_game,tag=players,scores={player_death=1..}] 209 78 -12
tag @a[tag=start_game,tag=players,scores={player_death=1..}] add spectator
title @a[tag=start_game,tag=players,scores={player_death=1..}] title {"text":"You Died","color":"dark_red"}

tag @a[tag=start_game,tag=players,scores={player_death=1..}] add remove_tags_death
tag @a[tag=remove_tags_death] remove start_game
tag @a[tag=remove_tags_death] remove players
tag @a[tag=remove_tags_death] remove remove_tags_death

scoreboard players set @a[scores={player_death=1..}] player_death 0










##  BOSS

execute as @a[tag=boss] run attribute @s minecraft:generic.armor base set 5000
execute as @a[tag=!boss] run attribute @s minecraft:generic.armor base set 0
execute as @a[tag=boss] run attribute @s minecraft:generic.armor_toughness base set 5000
execute as @a[tag=!boss] run attribute @s minecraft:generic.armor_toughness base set 0
effect give @a[tag=boss] instant_health 1000000 100 true
execute as @a[tag=boss] store result bossbar minecraft:boss value run scoreboard players get @s boss_health
execute as @a[scores={boss_hurt=1.. , boss_health=1..},tag=boss] run scoreboard players remove @s boss_health 1
execute as @a[scores={boss_hurt=1..}] run scoreboard players remove @s boss_hurt 1

tag @a[tag=!boss] remove abyss

tag @a[tag=boss] remove ls_s
tag @a[tag=boss] remove hs
tag @a[tag=boss] remove fs
tag @a[tag=boss] remove ws





## ITEM FRAMES

execute unless entity @e[tag=frame_1] run summon item_frame 34 79 36 {Invisible:1b,Facing:4b,ItemRotation:0b,Invulnerable:1b,Fixed:1b,Tags:["frame_1"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Longsword/Shield","color":"#CCCCCC","bold":true}'},Unbreakable:0b,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;670025772,869748204,-1628340683,-1095028496]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-10,Operation:0,UUID:[I;-969912212,-1754445337,-1880404442,-1911087576]}]}}}
execute unless entity @e[tag=frame_7] run summon item_frame 34 79 36 {Invisible:1b,Facing:4b,ItemRotation:0b,Invulnerable:1b,Fixed:1b,Tags:["frame_7"],Item:{id:"minecraft:shield",Count:1b,tag:{display:{Name:'{"text":"Longsword/Shield","color":"#CCCCCC","bold":true}'},Unbreakable:0b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;670025772,869748204,-1628340683,-1095028496]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-10,Operation:0,UUID:[I;-969912212,-1754445337,-1880404442,-1911087576]}]}}}
execute unless entity @e[tag=frame_2] run summon item_frame 34 79 37 {Invisible:1b,Facing:4b,ItemRotation:0b,Invulnerable:1b,Fixed:1b,Tags:["frame_2"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Holy Sword","color":"white","bold":true}'},Unbreakable:0b,CustomModelData:4,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;670025772,869748204,-1628340683,-1095028496]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-10,Operation:0,UUID:[I;-969912212,-1754445337,-1880404442,-1911087576]}]}}}
execute unless entity @e[tag=frame_3] run summon item_frame 34 79 38 {Invisible:1b,Facing:4b,ItemRotation:0b,Invulnerable:1b,Fixed:1b,Tags:["frame_3"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Wraith Sword","color":"dark_red","bold":true}'},Unbreakable:0b,CustomModelData:5,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;670025772,869748204,-1628340683,-1095028496]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-10,Operation:0,UUID:[I;-969912212,-1754445337,-1880404442,-1911087576]}]}}}
execute unless entity @e[tag=frame_4] run summon item_frame 34 79 39 {Invisible:1b,Facing:4b,ItemRotation:0b,Invulnerable:1b,Fixed:1b,Tags:["frame_4"],Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Flaming Sword","color":"#FF3908","bold":true}'},Unbreakable:0b,CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;670025772,869748204,-1628340683,-1095028496]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-10,Operation:0,UUID:[I;-969912212,-1754445337,-1880404442,-1911087576]}]}}}
execute unless entity @e[tag=frame_5] run summon item_frame 34 79 40 {Invisible:1b,Facing:4b,ItemRotation:0b,Invulnerable:1b,Fixed:1b,Tags:["frame_5"],Item:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Longsword/Crossbow","color":"#CCCCCC","bold":true}'},Unbreakable:0b,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;670025772,869748204,-1628340683,-1095028496]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-10,Operation:0,UUID:[I;-969912212,-1754445337,-1880404442,-1911087576]}]}}}
execute unless entity @e[tag=frame_6] run summon item_frame 34 79 40 {Invisible:1b,Facing:4b,ItemRotation:0b,Invulnerable:1b,Fixed:1b,Tags:["frame_6"],Item:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"Longsword/Crossbow","color":"#CCCCCC","bold":true}'},Unbreakable:0b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;670025772,869748204,-1628340683,-1095028496]},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-10,Operation:0,UUID:[I;-969912212,-1754445337,-1880404442,-1911087576]}]}}}



##  ARMOR STANDS

execute positioned 28 78 23 unless entity @e[tag=turn_boss1,type=armor_stand] run summon armor_stand ~ ~0.4 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["turn_boss1"],CustomName:'{"text":"Become Boss","color":"dark_purple","bold":true}'}
execute positioned 28 78 23 unless entity @e[tag=turn_boss2,type=armor_stand] run summon armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["turn_boss2"],CustomName:'{"text":"(Right Click)","color":"dark_purple","bold":false}'}
execute positioned 28 78 23 unless entity @e[tag=turn_boss,type=villager] run summon villager ~ ~-0.4 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Health:1000f,Tags:["turn_boss"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}],VillagerData:{profession:"minecraft:nitwit"}}

execute as @a[scores={talk=1..}] at @s if entity @e[tag=turn_boss,type=villager,distance=..3] unless entity @a[tag=boss] run tag @s add boss_tp
execute as @a[scores={talk=1..}] at @s if entity @e[tag=turn_boss,type=villager,distance=..3] if entity @a[tag=boss] run tellraw @s {"text":"[X] There is already a boss","bold":"true","color":"red"}
tag @a[tag=boss_tp] add boss
tag @a[tag=boss_tp] remove players
clear @a[tag=boss_tp]
tp @a[tag=boss_tp] 28 83 16 180 0
title @a[tag=boss_tp] title {"text":"You are the boss","color":"red"}
tag @a[tag=boss_tp] remove boss_tp


execute unless entity @e[type=armor_stand,tag=abyss_stand] run summon armor_stand 25 83 12 {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:1b,Marker:1b,PersistenceRequired:1b,Health:1000f,Tags:["abyss_stand"],DisabledSlots:4144959,HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b},{id:"minecraft:netherite_leggings",Count:1b},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-383670597,1886404836,-1521446583,-553755254],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2ZiZjJlMGE0YjY2ZDA2MTlhZmE4ZjNmNDZhNjQ4M2EzZWNmZjI2NzkxNTEzMjYzNjk3OWM3Njg3MGMxNWFlNiJ9fX0="}]}}}}]}
execute unless entity @e[type=villager,tag=choose_abyss] run summon villager 25 83.5 12 {NoGravity:1b,NoAI:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Health:1000f,Tags:["choose_abyss"],CustomName:'{"text":"Abyssal Kyrax","color":"dark_purple","bold":true}',ActiveEffects:[{Id:11b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
execute unless entity @e[type=armor_stand,tag=abyss_stand_2] run summon armor_stand 25 85.2 12 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["abyss_stand_2"],CustomName:'{"text":"Abyssal Kyrax","color":"dark_purple","bold":true}'}
execute unless entity @e[type=armor_stand,tag=abyss_stand_3] run summon armor_stand 25 85 12 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["abyss_stand_3"],CustomName:'{"text":"(Right Click)","color":"dark_purple","bold":false}'}
execute as @a[scores={talk=1..}] at @s if entity @e[tag=choose_abyss,type=villager,distance=..2.5] run tag @s add abyss
execute as @a[scores={talk=1..}] at @s if entity @e[tag=choose_abyss,type=villager,distance=..2.5] run tellraw @s {"text":"[Selected Abyssal Kyrax]","color":"dark_purple"}
execute as @a[scores={talk=1..}] at @s if entity @e[tag=choose_abyss,type=villager,distance=..2.5] run playsound minecraft:entity.ender_dragon.growl ambient @s ~ ~ ~ 10 0.00 

execute unless entity @e[type=armor_stand,tag=ready_boss_1] run summon armor_stand 28 84 12 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ready_boss_1"],CustomName:'{"text":"Ready","color":"#73DEFF","bold":true}'}
execute unless entity @e[type=armor_stand,tag=ready_boss_2] run summon armor_stand 28 83.8 12 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ready_boss_2"],CustomName:'{"text":"(Right Click)","color":"#73DEFF","bold":false}'}
execute unless entity @e[type=villager,tag=ready_boss] run summon villager 28 83 12 {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Health:1000f,Tags:["ready_boss"],CustomName:'{"text":"","color":"dark_purple","bold":true}',ActiveEffects:[{Id:11b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
execute as @a[scores={talk=1..}] at @s if entity @e[tag=ready_boss,type=villager,distance=..2.5] run title @a title {"text":"Boss is Ready","color":"aqua"}
execute as @a[scores={talk=1..}] at @s if entity @e[tag=ready_boss,type=villager,distance=..2.5] unless score boss ready matches 1 as @a at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~
execute as @a[scores={talk=1..}] at @s if entity @e[tag=ready_boss,type=villager,distance=..2.5] run scoreboard players set boss ready 1

execute unless entity @e[type=armor_stand,tag=ready_players_1] run summon armor_stand 28 78 39 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ready_players_1"],CustomName:'{"text":"Ready","color":"gold","bold":true}'}
execute unless entity @e[type=armor_stand,tag=ready_players_2] run summon armor_stand 28 77.8 39 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ready_players_2"],CustomName:'{"text":"(Right Click)","color":"#FFC936","bold":false}'}
execute unless entity @e[type=villager,tag=ready_players] run summon villager 28 77 39 {NoAI:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Health:1000f,Tags:["ready_players"],CustomName:'{"text":"","color":"dark_purple","bold":true}',ActiveEffects:[{Id:11b,Amplifier:100b,Duration:1000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:1000}]}
execute as @a[scores={talk=1..}] at @s if entity @e[tag=ready_players,type=villager,distance=..2.5] run title @a title {"text":"Players are Ready","color":"gold"}
execute as @a[scores={talk=1..}] at @s if entity @e[tag=ready_players,type=villager,distance=..2.5] unless score players ready matches 1 as @a at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 10 2.00
execute as @a[scores={talk=1..}] at @s if entity @e[tag=ready_players,type=villager,distance=..2.5] unless score players ready matches 1 as @a at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 10 1.00
execute as @a[scores={talk=1..}] at @s if entity @e[tag=ready_players,type=villager,distance=..2.5] unless score players ready matches 1 as @a at @s run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 10 0.00
execute as @a[scores={talk=1..}] at @s if entity @e[tag=ready_players,type=villager,distance=..2.5] run scoreboard players set players ready 1


execute unless entity @e[type=armor_stand,tag=armours] run summon armor_stand 22 80 41 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["armours"],CustomName:'{"text":"Armours","color":"#FFF9D4","bold":true,"underlined":true}'}
execute unless entity @e[type=armor_stand,tag=weapons] run summon armor_stand 34 80 41 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["weapons"],CustomName:'{"text":"Weapons","color":"#FFBE9E","bold":true,"underlined":true}'}






scoreboard players set @a[scores={talk=1..}] talk 0









##  Abyssal Kyrax


replaceitem entity @a[tag=abyss] weapon.offhand air
replaceitem entity @a[tag=abyss] hotbar.0 iron_sword{display:{Name:'{"text":"Abyssal Greatsword","color":"dark_gray","bold":true}',Lore:['{"text":"It is too big to be called a sword...","color":"gray"}']},Unbreakable:1b,CustomModelData:1,abyss_sword:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:sweeping",lvl:10s}]} 1
replaceitem entity @a[tag=abyss] armor.head player_head{display:{Name:'{"text":"Arcane Helmet","color":"dark_purple","bold":true}',Lore:['{"text":"A heavy helmet for a heavy soul","color":"light_purple"}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],SkullOwner:{Id:[I;-383670597,1886404836,-1521446583,-553755254],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2ZiZjJlMGE0YjY2ZDA2MTlhZmE4ZjNmNDZhNjQ4M2EzZWNmZjI2NzkxNTEzMjYzNjk3OWM3Njg3MGMxNWFlNiJ9fX0="}]}}} 1
replaceitem entity @a[tag=abyss] armor.chest netherite_chestplate{display:{Name:'{"text":"Arcane Armour","color":"dark_purple","bold":true}',Lore:['{"text":"It is too heavy for any human to wear","color":"light_purple"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[tag=abyss] armor.legs netherite_leggings{display:{Name:'{"text":"Arcane Armour","color":"dark_purple","bold":true}',Lore:['{"text":"It is too heavy for any human to wear","color":"light_purple"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
replaceitem entity @a[tag=abyss] armor.feet netherite_boots{display:{Name:'{"text":"Arcane Armour","color":"dark_purple","bold":true}',Lore:['{"text":"It is too heavy for any human to wear","color":"light_purple"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1




execute as @a[tag=abyss] run attribute @s minecraft:generic.attack_speed base set 3.4
execute as @a[tag=!abyss,tag=!boss] run attribute @s minecraft:generic.attack_speed base set 4
execute as @a[tag=abyss] run attribute @s minecraft:generic.movement_speed base set 0.08
execute as @a[tag=!abyss,tag=!boss] run attribute @s minecraft:generic.movement_speed base set 0.1


execute at @a[tag=abyss] run particle dust 0 0 0 0.8 ^1 ^1.5 ^ 0 0 0 0 1 force
execute at @a[tag=abyss] run particle dust 0 0 0 0.8 ^-1 ^1.5 ^ 0 0 0 0 1 force
execute at @a[tag=abyss] run particle dust 0 0 0 0.8 ^0.6 ^2 ^ 0 0 0 0 1 force
execute at @a[tag=abyss] run particle dust 0 0 0 0.8 ^-0.6 ^2 ^ 0 0 0 0 1 force












tag @a[nbt={SelectedItem:{tag:{abyss_sword:1b}}}] add abyss_sword

title @a[tag=abyss_sword] actionbar {"text":"WEAPON: ABYSSAL GREATSWORD","color":"dark_purple","bold":"true"}

execute as @a[tag=abyss_sword,scores={hit=1.. , hit_succ=..0}] at @s run summon armor_stand ^2.2 ^ ^1.2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["swing","swing0"]}
execute as @e[type=armor_stand,tag=swing0] at @s facing entity @p[tag=abyss_sword] eyes run tp @s ^1 ^ ^
execute as @a[tag=abyss_sword,scores={hit=1.. , hit_succ=1}] at @s run summon armor_stand ^ ^4 ^2.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["swing","swing1"]}
execute as @e[type=armor_stand,tag=swing1] at @s facing entity @p[tag=abyss_sword] eyes run tp @s ~ ~-1 ~
execute as @a[tag=abyss_sword,scores={hit=1.. , hit_succ=2..}] at @s run summon armor_stand ^-1.5 ^2.5 ^1.5 {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["swing","swing2"]}
execute as @e[type=armor_stand,tag=swing2] at @s facing entity @p[tag=abyss_sword] eyes run tp @s ^-0.6 ^-0.6 ^

execute as @a[tag=abyss_sword,scores={hit=1.. , hit_succ=..0}] at @s run tp @s ~ ~ ~ ~9.5 ~
execute as @a[tag=abyss_sword,scores={hit=1.. , hit_succ=1}] at @s run tp @s ~ ~ ~ ~ ~9.5
execute as @a[tag=abyss_sword,scores={hit=1.. , hit_succ=2..}] at @s run tp @s ~ ~ ~ ~-8 ~8


scoreboard players add @e[tag=swing,type=armor_stand] life 1
kill @e[tag=swing,scores={life=6..}]

execute at @e[tag=swing,type=armor_stand] run particle squid_ink ~ ~1 ~ 0.1 0.1 0.1 0.1 3 force
execute at @e[tag=swing,type=armor_stand] run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0 1 force


execute at @e[tag=swing,type=armor_stand] run effect give @e[distance=..1.5] wither 6 1 true
execute at @a[tag=abyss] run particle dust 0 0 0 2 ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0 1 force


scoreboard players set @a[tag=abyss_sword,scores={hit=1..}] hit_succ_timer 40
scoreboard players set @a[scores={hit_succ_timer=..0}] hit_succ 0
scoreboard players set @a[scores={hit_succ=3..}] hit_succ 0
scoreboard players add @a[tag=abyss_sword,scores={hit=1..}] hit_succ 1
scoreboard players remove @a[scores={hit_succ_timer=1..}] hit_succ_timer 1

execute at @a[tag=abyss_sword,scores={hit=1..}] run playsound minecraft:entity.wither.hurt ambient @a[distance=..6] ~ ~ ~ 0.2 0.00
execute at @a[tag=abyss_sword,scores={hit=1..}] run playsound minecraft:entity.wither.hurt ambient @a[distance=..6] ~ ~ ~ 0.2 1.00
execute at @a[tag=abyss_sword,scores={hit=1..}] run playsound minecraft:entity.wither.hurt ambient @a[distance=..6] ~ ~ ~ 0.2 2.00

scoreboard players set @a hit 0
tag @a remove abyss_sword