
############# MANA ################
scoreboard players add @a mana_tick 3
scoreboard players add @a[tag=arcane_sorcerer] mana_tick 3
scoreboard players add @a[scores={mana_tick=110..}] mana 1
scoreboard players set @a[scores={mana_tick=110..}] mana_tick 0
scoreboard players set @a[scores={mana=100..}] mana 100
scoreboard players set @a[scores={mana=..0}] mana 0

scoreboard players add @a[nbt={Inventory:[{Slot:100b,tag:{mana_regen:1b}}]}] mana_tick 1
scoreboard players add @a[nbt={Inventory:[{Slot:101b,tag:{mana_regen:1b}}]}] mana_tick 1
scoreboard players add @a[nbt={Inventory:[{Slot:102b,tag:{mana_regen:1b}}]}] mana_tick 1
scoreboard players add @a[nbt={Inventory:[{Slot:103b,tag:{mana_regen:1b}}]}] mana_tick 1



############# BLOOD ################
scoreboard players add @a[scores={blood2=1..}] blood 5
scoreboard players add @a[tag=blood_mage,scores={blood2=1..}] blood 5
scoreboard players set @a[scores={blood2=1..}] blood2 0

scoreboard players set @a[scores={blood=1000..}] blood 1000
scoreboard players set @a[scores={blood=..0}] blood 0



############ DARK MANA #############
scoreboard players add @a dmana_tick 10
scoreboard players add @a[tag=moonlight_spellsword] dmana_tick 10
scoreboard players add @a[scores={dmana_tick=500..}] dark_mana 1
scoreboard players set @a[scores={dmana_tick=500..}] dmana_tick 0
scoreboard players set @a[scores={dark_mana=500..}] dark_mana 500
scoreboard players set @a[scores={dark_mana=..0}] dark_mana 0



########### MAGIC INFO ITEMS #############


execute as @a[nbt={SelectedItem:{tag:{info_stone:1b}}}] run title @s actionbar ["",{"text":"Mana: ","color":"blue"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":"/100","color":"blue"},{"text":" , "},{"text":"Dark Mana: ","color":"dark_blue"},{"score":{"name":"@s","objective":"dark_mana"},"color":"dark_blue"},{"text":"/500","color":"dark_blue"},{"text":" , "},{"text":"Blood: ","color":"dark_red"},{"score":{"name":"@s","objective":"blood"},"color":"dark_red"},{"text":"/1000","color":"dark_red"},{"text":" , "},{"text":"Faith: ","color":"gold"},{"score":{"name":"@s","objective":"faith_power"},"color":"gold"},{"text":"/100","color":"gold"}]
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{info_stone:1b}}]}] run title @s actionbar ["",{"text":"Mana: ","color":"blue"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":"/100","color":"blue"},{"text":" , "},{"text":"Dark Mana: ","color":"dark_blue"},{"score":{"name":"@s","objective":"dark_mana"},"color":"dark_blue"},{"text":"/500","color":"dark_blue"},{"text":" , "},{"text":"Blood: ","color":"dark_red"},{"score":{"name":"@s","objective":"blood"},"color":"dark_red"},{"text":"/1000","color":"dark_red"},{"text":" , "},{"text":"Faith: ","color":"gold"},{"score":{"name":"@s","objective":"faith_power"},"color":"gold"},{"text":"/100","color":"gold"}]

execute as @a[nbt={SelectedItem:{tag:{show_mana:1b}}}] run title @s actionbar ["",{"text":"Mana: ","color":"blue"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":"/100","color":"blue"}]
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{show_mana:1b}}]}] run title @s actionbar ["",{"text":"Mana: ","color":"blue"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":"/100","color":"blue"}]

execute as @a[nbt={SelectedItem:{tag:{mana_dmana_blood:1b}}}] run title @s actionbar ["",{"text":"Mana: ","color":"blue"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":"/100","color":"blue"},{"text":" , "},{"text":"Dark Mana: ","color":"dark_blue"},{"score":{"name":"@s","objective":"dark_mana"},"color":"dark_blue"},{"text":"/500","color":"dark_blue"},{"text":" , "},{"text":"Blood: ","color":"dark_red"},{"score":{"name":"@s","objective":"blood"},"color":"dark_red"},{"text":"/1000","color":"dark_red"}]
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{mana_dmana_blood:1b}}]}] run title @s actionbar ["",{"text":"Mana: ","color":"blue"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":"/100","color":"blue"},{"text":" , "},{"text":"Dark Mana: ","color":"dark_blue"},{"score":{"name":"@s","objective":"dark_mana"},"color":"dark_blue"},{"text":"/500","color":"dark_blue"},{"text":" , "},{"text":"Blood: ","color":"dark_red"},{"score":{"name":"@s","objective":"blood"},"color":"dark_red"},{"text":"/1000","color":"dark_red"}]

execute as @a[nbt={SelectedItem:{tag:{show_dark_mana:1b}}}] run title @s actionbar ["",{"text":"Dark Mana: ","color":"dark_blue"},{"score":{"name":"@s","objective":"dark_mana"},"color":"dark_blue"},{"text":"/500","color":"dark_blue"}]
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{show_dark_mana:1b}}]}] run title @s actionbar ["",{"text":"Dark Mana: ","color":"dark_blue"},{"score":{"name":"@s","objective":"dark_mana"},"color":"dark_blue"},{"text":"/500","color":"dark_blue"}]

execute as @a[nbt={SelectedItem:{tag:{show_blood:1b}}}] run title @s actionbar ["",{"text":"Blood: ","color":"dark_red"},{"score":{"name":"@s","objective":"blood"},"color":"dark_red"},{"text":"/1000","color":"dark_red"}]
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{show_blood:1b}}]}] run title @s actionbar ["",{"text":"Blood: ","color":"dark_red"},{"score":{"name":"@s","objective":"blood"},"color":"dark_red"},{"text":"/1000","color":"dark_red"}]

execute as @a[nbt={SelectedItem:{tag:{mana_dmana:1b}}}] run title @s actionbar ["",{"text":"Mana: ","color":"blue"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":"/100","color":"blue"},{"text":" , "},{"text":"Dark Mana: ","color":"dark_blue"},{"score":{"name":"@s","objective":"dark_mana"},"color":"dark_blue"},{"text":"/500","color":"dark_blue"},{"text":" , "}]
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{mana_dmana:1b}}]}] run title @s actionbar ["",{"text":"Mana: ","color":"blue"},{"score":{"name":"@s","objective":"mana"},"color":"blue"},{"text":"/100","color":"blue"},{"text":" , "},{"text":"Dark Mana: ","color":"dark_blue"},{"score":{"name":"@s","objective":"dark_mana"},"color":"dark_blue"},{"text":"/500","color":"dark_blue"},{"text":" , "}]

execute at @e[tag=show_blood_stand] as @a[distance=..3] run title @s actionbar ["",{"text":"Blood: ","color":"dark_red"},{"score":{"name":"@s","objective":"blood"},"color":"dark_red"},{"text":"/1000","color":"dark_red"}]














