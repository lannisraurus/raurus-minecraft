replaceitem entity @a[tag=void_fighter] hotbar.0 minecraft:stone_sword{display:{Name:'{"text":"&/%$g","color":"dark_gray","bold":true,"obfuscated":true}',Lore:['{"text":"Void I","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:31,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:121000,UUIDMost:413327,Slot:"mainhand"}]} 1
replaceitem entity @a[tag=void_fighter,tag=!no_torch] hotbar.1 minecraft:redstone_torch{torch:1b,display:{Name:'{"text":"???","color":"red","bold":true,"italic":true,"underlined":true,"strikethrough":true}',Lore:['{"text":"You can see the void at the cost of not seeing what\'s beyond","color":"dark_red","bold":true,"italic":true,"underlined":false,"strikethrough":false}']}}
replaceitem entity @a[tag=void_fighter,tag=no_torch] hotbar.1 air
tag @a[nbt={SelectedItem:{tag:{torch:1b}}},tag=void_fighter] add torch

effect give @a[tag=torch] blindness 10 1 true
effect give @a[tag=torch] night_vision 10 1 true

effect clear @a[tag=!torch,tag=void_fighter] blindness
effect clear @a[tag=!torch,tag=void_fighter] night_vision




tag @a[tag=torch] remove torch