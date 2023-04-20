execute as @a[tag=!in_overworld,nbt={Dimension:"minecraft:overworld"}] run title @s title {"text":"- The Overworld -","color":"green"}
tag @a[nbt=!{Dimension:"minecraft:overworld"}] remove in_overworld
tag @a[nbt={Dimension:"minecraft:overworld"}] add in_overworld

gamemode survival @a[gamemode=adventure,tag=!safe_zone,nbt={Dimension:"minecraft:overworld"}]
gamemode adventure @a[gamemode=survival,tag=safe_zone,nbt={Dimension:"minecraft:overworld"}]