execute positioned 10118 64 10002 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}},distance=..1] run effect give @a[limit=1,sort=nearest] speed 600 0 true
execute positioned 10118 64 10002 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond"}},distance=..1]

execute positioned 10118 64 10002 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald"}},distance=..1] run effect give @a[limit=1,sort=nearest] haste 600 0 true
execute positioned 10118 64 10002 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:emerald"}},distance=..1]

execute positioned 10118 64 10002 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1] run effect give @a[limit=1,sort=nearest] minecraft:fire_resistance 400 0 true
execute positioned 10118 64 10002 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..1]

execute positioned 10118 64 10002 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:quartz"}},distance=..1] run effect give @a[limit=1,sort=nearest] minecraft:night_vision 600 1 true
execute positioned 10118 64 10002 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:quartz"}},distance=..1]

execute positioned 10118 64 10002 if entity @e[distance=..1,type=minecraft:item,nbt={Item:{tag:{blood:1b}}}] run effect give @a[limit=1,sort=nearest] minecraft:health_boost 800 0 true
execute positioned 10118 64 10002 run kill @e[type=minecraft:item,nbt={Item:{tag:{blood:1b}}},distance=..1]

execute positioned 10118 64 10002 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1] run effect give @a[limit=1,sort=nearest] resistance 60 0 true
execute positioned 10118 64 10002 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..1]

execute positioned 10118 64 10002 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:coal"}},distance=..1] run effect give @a[limit=1,sort=nearest] blindness 30 0 true
execute positioned 10118 64 10002 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:coal"}},distance=..1]

execute positioned 10118 64 10002 if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..1] run effect give @a[limit=1,sort=nearest] invisibility 500 0 true
execute positioned 10118 64 10002 run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..1]




























