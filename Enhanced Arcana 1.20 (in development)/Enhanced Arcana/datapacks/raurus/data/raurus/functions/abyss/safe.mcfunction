execute as @a[tag=!in_abyss,nbt={Dimension:"raurus:abyss"},tag=has_class] run title @s title {"text":"- The Void -","color":"dark_purple"}
tag @a[nbt=!{Dimension:"raurus:abyss"}] remove in_abyss
tag @a[nbt={Dimension:"raurus:abyss"}] add in_abyss

effect clear @a[nbt={Dimension:"raurus:abyss"}] night_vision

gamemode adventure @a[gamemode=survival,nbt={Dimension:"raurus:abyss"}]
execute in raurus:abyss run kill @e[type=tnt,distance=0..]
execute in raurus:abyss run kill @e[type=creeper,distance=0..]
execute in raurus:abyss run kill @e[type=fireball,distance=0..]
execute in raurus:abyss run kill @e[type=tnt_minecart,distance=0..]

forceload add -5 -20 3 -10
