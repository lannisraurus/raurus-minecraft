scoreboard players enable @a[tag=safe] shop
scoreboard players enable @a[tag=safe] buy
scoreboard players enable @a[tag=safe] info



##################items

tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n--------------------------------------","color":"bold"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"SHOP","color":"bold","color":"gold"}


###LIGHT ARMOURS

tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"LIGHT ARMOURS","color":"bold","color":"aqua"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}



tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Light Armour (30$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 11"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Regular\nPhysical Defense: Light\nMagical Defense: None\nAbilities: None\nREQUIREMENTS:"},{"text":" None\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Sorcerer Armour (60$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 10"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Regular\nPhysical Defense: Light\nMagical Defense: High\nAbilities: Faster mana regeneration\nREQUIREMENTS:"},{"text":" 2 ATT","color":"blue"},{"text":", "},{"text":"2 KNO","color":"dark_blue"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Assassin Armour (60$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 9"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Fast\nPhysical Defense: Light\nMagical Defense: None\nAbilities: None\nREQUIREMENTS:"},{"text":" None\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Slime Armour (120$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 4"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Regular\nPhysical Defense: Light\nMagical Defense: None\nAbilities: Hold shift to charge high jump\nREQUIREMENTS:"},{"text":" None","color":"white"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Biomechanical Armour (160$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 5"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Fast\nPhysical Defense: Light\nMagical Defense: None\nAbilities: Running makes you run progressively faster\nREQUIREMENTS:"},{"text":" 2 END","color":"dark_green"},{"text":", ","color":"white"},{"text":"3 AGI","color":"yellow"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Necromancer Armour (150$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 8"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Regular\nPhysical Defense: Light\nMagical Defense: High\nAbilities: Faster mana regeneration, less poison time and necromancy (kills spawn undead)\nREQUIREMENTS:"},{"text":" 5 ATT","color":"blue"},{"text":",","color":"white"},{"text":" 5 KNO","color":"dark_blue"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Shadow-veil Armour (200$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 17"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Regular\nPhysical Defense: Light\nMagical Defense: None\nAbilities: Hold shift while out of combat to become invisible\nREQUIREMENTS:"},{"text":" 3 KNO","color":"dark_blue"},{"text":", "},{"text":"3 AGI","color":"yellow"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Angel Armour (120$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 19"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Fast\nPhysical Defense: Light\nMagical Defense: Light\nAbilities: Slow Falling\nREQUIREMENTS:"},{"text":" 3 ATT","color":"blue"},{"text":", "},{"text":"3 KNO","color":"dark_blue"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Warden Armour (150$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 21"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Regular\nPhysical Defense: Light\nMagical Defense: None\nAbilities: Hold shift to activate defense mode (mana drain cost)\nREQUIREMENTS:"},{"text":" 1 END","color":"dark_green"},{"text":", "},{"text":"1 ATT","color":"blue"},{"text":", "},{"text":"1 KNO","color":"dark_blue"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Hunter Armour (130$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 22"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Regular\nPhysical Defense: Light\nMagical Defense: None\nAbilities: Strength Boost when low on health\nREQUIREMENTS:"},{"text":" None","color":"white"},{"text":"\nPOWER SLOTS: 0"}]}}]







###MEDIUM ARMOURS

tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"MEDIUM ARMOURS","color":"bold","color":"dark_aqua"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}


tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Medium Armour (80$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 12"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Slow\nPhysical Defense: Medium\nMagical Defense: None\nAbilities: None\nREQUIREMENTS:"},{"text":" 2 END","color":"dark_green"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Herald Armour (200$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 7"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Slow\nPhysical Defense: Medium\nMagical Defense: Light\nAbilities: Faster mana regeneration\nREQUIREMENTS:"},{"text":" 3 END","color":"dark_green"},{"text":", ","color":"white"},{"text":"2 ATT","color":"blue"},{"text":",","color":"white"},{"text":" 2 KNO","color":"dark_blue"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Golden Armour (180$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 15"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Slow\nPhysical Defense: Medium\nMagical Defense: Light\nAbilities: Reduced Stun Time\nREQUIREMENTS:"},{"text":" 4 END","color":"dark_green"},{"text":", "},{"text":"3 ATT","color":"blue"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Abyss-walker Armour (300$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 16"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Slow\nPhysical Defense: Medium\nMagical Defense: Light\nAbilities: Hold shift and look down to travel into the Abyss (cost: 3 hearts)\nREQUIREMENTS:"},{"text":" 4 END","color":"dark_green"},{"text":","},{"text":" 3 KNO","color":"dark_blue"},{"text":", "},{"text":"2 VIT","color":"dark_purple"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Paladin Armour (220$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 20"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Regular\nPhysical Defense: Medium\nMagical Defense: Light\nAbilities: Slow Falling\nREQUIREMENTS:"},{"text":" 4 END","color":"dark_green"},{"text":", "},{"text":"3 ATT","color":"blue"},{"text":", "},{"text":"3 KNO","color":"dark_blue"},{"text":"\nPOWER SLOTS: 0"}]}}]









###HEAVY ARMOURS

tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"HEAVY ARMOURS","color":"bold","color":"blue"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}


tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Heavy Armour (160$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 13"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Slow+\nPhysical Defense: High\nMagical Defense: None\nAbilities: None\nREQUIREMENTS:"},{"text":" 5 END","color":"dark_green"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Ultra Heavy Armour (200$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 14"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Very Slow\nPhysical Defense: Very High\nMagical Defense: Light\nAbilities: None\nREQUIREMENTS:"},{"text":" 8 END","color":"dark_green"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Steamcharged Armour (260$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 6"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Very Slow\nPhysical Defense: High\nMagical Defense: Light\nAbilities: Running makes you run progressively faster\nREQUIREMENTS:"},{"text":" 5 END","color":"dark_green"},{"text":", ","color":"white"},{"text":"3 AGI","color":"yellow"},{"text":"\nPOWER SLOTS: 0"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Blood Knight Armour (250$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 18"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Movement Speed: Slow+\nPhysical Defense: High\nMagical Defense: Light\nAbilities: Out of combat regeneration\nREQUIREMENTS:"},{"text":" 5 END","color":"dark_green"},{"text":", "},{"text":"5 VIT","color":"dark_purple"},{"text":"\nPOWER SLOTS: 0"}]}}]







###SWORDS

tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"SWORDS","color":"bold","color":"red"}
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}





tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Poison Sword (120$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 1"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Damage: 2 (physical)\nAttack Speed: Fast\nSpecial Effects: "},{"text":"Poison","color":"green"},{"text":"\nAbility: Poison Mist (20 mana, 20 sec cooldown):\nCreates a Poison Cloud that lingers for a short while\nREQUIREMENTS:"},{"text":" 3 DEX","color":"gold"},{"text":"\nPOWER SLOTS: 2"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Holy Sword (200$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 2"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Damage: 5 (physical)\nAttack Speed: Medium\nSpecial Effects: None\nAbility: Radiant Pulse (70 mana, 20 sec cooldown):\nAfter a long start-up, You release a powerful blast of energy dealing 8 Magic Damage and stunning everyone.\nREQUIREMENTS:"},{"text":" 4 STR","color":"dark_red"},{"text":", "},{"text":"1 KNO","color":"dark_blue"},{"text":", "},{"text":"1 ATT","color":"blue"},{"text":"\nPOWER SLOTS: 2"}]}}]
tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] ["",{"text":"Black Great-sword (400$) - "},{"text":"[BUY]","clickEvent":{"action":"run_command","value":"/trigger buy set 3"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Damage: 7 (physical)\nAttack Speed: Very Slow\nSpecial Effects: None\nAbility: Roar (20 mana, 10 sec cooldown):\nAfter a short wind-up, scream and SCARE all nearby oponents, gaining a short speed boost\nREQUIREMENTS:"},{"text":" 6 STR","color":"dark_red"},{"text":"\nPOWER SLOTS: 2"}]}}]
































tellraw @a[scores={right_click=1..},nbt={SelectedItem:{tag:{shop:1b}}}] {"text":"--------------------------------------","color":"bold"}







## Buy Items

##################buy1
execute as @a[scores={buy=1, money=..119}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0


execute as @a[scores={buy=1, money=120..}] at @s run summon item ~ ~2 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Poison Sword","color":"#0E8A00","italic":false}',Lore:['{"text":"Damage: 2 (physical)","color":"#11FF00","italic":false}','{"text":"Attack Speed: Fast","color":"#11FF00","italic":false}','{"text":"Special Effects: Poison","color":"#11FF00","italic":false}','{"text":"Ability: Poison Mist (20 mana, 20 sec cooldown)","color":"#11FF00","italic":false}','{"text":"Req: 3 DEX","color":"#11FF00","bold":true,"italic":false}','{"text":"2 POWER SLOTS","color":"#11FF00","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:10,spell1:1b,melee1:1b,pwr:2b,req:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;1998202511,-1633400473,-1716024691,1243985445],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.5,Operation:0,UUID:[I;1235567341,-1479392845,-1636965226,-1009257604],Slot:"mainhand"}]}}}
execute as @a[scores={buy=1, money=120..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=1, money=120..}] money 120



##################buy2
execute as @a[scores={buy=2, money=..199}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=2, money=200..}] at @s run summon item ~ ~2 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Holy Sword","color":"#CFD600","italic":false}',Lore:['{"text":"Damage: 5 (physical)","color":"#FFE600","italic":false}','{"text":"Attack Speed: Medium","color":"#FFE600","italic":false}','{"text":"Special Effects: None","color":"#FFE600","italic":false}','{"text":"Ability: Radiant Pulse (70 mana, 20 sec cooldown)","color":"#FFE600","italic":false}','{"text":"Req: 4 STR, 1 ATT, 1 KNO","color":"#FFE600","bold":true,"italic":false}','{"text":"2 POWER SLOTS","color":"#FFE600","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:4,spell2:1b,melee2:1b,pwr:2b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;-1323498683,345195705,-2096743312,-1174102794],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.5,Operation:0,UUID:[I;-1046263073,565461081,-1813377552,-724350606],Slot:"mainhand"}]}}}
execute as @a[scores={buy=2, money=200..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=2, money=200..}] money 200


##################buy3
execute as @a[scores={buy=3, money=..399}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=3, money=400..}] at @s run summon item ~ ~2 ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Black Great-Sword","color":"#4F4F4F","italic":false}',Lore:['{"text":"Damage: 7 (physical)","color":"#7D7D7D","italic":false}','{"text":"Attack Speed: Very Slow","color":"#7D7D7D","italic":false}','{"text":"Special Effects: None","color":"#7D7D7D","italic":false}','{"text":"Ability: Roar (20 mana, 10 sec cooldown)","color":"#7D7D7D","italic":false}','{"text":"Req: 6 STR","color":"#7D7D7D","bold":true,"italic":false}','{"text":"2 POWER SLOTS","color":"#7D7D7D","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:3,spell3:1b,melee3:1b,pwr:2b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:7,Operation:0,UUID:[I;-431654716,-1251849955,-1254866910,163974567],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-4,Operation:0,UUID:[I;-1137195486,190072493,-1093417765,-992092435],Slot:"mainhand"}]}}}
execute as @a[scores={buy=3, money=400..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=3, money=400..}] money 400





##################buy4
execute as @a[scores={buy=4, money=..119}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=4, money=120..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Slime Armour","color":"#004015","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#00FF80","italic":false}','{"text":"Physical Defense: Light","color":"#00FF80","italic":false}','{"text":"Magical Defense: None","color":"#00FF80","italic":false}','{"text":"Abilities: Hold shift to charge high jump.","color":"#00FF80","italic":false}','{"text":"Req: None","color":"#00FF80","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:48,equip_armour:1b}}}
execute as @a[scores={buy=4, money=120..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=4, money=120..}] money 120



##################buy5
execute as @a[scores={buy=5, money=..159}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=5, money=160..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Biomechanical Armour","color":"#007326","italic":false}',Lore:['{"text":"Movement Speed: Fast","color":"#00FF80","italic":false}','{"text":"Physical Defense: Light","color":"#00FF80","italic":false}','{"text":"Magical Defense: None","color":"#00FF80","italic":false}','{"text":"Abilities: Running makes you run progressively faster","color":"#00FF80","italic":false}','{"text":"Req: 2 END, 3 AGI","color":"#00FF80","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:49,equip_armour:2b}}}
execute as @a[scores={buy=5, money=160..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=5, money=160..}] money 160



##################buy6
execute as @a[scores={buy=6, money=..259}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=6, money=260..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Steamcharged Armour","color":"#730F00","italic":false}',Lore:['{"text":"Movement Speed: Very Slow","color":"#FF4603","italic":false}','{"text":"Physical Defense: High","color":"#FF4603","italic":false}','{"text":"Magical Defense: Light","color":"#FF4603","italic":false}','{"text":"Abilities: Running makes you run progressively faster","color":"#FF4603","italic":false}','{"text":"Req: 5 END, 3 AGI","color":"#FF4603","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:50,equip_armour:3b}}}
execute as @a[scores={buy=6, money=260..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=6, money=260..}] money 260





##################buy7
execute as @a[scores={buy=7, money=..199}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=7, money=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Herald Armour","color":"#009CCC","italic":false}',Lore:['{"text":"Movement Speed: Slow","color":"#70D4FF","italic":false}','{"text":"Physical Defense: Medium","color":"#70D4FF","italic":false}','{"text":"Magical Defense: Light","color":"#70D4FF","italic":false}','{"text":"Abilities: Faster mana regeneration","color":"#70D4FF","italic":false}','{"text":"Req: 3 END, 2 ATT, 1 KNO","color":"#70D4FF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:51,equip_armour:4b}}}
execute as @a[scores={buy=7, money=200..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=7, money=200..}] money 200







##################buy8
execute as @a[scores={buy=8, money=..149}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=8, money=150..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Necromancer Armour","color":"#5F00CC","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#AA2BFF","italic":false}','{"text":"Physical Defense: Light","color":"#AA2BFF","italic":false}','{"text":"Magical Defense: High","color":"#AA2BFF","italic":false}','{"text":"Abilities: Faster mana regeneration, less poison time and necromancy (kills spawn undead)","color":"#AA2BFF","italic":false}','{"text":"Req: 5 ATT, 5 KNO","color":"#AA2BFF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:52,equip_armour:5b}}}
execute as @a[scores={buy=8, money=150..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=8, money=150..}] money 150








##################buy9
execute as @a[scores={buy=9, money=..59}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=9, money=60..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Assassin Armour","color":"#6E6E6E","italic":false}',Lore:['{"text":"Movement Speed: Fast","color":"#BABABA","italic":false}','{"text":"Physical Defense: Light","color":"#BABABA","italic":false}','{"text":"Magical Defense: None","color":"#BABABA","italic":false}','{"text":"Abilities: None","color":"#BABABA","italic":false}','{"text":"Req: None","color":"#BABABA","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:53,equip_armour:6b}}}
execute as @a[scores={buy=9, money=60..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=9, money=60..}] money 60





##################buy10
execute as @a[scores={buy=10, money=..59}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=10, money=60..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Sorcerer Armour","color":"#0040D6","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#2F7BDE","italic":false}','{"text":"Physical Defense: Light","color":"#2F7BDE","italic":false}','{"text":"Magical Defense: High","color":"#2F7BDE","italic":false}','{"text":"Abilities: Faster mana regeneration","color":"#2F7BDE","italic":false}','{"text":"Req: 2 ATT, 2 KNO","color":"#2F7BDE","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:54,equip_armour:7b}}}
execute as @a[scores={buy=10, money=60..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=10, money=60..}] money 60



##################buy11
execute as @a[scores={buy=11, money=..29}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=11, money=30..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Light Armour","color":"#734900","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#B36B00","italic":false}','{"text":"Physical Defense: Light","color":"#B36B00","italic":false}','{"text":"Magical Defense: None","color":"#B36B00","italic":false}','{"text":"Abilities: None","color":"#B36B00","italic":false}','{"text":"Req: None","color":"#B36B00","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:55,equip_armour:8b}}}
execute as @a[scores={buy=11, money=30..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=11, money=30..}] money 30




##################buy12
execute as @a[scores={buy=12, money=..79}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=12, money=80..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Medium Armour","color":"#595656","italic":false}',Lore:['{"text":"Movement Speed: Slow","color":"#B3B3B3","italic":false}','{"text":"Physical Defense: Medium","color":"#B3B3B3","italic":false}','{"text":"Magical Defense: None","color":"#B3B3B3","italic":false}','{"text":"Abilities: None","color":"#B3B3B3","italic":false}','{"text":"Req: 2 END","color":"#B3B3B3","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:56,equip_armour:9b}}}
execute as @a[scores={buy=12, money=80..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=12, money=80..}] money 80








##################buy13
execute as @a[scores={buy=13, money=..159}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=13, money=160..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Heavy Armour","color":"#B5AFAF","italic":false}',Lore:['{"text":"Movement Speed: Slow+","color":"#CCCCCC","italic":false}','{"text":"Physical Defense: High","color":"#CCCCCC","italic":false}','{"text":"Magical Defense: None","color":"#CCCCCC","italic":false}','{"text":"Abilities: None","color":"#CCCCCC","italic":false}','{"text":"Req: 5 END","color":"#CCCCCC","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:57,equip_armour:10b}}}
execute as @a[scores={buy=13, money=160..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=13, money=160..}] money 160




##################buy14
execute as @a[scores={buy=14, money=..199}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=14, money=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Ultra Heavy Armour","color":"#302936","italic":false}',Lore:['{"text":"Movement Speed: Very Slow","color":"#BCA5CC","italic":false}','{"text":"Physical Defense: Very High","color":"#BCA5CC","italic":false}','{"text":"Magical Defense: None","color":"#BCA5CC","italic":false}','{"text":"Abilities: None","color":"#BCA5CC","italic":false}','{"text":"Req: 8 END","color":"#BCA5CC","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:58,equip_armour:11b}}}
execute as @a[scores={buy=14, money=200..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=14, money=200..}] money 200




##################buy15
execute as @a[scores={buy=15, money=..179}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=15, money=180..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Golden Armour","color":"#FFBB00","italic":false}',Lore:['{"text":"Movement Speed: Slow","color":"#FFFB7D","italic":false}','{"text":"Physical Defense: Medium","color":"#FFFB7D","italic":false}','{"text":"Magical Defense: Light","color":"#FFFB7D","italic":false}','{"text":"Abilities: Reduced stun-time","color":"#FFFB7D","italic":false}','{"text":"Req: 4 END, 3 ATT","color":"#FFFB7D","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:59,equip_armour:12b}}}
execute as @a[scores={buy=15, money=180..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=15, money=180..}] money 180



##################buy16
execute as @a[scores={buy=16, money=..299}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=16, money=300..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Abyss-walker Armour","color":"#5B00A1","italic":false}',Lore:['{"text":"Movement Speed: Slow","color":"#9D47FF","italic":false}','{"text":"Physical Defense: Medium","color":"#9D47FF","italic":false}','{"text":"Magical Defense: Light","color":"#9D47FF","italic":false}','{"text":"Abilities: Hold shift and look down to travel to the Abyss (cost: 3 hearts)","color":"#9D47FF","italic":false}','{"text":"Req: 4 END, 3 KNO, 2 VIT","color":"#9D47FF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:60,equip_armour:13b}}}
execute as @a[scores={buy=16, money=300..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=16, money=300..}] money 300


##################buy17
execute as @a[scores={buy=17, money=..199}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=17, money=200..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Shadow-veil Armour","color":"#5B00A1","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#9D47FF","italic":false}','{"text":"Physical Defense: Light","color":"#9D47FF","italic":false}','{"text":"Magical Defense: None","color":"#9D47FF","italic":false}','{"text":"Abilities: Hold shift while out of combat to become invisible","color":"#9D47FF","italic":false}','{"text":"Req: 3 KNO, 3 AGI","color":"#9D47FF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:61,equip_armour:14b}}}
execute as @a[scores={buy=17, money=200..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=17, money=200..}] money 200



##################buy18
execute as @a[scores={buy=18, money=..249}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=18, money=250..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Blood Knight Armour","color":"#A13000","italic":false}',Lore:['{"text":"Movement Speed: Slow+","color":"#FF0000","italic":false}','{"text":"Physical Defense: High","color":"#FF0000","italic":false}','{"text":"Magical Defense: Light","color":"#FF0000","italic":false}','{"text":"Abilities: Out of combat regeneration","color":"#FF0000","italic":false}','{"text":"Req: 5 VIT, 5 END","color":"#FF0000","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:62,equip_armour:15b}}}
execute as @a[scores={buy=18, money=250..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=18, money=250..}] money 250


##################buy19
execute as @a[scores={buy=19, money=..119}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=19, money=120..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Angel Armour","color":"#D971D5","italic":false}',Lore:['{"text":"Movement Speed: Fast","color":"#FFB8FD","italic":false}','{"text":"Physical Defense: Light","color":"#FFB8FD","italic":false}','{"text":"Magical Defense: Light","color":"#FFB8FD","italic":false}','{"text":"Abilities: Slow Falling","color":"#FFB8FD","italic":false}','{"text":"Req: 3 KNO, 3 ATT","color":"#FFB8FD","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:63,equip_armour:16b}}}
execute as @a[scores={buy=19, money=120..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=19, money=120..}] money 120


##################buy20
execute as @a[scores={buy=20, money=..219}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=20, money=220..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Paladin Armour","color":"#E0D100","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#FFFB7D","italic":false}','{"text":"Physical Defense: Medium","color":"#FFFB7D","italic":false}','{"text":"Magical Defense: Light","color":"#FFFB7D","italic":false}','{"text":"Abilities: Slow Falling","color":"#FFFB7D","italic":false}','{"text":"Req: 3 KNO, 3 ATT, 4 END","color":"#FFFB7D","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:64,equip_armour:17b}}}
execute as @a[scores={buy=20, money=220..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=20, money=220..}] money 220



##################buy21
execute as @a[scores={buy=21, money=..149}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=21, money=150..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Warden Armour","color":"#6A6696","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#9EA1FF","italic":false}','{"text":"Physical Defense: Light","color":"#9EA1FF","italic":false}','{"text":"Magical Defense: None","color":"#9EA1FF","italic":false}','{"text":"Abilities: Hold shift to activate defense mode (mana drain cost)","color":"#9EA1FF","italic":false}','{"text":"Req: 1 ATT, 1 KNO, 1 END","color":"#9EA1FF","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:65,equip_armour:18b}}}
execute as @a[scores={buy=21, money=150..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=21, money=150..}] money 150



##################buy22
execute as @a[scores={buy=22, money=..129}] at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~ ~ 1 0

execute as @a[scores={buy=22, money=130..}] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Hunter Armour","color":"#4A2A14","italic":false}',Lore:['{"text":"Movement Speed: Regular","color":"#7A421C","italic":false}','{"text":"Physical Defense: Light","color":"#7A421C","italic":false}','{"text":"Magical Defense: None","color":"#7A421C","italic":false}','{"text":"Abilities: Strength boost when low on health","color":"#7A421C","italic":false}','{"text":"Req: None","color":"#7A421C","bold":true}']},HideFlags:127,Unbreakable:1b,CustomModelData:66,equip_armour:19b}}}
execute as @a[scores={buy=22, money=130..}] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

scoreboard players remove @a[scores={buy=22, money=130..}] money 130































































scoreboard players set @a buy 0


















