execute at @e[tag=get_class1] as @a[distance=..1] run function fa:get_sunlight_warrior
execute at @e[tag=get_class2] as @a[distance=..1] run function fa:get_moonlight_spellsword
execute at @e[tag=get_class3] as @a[distance=..1] run function fa:get_arcane_sorcerer
execute at @e[tag=get_class4] as @a[distance=..1] run function fa:get_druid
execute at @e[tag=get_class5] as @a[distance=..1] run function fa:get_seraph_devout
execute at @e[tag=get_class6] as @a[distance=..1] run function fa:get_ophan_devout
execute at @e[tag=get_class7] as @a[distance=..1] run function fa:get_explorer
execute at @e[tag=get_class8] as @a[distance=..1] run function fa:get_blood_mage


########### zombie_morph ############
tp @e[tag=zombie_morph_a] @a[tag=zombie_morph,limit=1]




########### Seraph ############

execute as @a[tag=seraph,gamemode=!spectator] at @s run particle dust 1 1 1 1.5 ^0.3 ^1.5 ^-0.3 0.05 0.05 0.05 0.008 5 force
execute as @a[tag=seraph,gamemode=!spectator] at @s run particle dust 1 1 1 1.5 ^-0.3 ^1.5 ^-0.3 0.05 0.05 0.05 0.008 5 force
execute as @a[tag=seraph,gamemode=!spectator] at @s run particle dust 1 1 1 1.5 ^0.8 ^1.7 ^-0.3 0.05 0.05 0.05 0.008 5 force
execute as @a[tag=seraph,gamemode=!spectator] at @s run particle dust 1 1 1 1.5 ^-0.8 ^1.7 ^-0.3 0.05 0.05 0.05 0.008 5 force




########### Robert ############

item replace entity @a[tag=robert] hotbar.0 with written_book{kill:1b,display:{Name:'{"text":"Condensed Arcane Tome","color":"#6600FF","bold":true,"underlined":true}',Lore:['{"text":"Right click to open, and click the spells to use! Begginer level spells only.","color":"#9585FF"}']},mana_dmana:1b,spellbook1:1b,title:"",author:"Lannis",generation:2,pages:['[{"text":"SPELLS:\\n\\n","color":"#5500FF","bold":true},{"text":"[Ignis]","color":"#FF5E00","hoverEvent":{"action":"show_text","contents":[{"text":"Summon a wave of fire (100 mana)","color":"#FF5E00"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 1"}},{"text":"\\n\\n[Electros]","color":"#FFCE6B","hoverEvent":{"action":"show_text","contents":[{"text":"Summon a lightning bolt in front of you (70 mana, 20 dark mana)","color":"#FFCE6B"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 2"}},{"text":"\\n\\n[Levitego]","color":"#FFF7B3","hoverEvent":{"action":"show_text","contents":[{"text":"Start levitating (40 mana)","color":"#FFF7B3"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 3"}},{"text":"\\n\\n[Levitae]","color":"#F99EFF","hoverEvent":{"action":"show_text","contents":[{"text":"Make entities around you start floating (100 mana)","color":"#F99EFF"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 4"}},{"text":"\\n\\n[Arros]","color":"#9E9E9E","hoverEvent":{"action":"show_text","contents":[{"text":"Summon a cloud of arrows in the direction where you are looking (60 mana. 20 dark mana)","color":"#9E9E9E"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 5"}},{"text":"\\n\\n[Arcanae]","color":"#404DFF","hoverEvent":{"action":"show_text","contents":[{"text":"Shoot a damaging arcane orb (100 mana, 100 dark mana)","color":"#404DFF"}]},"clickEvent":{"action":"run_command","value":"/trigger spells1 set 6"}}]']} 1

effect give @a[tag=robert] resistance 1 2 true

effect clear @a[tag=robert] invisibility

execute at @a[tag=robert] run particle dust 0 0 1 0.7 ~ ~ ~ 0.4 0 0.4 0 4 normal

scoreboard players enable @a[nbt={SelectedItem:{tag:{spellbook1:1b}}},tag=robert] spells1






########### Bruford ############

item replace entity @a[tag=bruford] hotbar.0 with diamond_sword{kill:1b,display:{Name:'{"text":"Moon Sword","color":"#00CCFF","bold":true}',Lore:['{"text":"From the famous knight Bruford","color":"#A3FFF9"}']},Enchantments:[{id:"minecraft:smite",lvl:3s},{id:"minecraft:knockback",lvl:1s},{id:"minecraft:looting",lvl:1s},{id:"minecraft:sweeping",lvl:10s},{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1974641663,-194164925,-1537411403,-1306807490],Slot:"mainhand"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:100,Operation:0,UUID:[I;-1711544764,-751615990,-1573774578,-1056238478],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.6,Operation:0,UUID:[I;-356468863,1033064346,-1550760934,259892997],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.025,Operation:0,UUID:[I;1080038770,-732149463,-1646777907,877090781],Slot:"mainhand"}]} 1
item replace entity @a[tag=bruford] hotbar.1 with potion{display:{Name:'{"text":"Siegbräu","color":"#FFA1F2","bold":true}'},CustomPotionEffects:[{Id:5b,Amplifier:0b,Duration:160},{Id:9b,Amplifier:0b,Duration:160},{Id:10b,Amplifier:0b,Duration:40},{Id:17b,Amplifier:0b,Duration:40},{Id:23b,Amplifier:0b,Duration:1}],CustomPotionColor:16301567} 1
item replace entity @a[tag=bruford] hotbar.4 with bread
item replace entity @a[tag=bruford] hotbar.3 with stick{kill:1b,display:{Name:'{"text":"BRUFORD BANISH","color":"#0008FF"}'},Enchantments:[{id:"minecraft:knockback",lvl:10s}]} 1
item replace entity @a[tag=bruford] hotbar.2 with carrot_on_a_stick{kill:1b,display:{Name:'{"text":"Moon Wand","color":"#4287FF","bold":true}',Lore:['{"text":"Only Bruford can use this strange wand","color":"#00D5FF"}']},CustomModelData:1,moon_wand:1b,Enchantments:[{}]} 1

effect give @a[tag=bruford] resistance 1 2 true

effect clear @a[tag=bruford] invisibility

execute at @a[tag=bruford] run particle dust 0 1 1 0.7 ~ ~ ~ 0.4 0 0.4 0 4 normal



execute at @a[nbt={SelectedItem:{tag:{moon_wand:1b}}},tag=bruford,scores={use_artifact=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["moon_bullet"]}

execute as @e[tag=moon_bullet,scores={life=1}] at @s run tp @s @p
execute as @e[tag=moon_bullet,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..6] ~ ~ ~ 1 2
execute as @e[tag=moon_bullet] at @s run tp ^ ^ ^1
execute at @e[tag=moon_bullet] run particle soul_fire_flame ~ ~1 ~ 0.05 0.05 0.05 0 3 normal

scoreboard players add @e[tag=moon_bullet] life 1
kill @e[tag=moon_bullet,scores={life=30..}]

execute as @e[tag=moon_bullet,scores={life=5..}] at @s if entity @e[type=!armor_stand,distance=..3] run particle soul_fire_flame ~ ~1 ~ 1 1 1 1 50 normal
execute as @e[tag=moon_bullet,scores={life=5..}] at @s if entity @e[type=!armor_stand,distance=..3] run particle flash ~ ~1 ~ 0 0 0 0 10 normal
execute as @e[tag=moon_bullet,scores={life=5..}] at @s if entity @e[type=!armor_stand,distance=..3] run effect give @e[distance=..4,type=!player,tag=undead] instant_health 1 1 true
execute as @e[tag=moon_bullet,scores={life=5..}] at @s if entity @e[type=!armor_stand,distance=..3] run effect give @e[distance=..4,type=!player,tag=!undead] instant_damage 1 0 true
execute as @e[tag=moon_bullet,scores={life=5..}] at @s if entity @e[type=!armor_stand,distance=..3] run kill @s








########### Ophan ############

execute as @a[tag=ophan,gamemode=!spectator] at @s run particle dust 0 0 0 1.5 ^0.3 ^1.5 ^-0.3 0.05 0.05 0.05 0.008 5 force
execute as @a[tag=ophan,gamemode=!spectator] at @s run particle dust 0 0 0 1.5 ^-0.3 ^1.5 ^-0.3 0.05 0.05 0.05 0.008 5 force
execute as @a[tag=ophan,gamemode=!spectator] at @s run particle dust 0 0 0 1.5 ^0.8 ^1.7 ^-0.3 0.05 0.05 0.05 0.008 5 force
execute as @a[tag=ophan,gamemode=!spectator] at @s run particle dust 0 0 0 1.5 ^-0.8 ^1.7 ^-0.3 0.05 0.05 0.05 0.008 5 force





















########### ADMIN ############

scoreboard players set @a[tag=admin] mana 100
scoreboard players set @a[tag=admin] dark_mana 500
scoreboard players set @a[tag=admin] blood 1000
scoreboard players set @a[tag=admin] death2 0

scoreboard players reset @a[tag=admin] death2
scoreboard players reset @a[tag=admin] death3

item replace entity @a[tag=admin] hotbar.8 with written_book{display:{Name:'{"text":"ADMIN BOOK","color":"#5E2152","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"Throw it away. NOW","color":"#FF69F0","bold":true,"italic":true,"underlined":true}']},kill:1b,title:"",author:"Raurus",pages:['[{"text":"CLEAR TAGS\\n","color":"#9000FF","clickEvent":{"action":"run_command","value":"/function fa:get_clear"}},{"text":"GET SERAPH\\n","color":"#FF5500","clickEvent":{"action":"run_command","value":"/function fa:get_seraph"}},{"text":"GET OPHAN\\n","color":"#4C0087","clickEvent":{"action":"run_command","value":"/function fa:get_ophan"}},{"text":"GET ROBERT\\n","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#6C97BD"}]},"clickEvent":{"action":"run_command","value":"/function fa:get_robert"}},{"text":"GET BRUFORD\\n","color":"#00DDFF","clickEvent":{"action":"run_command","value":"/function fa:get_bruford"}},{"text":"CREATIVE MODE\\n","color":"#1C7800","clickEvent":{"action":"run_command","value":"/gamemode creative"}},{"text":"SURVIVAL MODE\\n","color":"#00BF00","clickEvent":{"action":"run_command","value":"/gamemode survival"}},{"text":"SPECTATOR MODE\\n","color":"#91A100","clickEvent":{"action":"run_command","value":"/gamemode spectator"}},{"text":"FEED\\n","color":"#D92400","clickEvent":{"action":"run_command","value":"/effect give @s saturation 5 10 true"}},{"text":"INFINI-RESISTANCE\\n","color":"#239186","clickEvent":{"action":"run_command","value":"/effect give @s resistance 1000000 100 true"}},{"text":"GO TO LOBBY","color":"#6B2369","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#1CBD8D"}]},"clickEvent":{"action":"run_command","value":"/execute in minecraft:fa/void2 run tp @s 0 101 0"}},{"text":"\\nCLEAR EFFECTS\\n","color":"#FF0000","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#1CBD8D"}]},"clickEvent":{"action":"run_command","value":"/effect clear @s"}},{"text":"INVISIBILITY","color":"#7A7A7A","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#1CBD8D"}]},"clickEvent":{"action":"run_command","value":"/effect  give @s invisibility 1000000 0 true"}}]']} 1

team join admin @a[tag=admin]













































########### EXPLORER ############

give @a[tag=explorer,scores={death1=1..},tag=!tp_home] map
give @a[tag=explorer,scores={death1=1..},tag=!tp_home] bread 5

execute as @a[nbt={SelectedItem:{tag:{rocket_crossbow:1b}}},tag=explorer] run item replace entity @s weapon.offhand with firework_rocket{ammo:1b,display:{Name:'{"text":"Exploding Ammo","color":"#FFA408","bold":true}'},Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;16750848],FadeColors:[I;10592673]},{Type:0,Colors:[I;16776960]}]}} 1
clear @a[nbt=!{SelectedItem:{tag:{rocket_crossbow:1b}}}] minecraft:firework_rocket{ammo:1b}

execute at @a[nbt={SelectedItem:{tag:{celeritas_wand:1b}}},scores={mana=25.. , use_artifact=1..}] run playsound minecraft:entity.enderman.teleport ambient @a[distance=..6] ~ ~ ~ 0.5 2.00
execute at @a[nbt={SelectedItem:{tag:{celeritas_wand:1b}}},scores={mana=25.. , use_artifact=1..}] run particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 10 normal
effect give @a[nbt={SelectedItem:{tag:{celeritas_wand:1b}}},scores={mana=25.. , use_artifact=1..}] speed 6 2 true
scoreboard players remove @a[nbt={SelectedItem:{tag:{celeritas_wand:1b}}},scores={mana=25.. , use_artifact=1..}] mana 25





########### SERAPH DEVOUT ############

effect give @a[nbt={Inventory:[{Slot:-106b,tag:{seraph_sigil:1b}}]},tag=seraph_devout] resistance 1 0 true
effect give @a[nbt={Inventory:[{Slot:-106b,tag:{seraph_sigil:1b}}]},scores={use_artifact=1..},tag=seraph_devout] resistance 1 2 true
effect give @a[nbt={Inventory:[{Slot:-106b,tag:{seraph_sigil:1b}}]},scores={use_artifact=1..},tag=seraph_devout] slowness 1 4 true
execute at @a[nbt={Inventory:[{Slot:-106b,tag:{seraph_sigil:1b}}]},scores={use_artifact=1..},tag=seraph_devout] run particle dust 0.8 0.8 0.8 0.8 ~ ~ ~ 1 1 1 0 5 normal





########### DRUID ############

execute as @a[tag=druid] at @s anchored eyes if block ~ ~ ~ minecraft:tall_grass run effect give @s invisibility 1 0 true

give @a[tag=druid,scores={death1=1..},tag=!tp_home] bone_meal 10

execute at @a[nbt={SelectedItem:{tag:{life_wand:1b}}},scores={mana=60.. , use_artifact=1..},tag=druid] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["life_bullet"]}
effect give @a[nbt={SelectedItem:{tag:{life_wand:1b}}},scores={mana=60.. , use_artifact=1..},tag=druid] slowness 2 2 true
scoreboard players remove @a[nbt={SelectedItem:{tag:{life_wand:1b}}},scores={mana=60.. , use_artifact=1..},tag=druid] mana 60

execute as @e[tag=life_bullet,scores={life=1}] at @s run tp @s @p
execute as @e[tag=life_bullet,scores={life=1}] at @s run tp @s ^ ^ ^2.3
execute as @e[tag=life_bullet,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..6] ~ ~ ~ 1 1.85
execute as @e[tag=life_bullet] at @s run tp ^ ^ ^0.7
execute at @e[tag=life_bullet] run particle happy_villager ~ ~1 ~ 0.05 0.05 0.05 0 3 normal

scoreboard players add @e[tag=life_bullet] life 1
kill @e[tag=life_bullet,scores={life=30..}]

execute at @e[tag=life_bullet] as @e[distance=..1.5] run data merge entity @s {InLove:100}
execute at @e[tag=life_bullet,scores={life=1..}] if entity @e[distance=..1.5,type=!armor_stand] run particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10 normal
execute at @e[tag=life_bullet,scores={life=1..}] if entity @e[distance=..1.5,type=!armor_stand] run particle heart ~ ~1 ~ 0.5 0.5 0.5 0 10 normal

execute at @e[tag=life_bullet,scores={life=1..}] if block ~ ~1 ~ pumpkin_stem run setblock ~ ~1 ~ pumpkin_stem[age=7]
execute at @e[tag=life_bullet,scores={life=1..}] if block ~ ~1 ~ melon_stem run setblock ~ ~1 ~ melon_stem[age=7]
execute at @e[tag=life_bullet,scores={life=1..}] if block ~ ~1 ~ wheat run setblock ~ ~1 ~ wheat[age=7]
execute at @e[tag=life_bullet,scores={life=1..}] if block ~ ~1 ~ beetroots run setblock ~ ~1 ~ beetroots[age=3]
execute at @e[tag=life_bullet,scores={life=1..}] if block ~ ~1 ~ carrots run setblock ~ ~1 ~ carrots[age=7]
execute at @e[tag=life_bullet,scores={life=1..}] if block ~ ~1 ~ potatoes run setblock ~ ~1 ~ potatoes[age=7]

execute at @e[tag=life_bullet,scores={life=1..}] as @a[distance=..2] run effect give @s instant_health 1 0 true
execute as @e[tag=life_bullet,scores={life=1..}] at @s if entity @a[distance=..2] run kill @s




########### OPHAN DEVOUT ############

effect give @a[tag=ophan_devout,nbt={Dimension:"minecraft:fa/abyss"}] speed 1 1 true

tag @a[tag=!purgatory,nbt={SelectedItem:{tag:{abyssal_sigil:1b}}},scores={use_artifact=1.. , mana=80.. , dark_mana=250.. , blood=40..},nbt={Dimension:"minecraft:overworld"},tag=ophan_devout] add abyssal_sigil_tp1
tag @a[tag=!purgatory,nbt={SelectedItem:{tag:{abyssal_sigil:1b}}},scores={use_artifact=1.. , mana=80.. , dark_mana=250.. , blood=40..},nbt={Dimension:"minecraft:fa/abyss"},tag=ophan_devout] add abyssal_sigil_tp2

scoreboard players remove @a[tag=abyssal_sigil_tp1,tag=ophan_devout] mana 80
scoreboard players remove @a[tag=abyssal_sigil_tp1,tag=ophan_devout] dark_mana 250
scoreboard players remove @a[tag=abyssal_sigil_tp1,tag=ophan_devout] blood 40
scoreboard players remove @a[tag=abyssal_sigil_tp2,tag=ophan_devout] mana 80
scoreboard players remove @a[tag=abyssal_sigil_tp2,tag=ophan_devout] dark_mana 250
scoreboard players remove @a[tag=abyssal_sigil_tp2,tag=ophan_devout] blood 40

execute at @a[tag=abyssal_sigil_tp1] run particle dust 0 0 0 2 ~ ~ ~ 0.1 2 0.1 0 20 normal
execute at @a[tag=abyssal_sigil_tp2] run particle dust 0 0 0 2 ~ ~ ~ 0.1 2 0.1 0 20 normal
execute at @a[tag=abyssal_sigil_tp1] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 0.00
execute at @a[tag=abyssal_sigil_tp2] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 0.00
execute at @a[tag=abyssal_sigil_tp1] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 1.00
execute at @a[tag=abyssal_sigil_tp2] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 1.00
execute at @a[tag=abyssal_sigil_tp1] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 2.00
execute at @a[tag=abyssal_sigil_tp2] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 2.00

execute as @a[tag=abyssal_sigil_tp1] at @s in minecraft:fa/abyss run tp @s ~ 1 ~
execute as @a[tag=abyssal_sigil_tp2] at @s in minecraft:overworld run tp @s ~ 62 ~
execute as @a[tag=abyssal_sigil_tp2] at @s run spreadplayers ~ ~ 0 1 false @s

execute at @a[tag=abyssal_sigil_tp1] run particle dust 0 0 0 2 ~ ~ ~ 0.1 2 0.1 0 20 normal
execute at @a[tag=abyssal_sigil_tp2] run particle dust 0 0 0 2 ~ ~ ~ 0.1 2 0.1 0 20 normal
execute at @a[tag=abyssal_sigil_tp1] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 0.00
execute at @a[tag=abyssal_sigil_tp2] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 0.00
execute at @a[tag=abyssal_sigil_tp1] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 1.00
execute at @a[tag=abyssal_sigil_tp2] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 1.00
execute at @a[tag=abyssal_sigil_tp1] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 2.00
execute at @a[tag=abyssal_sigil_tp2] run playsound minecraft:block.end_portal_frame.fill master @a[distance=..8] ~ ~ ~ 1 2.00

tag @a remove abyssal_sigil_tp1
tag @a remove abyssal_sigil_tp2





scoreboard players add @a[tag=!protected,nbt={SelectedItem:{tag:{paralysation_wand:1b}}},scores={use_artifact=1.. , dark_mana=5..}] pw_cooldown 1
scoreboard players remove @a[scores={pw_cooldown=2..}] dark_mana 5
scoreboard players set @a[scores={pw_cooldown=2..}] pw_cooldown 0

execute at @a[tag=!protected,nbt={SelectedItem:{tag:{paralysation_wand:1b}}},scores={use_artifact=1.. , dark_mana=5..}] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["paralyse_bullet"]}

execute as @e[tag=paralyse_bullet,scores={life=1}] at @s run tp @s @p
execute as @e[tag=paralyse_bullet,scores={life=1}] at @s run playsound minecraft:entity.zombie_villager.converted master @a[distance=..6] ~ ~ ~ 0.1 0.00
execute as @e[tag=paralyse_bullet] at @s run tp ^ ^ ^1
execute at @e[tag=paralyse_bullet] run particle witch ~ ~1 ~ 0.05 0.05 0.05 0 3 normal

scoreboard players add @e[tag=paralyse_bullet] life 1
kill @e[tag=paralyse_bullet,scores={life=30..}]

execute positioned as @e[tag=paralyse_bullet,scores={life=10..}] at @e[tag=!paralyse_bullet,tag=!paralyse_stand,distance=..3] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["paralyse_stand"]}
execute as @e[tag=paralyse_bullet,scores={life=10..}] at @s if entity @e[tag=!paralyse_bullet,tag=!paralyse_stand,distance=..3] run kill @s

scoreboard players add @e[tag=paralyse_stand] life 1
kill @e[tag=paralyse_stand,scores={life=20..}]
execute at @e[tag=paralyse_stand] run particle witch ~ ~1 ~ 0.5 0.5 0.5 0 3 normal

execute positioned as @e[tag=paralyse_stand] as @e[distance=..2] at @s run tp @s @s


scoreboard players set @a[scores={second=20..}] second 0




######################## BLOOD MAGE #######################


effect give @a[scores={lifesteal=150..},tag=blood_mage] regeneration 5 0 true
scoreboard players add @a[scores={lifesteal=150..},tag=blood_mage,nbt={SelectedItem:{tag:{vampiric_sword:1b}}}] blood 3
execute at @a[scores={lifesteal=150..},tag=blood_mage,nbt={SelectedItem:{tag:{vampiric_sword:1b}}}] run playsound minecraft:entity.wither.hurt master @a[distance=..3] ~ ~ ~ 0.3 0.00
execute at @a[scores={lifesteal=150..},tag=blood_mage,nbt={SelectedItem:{tag:{vampiric_sword:1b}}}] run particle minecraft:crimson_spore ~ ~ ~ 1 1 1 1 20 normal
scoreboard players set @a[scores={lifesteal=150..}] lifesteal 0
effect clear @a[tag=blood_mage] hunger






######################## SUNLIGHT WARRIOR #######################

effect give @a[nbt={SelectedItem:{tag:{sunlight_sword:1b}}},tag=sunlight_warrior] strength 1 0 true

execute if score time time matches 23000 run tellraw @a[tag=sunlight_warrior] {"text":"Your soul resonates with the rising sun...","bold":"true","color":"gold"}
execute if score time time matches 23000 at @a[tag=sunlight_warrior] run playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..4] ~ ~ ~ 0.2 1.00
execute if score time time matches 23000 run effect give @a[tag=sunlight_warrior] speed 120 1 true
execute if score time time matches 23000 run effect give @a[tag=sunlight_warrior] fire_resistance 120 0 true
execute if score time time matches 23000 run effect give @a[tag=sunlight_warrior] jump_boost 120 1 true
execute if score time time matches 23000 run effect give @a[tag=sunlight_warrior] slow_falling 120 1 true


execute at @a[scores={block=1..},nbt={Inventory:[{Slot:-106b,tag:{sunlight_shield:1b}}]},tag=sunlight_warrior] run particle flame ~ ~ ~ 1 1 1 0 20 normal
execute at @a[scores={block=1..},nbt={Inventory:[{Slot:-106b,tag:{sunlight_shield:1b}}]},tag=sunlight_warrior] as @e[distance=..4,type=!item,type=!armor_stand] run data merge entity @s {Fire:100}
scoreboard players set @a[scores={block=1..}] block 0




######################## MOONLIGHT SPELLSWORD #######################

effect give @a[nbt={SelectedItem:{tag:{moonlight_sword:1b}}},tag=moonlight_spellsword] strength 1 0 true

execute if score time time matches 13000 run tellraw @a[tag=moonlight_spellsword] {"text":"Your soul resonates with the setting sun...","bold":"true","color":"#0F7FFF"}
execute if score time time matches 13000 at @a[tag=moonlight_spellsword] run playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..4] ~ ~ ~ 0.2 1.00
execute if score time time matches 13000 run effect give @a[tag=moonlight_spellsword] speed 120 1 true
execute if score time time matches 13000 run effect give @a[tag=moonlight_spellsword] night_vision 120 0 true
execute if score time time matches 13000 run effect give @a[tag=moonlight_spellsword] resistance 120 0 true
execute if score time time matches 13000 run effect give @a[tag=moonlight_spellsword] slow_falling 120 1 true

execute if score time time matches 13000..22500 as @a[tag=!protected,tag=moonlight_spellsword,scores={use_artifact=1..},nbt={SelectedItem:{tag:{moonlight_wand:1b}}}] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["moonlight_bullet"]}

execute if score time time matches 13000..22500 run effect give @a[tag=!protected,tag=moonlight_spellsword,scores={use_artifact=1..},nbt={SelectedItem:{tag:{moonlight_wand:1b}}}] slowness 2 2 true

execute as @e[tag=moonlight_bullet,scores={life=1}] at @s run tp @s @p
execute as @e[tag=moonlight_bullet,scores={life=1}] at @s run playsound minecraft:block.beacon.ambient ambient @a[distance=..6] ~ ~ ~ 1 1.00
execute as @e[tag=moonlight_bullet] at @s run tp ^ ^ ^1.25
execute at @e[tag=moonlight_bullet] run particle end_rod ~ ~1 ~ 0.05 0.05 0.05 0 3 normal

scoreboard players add @e[tag=moonlight_bullet] life 1
kill @e[tag=moonlight_bullet,scores={life=30..}]

execute at @e[tag=moonlight_bullet,scores={life=6..}] run effect give @e[distance=..2.5] weakness 6 0 true
execute at @e[tag=moonlight_bullet,scores={life=6..}] run effect give @e[distance=..2.5] slowness 6 2 true
execute at @e[tag=moonlight_bullet,scores={life=6..}] run effect give @e[distance=..2.5,type=!armor_stand] glowing 9 0 true
execute at @e[tag=moonlight_bullet,scores={life=6..}] run effect give @e[distance=..2.5] levitation 1 0 true




######################## ARCANE SORCERER #######################

scoreboard players enable @a[nbt={SelectedItem:{tag:{spellbook1:1b}}},tag=arcane_sorcerer] spells1






































































