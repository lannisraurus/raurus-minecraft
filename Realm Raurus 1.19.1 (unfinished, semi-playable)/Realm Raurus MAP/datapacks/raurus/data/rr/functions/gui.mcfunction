### LVL UP BOOK OLD
###item replace entity @a hotbar.8 with written_book{kill:1b,display:{Name:'{"text":"Player Book","color":"#4C00CF"}'},title:"",author:"You",generation:0,pages:['[{"text":"DEX - ","color":"#FF6F00","hoverEvent":{"action":"show_text","contents":[{"text":"Dexterity: Increases attack speed and decreases cooldowns","color":"#FF6F00"}]}},{"score":{"name":"@s -","objective":"dex"},"color":"#FF7700","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FF6F00"}]}},{"text":"  - [^]\\n","color":"#279100","hoverEvent":{"action":"show_text","contents":[{"text":"Level Up","color":"#279100"}]},"clickEvent":{"action":"run_command","value":"/trigger lvl_dex set 1"}},{"text":"AGI - ","color":"#00BD7E","hoverEvent":{"action":"show_text","contents":[{"text":"Agility: Increases movement speed and stamina regen","color":"#00BD7E"}]}},{"score":{"name":"@s -","objective":"agi"},"color":"#00915C","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00BD7E"}]}},{"text":"  - [^]\\n","color":"#279100","hoverEvent":{"action":"show_text","contents":[{"text":"Level Up","color":"#279100"}]},"clickEvent":{"action":"run_command","value":"/trigger lvl_agi set 1"}},{"text":"ATT - ","color":"#00BBFF","hoverEvent":{"action":"show_text","contents":[{"text":"Attunement: Increases mana pool","color":"#00B3FF"}]}},{"score":{"name":"@s -","objective":"att"},"color":"#00BBFF","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00B3FF"}]}},{"text":"  - [^]\\n","color":"#279100","hoverEvent":{"action":"show_text","contents":[{"text":"Level Up","color":"#279100"}]},"clickEvent":{"action":"run_command","value":"/trigger lvl_att set 1"}},{"text":"KNO - ","color":"#0011FF","hoverEvent":{"action":"show_text","contents":[{"text":"Knowledge: Increases mana regeneration speed","color":"#0800FF"}]}},{"score":{"name":"@s -","objective":"kno"},"color":"#0008FF","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#0800FF"}]}},{"text":"  - [^]\\n","color":"#279100","hoverEvent":{"action":"show_text","contents":[{"text":"Level Up","color":"#279100"}]},"clickEvent":{"action":"run_command","value":"/trigger lvl_kno set 1"}},{"text":"VIT - ","color":"#0D5E00","hoverEvent":{"action":"show_text","contents":[{"text":"Vitality: Increases total health","color":"#0B6E00"}]}},{"score":{"name":"@s -","objective":"vit"},"color":"#167000","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#0B6E00"}]}},{"text":" -  [^]\\n","color":"#279100","hoverEvent":{"action":"show_text","contents":[{"text":"Level Up","color":"#279100"}]},"clickEvent":{"action":"run_command","value":"/trigger lvl_vit set 1"}},{"text":"END - ","color":"#07CF00","hoverEvent":{"action":"show_text","contents":[{"text":"Endurance: Increases total stamina and allows for better armour","color":"#09FF00"}]}},{"score":{"name":"@s -","objective":"end"},"color":"#07CF00","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#09FF00"}]}},{"text":"  - [^]\\n","color":"#279100","hoverEvent":{"action":"show_text","contents":[{"text":"Level Up","color":"#279100"}]},"clickEvent":{"action":"run_command","value":"/trigger lvl_end set 1"}},{"text":"STR - ","color":"#700000","hoverEvent":{"action":"show_text","contents":[{"text":"Strength: Increases damage and allows for the use of heavy weapons","color":"#FF2424"}]}},{"score":{"name":"@s -","objective":"str"},"color":"#700000","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FF2424"}]}},{"text":"  - [^]\\n","color":"#279100","hoverEvent":{"action":"show_text","contents":[{"text":"Level Up","color":"#279100"}]},"clickEvent":{"action":"run_command","value":"/trigger lvl_str set 1"}},{"text":"\\n\\nPoints: ","color":"#007A04","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00BD7E"}]}},{"score":{"name":"@s","objective":"lvl_up"},"color":"#007A04","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00BD7E"}]}},{"text":"\\nLevel: ","color":"#007A04","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00BD7E"}]}},{"score":{"name":"@s","objective":"lvl"},"color":"#007A04","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00BD7E"}]}},{"text":"\\nBalance: ","color":"#FFB300","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00BD7E"}]}},{"score":{"name":"@s","objective":"money"},"color":"#FFB300","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00BD7E"}]}},{"text":"$","color":"#FFB300","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#00BD7E"}]}}]']} 1


### LEVEL UP - NEW
scoreboard players set @a[nbt=!{SelectedItem:{tag:{stats:1b}}}] menu 0
tag @a[scores={menu=2}] add menu2
scoreboard players set @a[nbt={SelectedItem:{tag:{stats:1b}}},tag=!menu2] menu 1
item replace entity @a[tag=safe] hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Player Stats","color":"#08BD32","bold":true}',Lore:['{"text":"Hold to open menu","color":"#00FF11"}']},HideFlags:127,Unbreakable:1b,CustomModelData:33,kill:1b,stats:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1443128786,1663321975,-1674660663,431484013],Slot:"mainhand"}]} 1


### MANA DISPLAY
execute as @a[nbt=!{SelectedItem:{tag:{stats:1b}}},nbt=!{SelectedItem:{tag:{shop:1b}}},nbt=!{SelectedItem:{tag:{return:1b}}}] run title @s actionbar ["",{"text":"Mana: "},{"score":{"name":"@s","objective":"mana"}},{"text":"/"},{"score":{"name":"@s","objective":"mana_max"}},{"text":" || Stamina: "},{"score":{"name":"@s","objective":"stamina"}},{"text":"/"},{"score":{"name":"@s","objective":"stamina_max"}},{"text":" || Cooldown: "},{"score":{"name":"@s","objective":"cooldown"}},{"text":"/"},{"score":{"name":"@s","objective":"cooldown_max"}}]
execute as @a[nbt={SelectedItem:{tag:{stats:1b}}}] run title @s actionbar ["",{"text":"EXP: ","bold":true},{"score":{"name":"@s","objective":"exp"},"bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"exp_needed"},"bold":true},{"text":" || Money: ","bold":true},{"score":{"name":"@s","objective":"money"},"bold":true},{"text":" || PWR Slots: ","bold":true},{"score":{"name":"@s","objective":"power_slots"},"bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"power_slots_max"},"bold":true}]
execute as @a[nbt={SelectedItem:{tag:{shop:1b}}}] run title @s actionbar ["",{"text":"EXP: ","bold":true},{"score":{"name":"@s","objective":"exp"},"bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"exp_needed"},"bold":true},{"text":" || Money: ","bold":true},{"score":{"name":"@s","objective":"money"},"bold":true},{"text":" || PWR Slots: ","bold":true},{"score":{"name":"@s","objective":"power_slots"},"bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"power_slots_max"},"bold":true}]
execute as @a[nbt={SelectedItem:{tag:{return:1b}}}] run title @s actionbar ["",{"text":"EXP: ","bold":true},{"score":{"name":"@s","objective":"exp"},"bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"exp_needed"},"bold":true},{"text":" || Money: ","bold":true},{"score":{"name":"@s","objective":"money"},"bold":true},{"text":" || PWR Slots: ","bold":true},{"score":{"name":"@s","objective":"power_slots"},"bold":true},{"text":"/","bold":true},{"score":{"name":"@s","objective":"power_slots_max"},"bold":true}]






### SHOP
tag @a[nbt=!{SelectedItem:{tag:{shop:1b}}}] remove open_shop
scoreboard players set @a[nbt=!{SelectedItem:{tag:{shop:1b}}}] shop 0
scoreboard players set @a[nbt={SelectedItem:{tag:{shop:1b}}},tag=!open_shop] shop 1
tag @a[nbt={SelectedItem:{tag:{shop:1b}}}] add open_shop

item replace entity @a[tag=safe] hotbar.7 with carrot_on_a_stick{display:{Name:'{"text":"Shop","color":"#FFC000","bold":true}',Lore:['{"text":"Right click","color":"#FFC000"}']},HideFlags:127,Unbreakable:1b,CustomModelData:34,kill:1b,shop:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1443128786,1663321975,-1674660663,431484013],Slot:"mainhand"}]} 1



### REMOVE ARMOUR

item replace entity @a[tag=safe] hotbar.6 with carrot_on_a_stick{display:{Name:'{"text":"Remove Armour","color":"#690000","bold":true}',Lore:['{"text":"Right Click","color":"#690000"}']},HideFlags:127,Unbreakable:1b,CustomModelData:38,kill:1b,remove_armour:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1443128786,1663321975,-1674660663,431484013],Slot:"mainhand"}]} 1







### DISABLE SHOP AND LVL UP AND RETURN HOME
item replace entity @a[tag=!safe,gamemode=adventure] hotbar.6 with barrier{kill:1b,display:{Name:'{"text":"Blocked","color":"#730000"}'}}
item replace entity @a[tag=!safe,gamemode=adventure] hotbar.7 with barrier{kill:1b,display:{Name:'{"text":"Blocked","color":"#730000"}'}}


execute if score gamemode gamemode matches 1 run item replace entity @a[tag=!safe,tag=in_game] hotbar.8 with carrot_on_a_stick{display:{Name:'{"text":"Return to Base","color":"#0F0073","bold":true}',Lore:['{"text":"Right Click","color":"#0F0073"}']},HideFlags:127,Unbreakable:1b,CustomModelData:39,kill:1b,return:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;1036764480,-671333336,-1999880381,-27126715]}]} 1


item replace entity @a[tag=!safe,gamemode=adventure,tag=!in_game] hotbar.8 with barrier{kill:1b,display:{Name:'{"text":"Blocked","color":"#730000"}'}}

clear @a[tag=!safe] carrot_on_a_stick{shop:1b}
clear @a[tag=!safe] carrot_on_a_stick{remove_armour:1b}
clear @a[tag=!safe] carrot_on_a_stick{stats:1b}