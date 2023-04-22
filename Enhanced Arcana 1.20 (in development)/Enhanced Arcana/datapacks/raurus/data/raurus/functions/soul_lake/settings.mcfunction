execute as @a[tag=!in_soul_lake,nbt={Dimension:"raurus:soul_lake"}] run title @s title {"text":"- Soul Lake -","color":"aqua"}
tag @a[nbt=!{Dimension:"raurus:soul_lake"}] remove in_soul_lake
tag @a[nbt={Dimension:"raurus:soul_lake"}] add in_soul_lake

gamemode adventure @a[gamemode=survival,nbt={Dimension:"raurus:soul_lake"}]
execute as @a[tag=in_soul_lake,gamemode=adventure] at @s if block ~ ~ ~ water in raurus:abyss run tp @s 0 3 0



execute in raurus:soul_lake run forceload add 9876 10026 9900 10050 




execute in raurus:soul_lake positioned 9885 57.5 10038 unless entity @e[tag=soul_lake_info] run summon text_display ~ ~ ~ {billboard:"vertical",Tags:["soul_lake_info"],text:'{"text":"To get in you must sacrifice:\\n- Tundra Heart\\n- Arcane Heart\\n- Abyssal Heart\\n- Heart of the Sea\\n- Heart of Fire\\n- Wither Star","color":"#00FFB3"}'}
