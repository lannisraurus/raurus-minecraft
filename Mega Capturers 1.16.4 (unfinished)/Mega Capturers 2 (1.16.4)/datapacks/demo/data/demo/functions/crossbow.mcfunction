replaceitem entity @a[tag=crossbow] armor.chest minecraft:leather_chestplate{display:{Name:"{\"text\":\"Hunter's Vest\",\"color\":\"gold\",\"bold\":true}",color:4655616},HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-6,Operation:0,UUIDLeast:526548,UUIDMost:652661}]}
replaceitem entity @a[tag=crossbow] armor.legs minecraft:leather_leggings{display:{Name:"{\"text\":\"Hunter's Pants\",\"color\":\"gold\",\"bold\":true,\"italic\":true}",color:2826263},HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:0,Operation:0,UUIDLeast:8900,UUIDMost:515343}]}
replaceitem entity @a[tag=crossbow] armor.feet minecraft:leather_boots{display:{Name:"{\"text\":\"Hiking Boots\",\"color\":\"gold\",\"bold\":true,\"italic\":true}",color:2823168},HideFlags:63,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.02,Operation:0,UUIDLeast:135831,UUIDMost:587868}]}
replaceitem entity @a[tag=crossbow] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Artemis's Head\"}"},SkullOwner:{Id:"1165dfc5-ebc2-44ee-aee2-cfc3c4e115ab",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2M0NjUzODZiYmU5ZmFmMTQzN2FmNjM3N2Q2NjczNWRjNWExNWVhNWNlZGYyNmJkOTVmZDNmZTY2YjNhZmNkIn19fQ=="}]}}} 1
replaceitem entity @a[tag=crossbow] hotbar.8 arrow
replaceitem entity @a[tag=crossbow] weapon.offhand air

clear @a[tag=crossbow] minecraft:tipped_arrow
clear @a[tag=crossbow] spectral_arrow

execute as @a[tag=crossbow] run title @s actionbar ["",{"text":"Triple Shot: ","color":"red","bold":true},{"score":{"name":"@s","objective":"multishot_charge"},"color":"red","bold":false},{"text":"/100","color":"red"},{"text":" || ","bold":true,"color":"none"},{"text":"Rocket: ","color":"dark_red","bold":true},{"score":{"name":"@s","objective":"cb_rocket_cd"},"color":"dark_red","bold":false},{"text":"/200","color":"dark_red"},{"text":" || ","bold":true,"color":"none"},{"text":"Rocket Roll: ","color":"gold","bold":true},{"score":{"name":"@s","objective":"rocket_roll_cd"},"color":"gold","bold":false},{"text":"/150","color":"gold"},{"text":" || ","bold":true,"color":"none"},{"text":"Pillager Distortion:","color":"gray","bold":true,"underlined":true},{"text":" ","color":"none","bold":false,"underlined":false},{"score":{"name":"@s","objective":"pillager_cd"},"color":"gray","bold":true},{"text":"/3000","color":"gray","bold":true}]


#remove tags

tag @a[tag=!in_map_1] remove trusty_crossbow
tag @a[tag=!in_map_1] remove cb_rocket
tag @a[tag=!in_map_1] remove rocket_roll









#crossbow

tag @a[nbt={SelectedItem:{tag:{trusty_crossbow:1b}}}] add trusty_crossbow
replaceitem entity @a[tag=crossbow,tag=!trusty_crossbow,tag=!cb_rocket,tag=!insta_shot,tag=!pillager_ac,tag=in_map_1] hotbar.0 minecraft:crossbow{trusty_crossbow:1b,display:{Name:"{\"text\":\"Trusty Crossbow\",\"color\":\"yellow\"}"},HideFlags:63,Unbreakable:1b}

tag @a[nbt={SelectedItem:{tag:{Charged:0b}}}] remove multishot_active
scoreboard players add @a[nbt={SelectedItem:{tag:{trusty_crossbow:1b,Charged:1b}}},tag=!cb_rocket,scores={multishot_charge=..99},tag=!pillager_ac] multishot_charge 1
replaceitem entity @a[scores={multishot_charge=99..}] hotbar.0 minecraft:crossbow{trusty_crossbow:1b,display:{Name:"{\"text\":\"Trusty Crossbow\",\"color\":\"yellow\",\"italic\":true}"},HideFlags:63,Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:18b,Amplifier:1b,Duration:60,ShowParticles:1b},{Id:24b,Amplifier:1b,Duration:60,ShowParticles:1b}],CustomPotionColor:10354688}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:18b,Amplifier:1b,Duration:60,ShowParticles:1b},{Id:24b,Amplifier:1b,Duration:60,ShowParticles:1b}],CustomPotionColor:9830400}},{id:"minecraft:tipped_arrow",Count:1b,tag:{CustomPotionEffects:[{Id:18b,Amplifier:1b,Duration:60,ShowParticles:1b},{Id:24b,Amplifier:1b,Duration:60,ShowParticles:1b}],CustomPotionColor:10682368}}],Charged:1b}

tag @a[nbt={SelectedItem:{tag:{trusty_crossbow_ex:1b}}}] add trusty_crossbow_ex
replaceitem entity @a[tag=crossbow,tag=!in_map_1] hotbar.0 minecraft:carrot_on_a_stick{trusty_crossbow_ex:1b,CustomModelData:4,display:{Name:"{\"text\":\"Trusty Crossbow\",\"color\":\"yellow\"}"},HideFlags:63,Unbreakable:1b}
tellraw @a[tag=trusty_crossbow_ex,scores={use_ability=1..}] ["",{"text":"<Trusty Crossbow>","bold":true,"color":"yellow"},{"text":" A regular crossbow. Hold to load, you can run with a loaded crossbow in your hand. Aditionally if you charge for a longer period of time, you will do a triple shot that applies the glowing effect to enemies. You will know when the crossbow is loaded with three arrows by audio and visual clues.","color":"white"}]
tag @a[tag=trusty_crossbow_ex] remove trusty_crossbow_ex

execute at @a[scores={multishot_charge=32}] run playsound minecraft:block.note_block.pling voice @a[distance=..5] ~ ~ ~ 10 0.00
execute at @a[scores={multishot_charge=54}] run playsound minecraft:block.note_block.pling voice @a[distance=..5] ~ ~ ~ 10 0.60
execute at @a[scores={multishot_charge=76}] run playsound minecraft:block.note_block.pling voice @a[distance=..5] ~ ~ ~ 10 0.90
execute at @a[scores={multishot_charge=98}] run playsound minecraft:block.note_block.pling voice @a[distance=..5] ~ ~ ~ 10 1.00

execute at @a[scores={multishot_charge=32}] run particle minecraft:lava ~ ~0.1 ~ 1 0 1 0 2 normal
execute at @a[scores={multishot_charge=54}] run particle minecraft:lava ~ ~0.1 ~ 1 0 1 0 2 normal
execute at @a[scores={multishot_charge=76}] run particle minecraft:lava ~ ~0.1 ~ 1 0 1 0 2 normal
execute at @a[scores={multishot_charge=98}] run particle minecraft:lava ~ ~0.1 ~ 1 0 1 0 2 normal

execute at @a[scores={multishot_charge=32}] run particle minecraft:campfire_signal_smoke ~ ~0.1 ~ 1 0 1 0 3 normal
execute at @a[scores={multishot_charge=54}] run particle minecraft:campfire_signal_smoke ~ ~0.1 ~ 1 0 1 0 3 normal
execute at @a[scores={multishot_charge=76}] run particle minecraft:campfire_signal_smoke ~ ~0.1 ~ 1 0 1 0 3 normal
execute at @a[scores={multishot_charge=98}] run particle minecraft:campfire_signal_smoke ~ ~0.1 ~ 1 0 1 0 3 normal




execute at @a[scores={multishot_charge=99..}] run playsound minecraft:item.crossbow.loading_end voice @a[distance=..5] ~ ~ ~ 10 0.00
execute at @a[scores={multishot_charge=99..}] run playsound minecraft:item.crossbow.loading_end voice @a[distance=..5] ~ ~ ~ 10 0.50
execute at @a[scores={multishot_charge=99..}] run playsound minecraft:item.crossbow.loading_end voice @a[distance=..5] ~ ~ ~ 10 1.00
tag @a[scores={multishot_charge=99..}] add multishot_active
scoreboard players set @a[scores={multishot_charge=99..}] multishot_charge 0
scoreboard players set @a[nbt=!{SelectedItem:{tag:{trusty_crossbow:1b,Charged:1b}}}] multishot_charge 0
scoreboard players set @a[tag=multishot_active] multishot_charge 0


tag @a[tag=trusty_crossbow] remove trusty_crossbow























#rocket (give tag cb_rocket when active to prevent multishot from activating!)

clear @a[tag=crossbow,tag=in_map_1] carrot_on_a_stick{rocket_stick_ex:1b}

tag @a[nbt={SelectedItem:{tag:{rocket_stick:1b}}}] add rocket_stick
tag @a[scores={use_ability=1..}] add cb_rocket
scoreboard players add @a[tag=crossbow,tag=!cb_rocket,scores={cb_rocket_cd=..199},tag=in_map_1] cb_rocket_cd 1
clear @a[tag=crossbow,scores={cb_rocket_cd=..199}] carrot_on_a_stick{rocket_stick:1b}
replaceitem entity @a[scores={cb_rocket_cd=199..},tag=crossbow,tag=in_map_1] hotbar.1 minecraft:carrot_on_a_stick{rocket_stick:1b,CustomModelData:1,display:{Name:"{\"text\":\"Rocket\",\"color\":\"dark_red\",\"bold\":true,\"underlined\":true}"}}
replaceitem entity @a[scores={use_ability=1},tag=!pillager_ac,tag=rocket_stick] hotbar.0 minecraft:crossbow{trusty_crossbow:1b,cb_rocket:1b,display:{Name:"{\"text\":\"Rockety Crossbow\",\"color\":\"dark_red\",\"italic\":true,\"bold\":true}"},HideFlags:63,Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16722432,16746496,16755200,8553090,3881787]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16722432,16744448,16759811,7895160,4539717]}]}}},{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16722432,16744448,16750848,9209995,4539717]}]}}}],Charged:1b}

execute at @a[tag=cb_rocket,scores={shot_crossbow=1..},team=1] run team join 1 @e[nbt={FireworksItem:{id:"minecraft:firework_rocket"}},distance=..2]
execute at @a[tag=cb_rocket,scores={shot_crossbow=1..},team=2] run team join 2 @e[nbt={FireworksItem:{id:"minecraft:firework_rocket"}},distance=..2]
execute at @a[tag=cb_rocket,scores={shot_crossbow=1..},team=1] run tag @e[nbt={FireworksItem:{id:"minecraft:firework_rocket"}},distance=..2] add rocket_team_1
execute at @a[tag=cb_rocket,scores={shot_crossbow=1..},team=2] run tag @e[nbt={FireworksItem:{id:"minecraft:firework_rocket"}},distance=..2] add rocket_team_2

execute at @e[tag=rocket_team_1] at @e[team=2,distance=..2.8] run summon firework_rocket ~ ~3 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16711680,16737792,16763904]}]}}}}
execute at @e[tag=rocket_team_2] at @e[team=1,distance=..2.8] run summon firework_rocket ~ ~3 ~ {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;524543,46079,56831]}]}}}}
execute at @e[tag=rocket_team_2] run effect give @e[team=1,distance=..2.8] glowing 6 1 true
execute at @e[tag=rocket_team_1] run effect give @e[team=2,distance=..2.8] glowing 6 1 true



clear @a[tag=cb_rocket,nbt={SelectedItem:{tag:{Charged:0b}}}] crossbow
tag @a[scores={shot_crossbow=1..}] remove cb_rocket


scoreboard players set @a[scores={use_ability=1..},tag=rocket_stick] cb_rocket_cd 0
tag @a[tag=rocket_stick] remove rocket_stick



tag @a[nbt={SelectedItem:{tag:{rocket_stick_ex:1b}}}] add rocket_stick_ex
replaceitem entity @a[tag=crossbow,tag=!in_map_1] hotbar.1 minecraft:carrot_on_a_stick{rocket_stick_ex:1b,CustomModelData:1,display:{Name:"{\"text\":\"Rocket\",\"color\":\"dark_red\",\"bold\":true,\"underlined\":true}"}}
tellraw @a[scores={use_ability=1..},tag=rocket_stick_ex] ["",{"text":"<Rockety Crossbow> ","bold":true,"color":"dark_red"},{"text":"Right click to load your crossbow with three AoE explosive rockets. Upon contact, the enemy will be revealed and a signal will appear above their head.","color":"white"}]
tag @a[tag=rocket_stick_ex] remove rocket_stick_ex








#Rocket Roll

clear @a[tag=crossbow,tag=in_map_1] carrot_on_a_stick{rocket_roll_ex:1b}

tag @a[nbt={SelectedItem:{tag:{rocket_roll:1b}}}] add rocket_roll
tag @a[nbt={SelectedItem:{tag:{rocket_roll_ex:1b}}}] add rocket_roll_ex



scoreboard players add @a[tag=crossbow,scores={rocket_roll_cd=..149},tag=in_map_1] rocket_roll_cd 1
replaceitem entity @a[scores={rocket_roll_cd=149..},tag=crossbow,tag=in_map_1] hotbar.2 carrot_on_a_stick{CustomModelData:2,rocket_roll:1b,display:{Name:"{\"text\":\"Rocket Roll\",\"color\":\"gold\"}"}}
replaceitem entity @a[tag=crossbow,tag=!in_map_1] hotbar.2 carrot_on_a_stick{CustomModelData:2,rocket_roll_ex:1b,display:{Name:"{\"text\":\"Rocket Roll\",\"color\":\"gold\"}"}}
tellraw @a[tag=crossbow,tag=rocket_roll_ex,scores={use_ability=1..}] ["",{"text":"<Rocket Roll>","bold":true,"color":"gold"},{"text":" Right click to do a quick dash and instantly load your crossbow with a glowing arrow.","color":"white"}]
clear @a[tag=crossbow,scores={rocket_roll_cd=..149}] carrot_on_a_stick{rocket_roll:1b}

tag @a[scores={use_ability=1..},tag=crossbow,tag=rocket_roll] add rocket_roll_ac
tag @a[scores={use_ability=1..},tag=crossbow,tag=rocket_roll] add insta_shot
scoreboard players add @a[tag=rocket_roll_ac] rocket_roll_ac 1
execute as @a[scores={rocket_roll_ac=1..10}] at @s rotated ~ 0 if block ^ ^ ^1 air run tp @s ^ ^ ^1
execute as @a[scores={rocket_roll_ac=1..10}] at @s rotated ~ 0 if block ^ ^ ^1 grass run tp @s ^ ^ ^1
execute as @a[scores={rocket_roll_ac=1..10}] at @s rotated ~ 0 if block ^ ^ ^1 tall_grass run tp @s ^ ^ ^1
execute as @a[scores={rocket_roll_ac=1..10}] at @s rotated ~ 0 if block ^ ^ ^1 fern run tp @s ^ ^ ^1
execute as @a[scores={rocket_roll_ac=1..10}] at @s rotated ~ 0 if block ^ ^ ^1 large_fern run tp @s ^ ^ ^1

execute at @a[scores={rocket_roll_ac=1..}] run playsound minecraft:block.fire.extinguish voice @a[distance=..5] ~ ~ ~ 0.4 2.00
execute at @a[scores={rocket_roll_ac=1..}] run particle minecraft:lava ~ ~0.1 ~ 1 0 1 0 2 normal
execute at @a[scores={rocket_roll_ac=1..}] run particle minecraft:smoke ~ ~0.1 ~ 1 0 1 0 2 normal


tag @a[scores={rocket_roll_ac=10}] remove rocket_roll_ac
scoreboard players set @a[scores={rocket_roll_ac=10}] rocket_roll_ac 0


replaceitem entity @a[tag=insta_shot,tag=!pillager_ac] hotbar.0 crossbow{display:{Name:"{\"text\":\"INSTA SHOT\",\"color\":\"gold\",\"bold\":true}"},ChargedProjectiles:[{id:"minecraft:spectral_arrow",Count:1b},{},{}],Charged:1b}
clear @a[tag=insta_shot,scores={shot_crossbow=1..}] crossbow
tag @a[scores={shot_crossbow=1..}] remove insta_shot


scoreboard players set @a[scores={use_ability=1..},tag=rocket_roll] rocket_roll_cd 0
tag @a[tag=rocket_roll] remove rocket_roll
tag @a[tag=rocket_roll_ex] remove rocket_roll_ex






#Magnetic Pillager Distortion



scoreboard players add @a[tag=crossbow,scores={pillager_cd=..2999},tag=!pillager_ac,tag=in_map_1] pillager_cd 1
replaceitem entity @a[scores={pillager_cd=2999..},tag=crossbow,tag=in_map_1] hotbar.3 minecraft:carrot_on_a_stick{CustomModelData:3,display:{Name:"[{\"text\":\"aa\",\"color\":\"gray\",\"bold\":true,\"obfuscated\":true},{\"text\":\" \",\"obfuscated\":false},{\"text\":\"PILLAGER DISTORTION\",\"color\":\"gray\",\"bold\":true,\"italic\":true,\"underlined\":true,\"obfuscated\":false},{\"text\":\" \",\"obfuscated\":false},{\"text\":\"aa\",\"color\":\"gray\",\"bold\":true,\"obfuscated\":true}]"},HideFlags:63,pillager_distortion:1b,Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1
replaceitem entity @a[tag=crossbow,tag=!in_map_1] hotbar.3 minecraft:carrot_on_a_stick{CustomModelData:3,display:{Name:"[{\"text\":\"aa\",\"color\":\"gray\",\"bold\":true,\"obfuscated\":true},{\"text\":\" \",\"obfuscated\":false},{\"text\":\"PILLAGER DISTORTION\",\"color\":\"gray\",\"bold\":true,\"italic\":true,\"underlined\":true,\"obfuscated\":false},{\"text\":\" \",\"obfuscated\":false},{\"text\":\"aa\",\"color\":\"gray\",\"bold\":true,\"obfuscated\":true}]"},HideFlags:63,pillager_distortion_ex:1b,Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1
clear @a[scores={pillager_cd=..2999},tag=crossbow] carrot_on_a_stick{pillager_distortion:1b}
clear @a[tag=crossbow,tag=in_map_1] carrot_on_a_stick{pillager_distortion_ex:1b}
tag @a[tag=crossbow,nbt={SelectedItem:{tag:{pillager_distortion:1b}}}] add pillager_distortion
tag @a[tag=crossbow,nbt={SelectedItem:{tag:{pillager_distortion_ex:1b}}}] add pillager_distortion_ex
tag @a[tag=pillager_distortion,scores={use_ability=1..}] add pillager_ac
tellraw @a[tag=pillager_distortion_ex,scores={use_ability=1..}] ["",{"text":"<Pillager Distortion>","bold":true,"color":"gray"},{"text":" Right click to enchant your crossbow with the pillager curse. Upon shooting, a high-damage piercing arrow will impact the ground and create a pillager raid. The raid will fight for your side.","color":"white"}]
execute at @a[tag=pillager_distortion,scores={use_ability=1..}] run playsound minecraft:block.beacon.activate voice @a[distance=..10] ~ ~ ~ 10 1.50
tag @a[nbt={SelectedItem:{tag:{pillager_cb:1b}}}] add pillager_cb
replaceitem entity @a[tag=!pillager_cb,tag=pillager_ac] hotbar.0 minecraft:crossbow{display:{Name:"{\"text\":\"PILLAGER DISTORTION\",\"color\":\"gray\",\"bold\":true,\"italic\":true,\"underlined\":true}"},HideFlags:63,Unbreakable:1b,pillager_cb:1b,Enchantments:[{id:"minecraft:piercing",lvl:100s}]}

execute at @a[tag=pillager_ac] run particle minecraft:enchant ~ ~ ~ 0 1 0 1 10 force
scoreboard players add @a[tag=pillager_ac] sound_loop_1 1
execute at @a[scores={sound_loop_1=100..}] run playsound minecraft:block.beacon.ambient voice @a[distance=..6] ~ ~ ~ 10 1.00
scoreboard players set @a[scores={sound_loop_1=100..}] sound_loop_1 0

execute at @a[tag=pillager_ac,scores={shot_crossbow=1..}] run playsound minecraft:block.beacon.deactivate voice @a[distance=..10] ~ ~ ~ 10 1.50
execute at @a[tag=pillager_ac,scores={shot_crossbow=1..}] run tag @e[distance=..2,type=arrow] add pillager_distortion_arrow
execute at @a[tag=pillager_ac,scores={shot_crossbow=1..},team=1] run tag @e[distance=..2,type=arrow] add pillager_distortion_arrow_1
execute at @a[tag=pillager_ac,scores={shot_crossbow=1..},team=2] run tag @e[distance=..2,type=arrow] add pillager_distortion_arrow_2


execute at @e[tag=pillager_distortion_arrow_1,nbt={inGround:1b}] run summon minecraft:pillager ~ ~ ~ {Team:"1",Tags:["random_pillager"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute at @e[tag=pillager_distortion_arrow_1,nbt={inGround:1b}] run summon minecraft:pillager ~ ~ ~ {Team:"1",Tags:["random_pillager"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute at @e[tag=pillager_distortion_arrow_1,nbt={inGround:1b}] run summon minecraft:pillager ~ ~ ~ {Team:"1",Tags:["random_pillager"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute at @e[tag=pillager_distortion_arrow_1,nbt={inGround:1b}] run summon minecraft:pillager ~ ~ ~ {Team:"1",Tags:["random_pillager"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute at @e[tag=pillager_distortion_arrow_2,nbt={inGround:1b}] run summon minecraft:pillager ~ ~ ~ {Team:"2",Tags:["random_pillager"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute at @e[tag=pillager_distortion_arrow_2,nbt={inGround:1b}] run summon minecraft:pillager ~ ~ ~ {Team:"2",Tags:["random_pillager"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute at @e[tag=pillager_distortion_arrow_2,nbt={inGround:1b}] run summon minecraft:pillager ~ ~ ~ {Team:"2",Tags:["random_pillager"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}
execute at @e[tag=pillager_distortion_arrow_2,nbt={inGround:1b}] run summon minecraft:pillager ~ ~ ~ {Team:"2",Tags:["random_pillager"],HandItems:[{id:"minecraft:crossbow",Count:1b},{}]}

execute at @e[tag=pillager_distortion_arrow_1,nbt={inGround:1b}] run summon minecraft:vindicator ~ ~ ~ {Team:"1",Tags:["random_pillager"],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.01,Operation:0,UUIDLeast:253594,UUIDMost:632942}]}},{}]}
execute at @e[tag=pillager_distortion_arrow_1,nbt={inGround:1b}] run summon minecraft:vindicator ~ ~ ~ {Team:"1",Tags:["random_pillager"],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.01,Operation:0,UUIDLeast:253594,UUIDMost:632942}]}},{}]}
execute at @e[tag=pillager_distortion_arrow_2,nbt={inGround:1b}] run summon minecraft:vindicator ~ ~ ~ {Team:"2",Tags:["random_pillager"],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.01,Operation:0,UUIDLeast:253594,UUIDMost:632942}]}},{}]}
execute at @e[tag=pillager_distortion_arrow_2,nbt={inGround:1b}] run summon minecraft:vindicator ~ ~ ~ {Team:"2",Tags:["random_pillager"],HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:-0.01,Operation:0,UUIDLeast:253594,UUIDMost:632942}]}},{}]}

execute at @e[tag=pillager_distortion_arrow_1,nbt={inGround:1b}] run summon minecraft:ravager ~ ~ ~ {Team:"1",Health:40f,Tags:["random_pillager"],Attributes:[{Name:generic.maxHealth,Base:40},{Name:generic.movementSpeed,Base:-0.5},{Name:generic.attackDamage,Base:4}]}
execute at @e[tag=pillager_distortion_arrow_2,nbt={inGround:1b}] run summon minecraft:ravager ~ ~ ~ {Team:"2",Health:40f,Tags:["random_pillager"],Attributes:[{Name:generic.maxHealth,Base:40},{Name:generic.movementSpeed,Base:-0.5},{Name:generic.attackDamage,Base:4}]}



execute as @e[tag=random_pillager,tag=!random_pillager_tped] at @s run spreadplayers ~ ~ 3 8 true @s
tag @e[tag=random_pillager] add random_pillager_tped



execute at @e[tag=pillager_distortion_arrow,nbt={inGround:1b}] at @a[distance=..40] run playsound minecraft:entity.wither.spawn voice @p ~ ~ ~ 1 2.00
execute at @e[tag=pillager_distortion_arrow,nbt={inGround:1b}] at @a[distance=..40] run playsound minecraft:event.raid.horn voice @p ~ ~ ~ 100 1.00
execute at @e[tag=pillager_distortion_arrow,nbt={inGround:1b}] run particle minecraft:flash ~ ~ ~ 6 6 6 0 100 force
execute at @e[tag=pillager_distortion_arrow,nbt={inGround:1b}] run particle explosion ~ ~ ~ 6 6 6 0 100 force
kill @e[tag=pillager_distortion_arrow,nbt={inGround:1b}]


execute at @e[tag=pillager_distortion_arrow] run particle cloud ~ ~ ~ 0.3 0.3 0.3 0 1 force
execute at @e[tag=pillager_distortion_arrow_1] run particle dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force
execute at @e[tag=pillager_distortion_arrow_2] run particle dust 0 0 1 1 ~ ~ ~ 0.5 0.5 0.5 0 10 force


scoreboard players set @a[scores={use_ability=1..}] pillager_cd 0
tag @a[tag=pillager_cb] remove pillager_cb
tag @a[tag=pillager_distortion] remove pillager_distortion
tag @a[scores={shot_crossbow=1..}] remove pillager_ac
tag @a[tag=pillager_distortion_ex] remove pillager_distortion_ex














scoreboard players set @a[scores={shot_crossbow=1..}] shot_crossbow 0
