execute as @a[tag=!in_soul_lake,nbt={Dimension:"raurus:soul_lake"}] run title @s title {"text":"- Soul Lake -","color":"aqua"}
tag @a[nbt=!{Dimension:"raurus:soul_lake"}] remove in_soul_lake
tag @a[nbt={Dimension:"raurus:soul_lake"}] add in_soul_lake

gamemode adventure @a[gamemode=survival,nbt={Dimension:"raurus:soul_lake"}]
execute as @a[tag=in_soul_lake,gamemode=adventure] at @s if block ~ ~ ~ water run tp ~ ~-0.2 ~
execute as @a[tag=in_soul_lake,gamemode=adventure] at @s if block ~ ~ ~ water run damage @s 4 minecraft:magic



execute in raurus:soul_lake run forceload add 9876 10026 9900 10050 
execute in raurus:soul_lake run forceload add 9819 10119

