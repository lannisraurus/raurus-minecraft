setblock 153 135 159 redstone_block
clone 155 135 159 155 135 159 152 135 159
setblock 153 135 159 air
execute if entity @e[type=item,nbt={Item:{tag:{rand1:1b}}}] run scoreboard players set rand rand 1
execute if entity @e[type=item,nbt={Item:{tag:{rand2:1b}}}] run scoreboard players set rand rand 2
execute if entity @e[type=item,nbt={Item:{tag:{rand3:1b}}}] run scoreboard players set rand rand 3
execute if entity @e[type=item,nbt={Item:{tag:{rand4:1b}}}] run scoreboard players set rand rand 4
execute if entity @e[type=item,nbt={Item:{tag:{rand5:1b}}}] run scoreboard players set rand rand 5
execute if entity @e[type=item,nbt={Item:{tag:{rand6:1b}}}] run scoreboard players set rand rand 6
execute if entity @e[type=item,nbt={Item:{tag:{rand7:1b}}}] run scoreboard players set rand rand 7
execute if entity @e[type=item,nbt={Item:{tag:{rand8:1b}}}] run scoreboard players set rand rand 8
execute if entity @e[type=item,nbt={Item:{tag:{rand9:1b}}}] run scoreboard players set rand rand 9