# boat buy
execute as @e[type=interaction,tag=boat_interaction] at @s on target if score @s blood matches 50.. run function raurus:single/buy_boat

# blacksmith talk
execute as @e[type=interaction,tag=hammer_interaction] on target run scoreboard players set @s talk_blacksmith 100
execute as @a[scores={talk_blacksmith=1..}] run function raurus:single/talk_blacksmith

# blacksmith buy
execute as @e[type=interaction,tag=hammer_interaction] on attacker if score @s[tag=blacksmith] blood matches 200.. at @s run function raurus:single/buy_blacksmith

# seraph talk
execute as @e[type=interaction,tag=seraph_interaction] on target run scoreboard players set @s talk_seraph 100
execute as @a[scores={talk_seraph=1..}] run function raurus:single/talk_seraph

# seraph buy
execute as @e[type=interaction,tag=seraph_interaction] on attacker if score @s[tag=seraph_cleric] blood matches 200.. at @s run function raurus:single/buy_seraph

# Buy Scrolls

execute as @e[type=interaction,tag=arcane_scrolls_interaction] on target run tellraw @s ["",{"text":"<"},{"text":"Wilson","color":"aqua"},{"text":"> Give me [25 blood essence] and [10 magic essence] to craft [Scroll of Soul Pellet]. Give me [25 blood essence], [5 magic essence] and [5 shadow essence] to craft [Scroll of Soul Arrows]"}]

# Sell Books

scoreboard players enable @a[nbt={Dimension:"raurus:interstice"}] buy_book
execute as @e[type=interaction,tag=book_interaction] on target run tellraw @s ["",{"text":"------------ Book Shop ------------\n["},{"text":"Buy","color":"green","clickEvent":{"action":"run_command","value":"/trigger buy_book set 1"}},{"text":"] Sorcery Guide (30 blood)\n["},{"text":"Buy","color":"green","clickEvent":{"action":"run_command","value":"/trigger buy_book set 2"}},{"text":"] Bottany Guide (30 blood)\n["},{"text":"Buy","color":"green","clickEvent":{"action":"run_command","value":"/trigger buy_book set 3"}},{"text":"] Abyss Guide (30 blood)\n["},{"text":"Buy","color":"green","clickEvent":{"action":"run_command","value":"/trigger buy_book set 4"}},{"text":"] Blood Guide (30 blood)\n["},{"text":"Buy","color":"green","clickEvent":{"action":"run_command","value":"/trigger buy_book set 5"}},{"text":"] Monster Guide (not added) (30 blood)\n["},{"text":"Buy","color":"green","clickEvent":{"action":"run_command","value":"/trigger buy_book set 6"}},{"text":"] Tundra Guide (30 blood)\n["},{"text":"Buy","color":"green","clickEvent":{"action":"run_command","value":"/trigger buy_book set 7"}},{"text":"] Soul Lake Guide (30 blood)\n["},{"text":"Buy","color":"green","clickEvent":{"action":"run_command","value":"/trigger buy_book set 8"}},{"text":"] Blacksmithing Guide (not added) (30 blood)\n----------------------------------"}]
give @a[scores={buy_book=1,blood=30..}] written_book{display:{Name:'{"text":"Sorcery Guide","color":"#000CB5","bold":true}'},title:"",author:"Robert",pages:['{"text":"\\n\\n\\n\\n\\n\\nSorcery Guide","color":"#0013BF"}','{"text":"Magical Items can be crafted in crafting tables, obtained in  loot chests or bought from inhabitants of the overworld and interstice alike.","color":"#000000"}','{"text":"Most magical items require mana to use. Mana regeneration is increased with mage clothing, being an arcane sorcerer, or leveling up KNO. Total mana is increased by leveling ATT."}','{"text":"Celeritas Talisman - Grants speed to it\'s user, costing 20 mana. Crafted by dropping the following items on a crafting table: [1 emerald], [3 sticks], [5 gold ingots], [5 magic essence]"}','{"text":"Arcane Staff - Can cast up to three spells (one must learn the scrolls beforehand) - Soul Pellet, Soul Arrows and Soul Orb. The crafting recipe is: [2 amethyst shards], [3 lapis lazuli], [2 sticks], [5 magic essences]."}','{"text":"Arcane Staff Scrolls:\\nSoul Pellet - Bought in the Interstice\\nSoul Arrows - Bought in the Interstice\\nArcane Orb - Found in buried treasure"}','{"text":"Assassin Armour - Grants extra speed.\\nCrafting: [1 leather armour piece] and [1 shadow essence]"}','{"text":"Mage Robes - Grants extra mana regeneration.\\nCrafting: [1 leather armour piece] and [6 magic essence]"}','{"text":"Mana Potion - Restore 70 mana points.\\nCrafting: [1 water bottle] and [1 magic essence]"}','{"text":"Tome - Used for crafting higher magical items\\nCrafting: [1 book], [2 magical essence], [2 shadow essence] OR [1 book] and [1 arcane pen]"}','{"text":"Light Staff - Can cast up to three spells (one must learn the scrolls beforehand) - Electros, Levitae and Levitation Orb. The crafting recipe is: [2 amethyst shards], [5 gold ingots], [2 sticks], [10 magic essences]."}','{"text":"Light Staff Scrolls:\\nElectros: Dropped from Electric Phantoms (desert monster).\\nLevitae: Crafting using [1 tome], [3 magic essences], [3 shadow essences] and [3 life essences].\\nLevitation Orb: Found in underwater ruins."}','{"text":"Void Staff - Can cast up to three spells (one must learn the scrolls beforehand) - Rot Wave, Banishment Orb and Blink. The crafting recipe is: [2 amethyst shards], [1 diamond], [2 sticks], [5 shadow essences]."}','{"text":"Void Staff Scrolls:\\nRot Wave - Dropped by Abyss Wardens (found in the Abyss)\\nBanishment Orb - Rare loot in mob spawners.\\nBlink - Found in mineshafts."}','{"text":"Staff of Life - Can fire a player healing orb and cast a regeneration spell. These spells come with the staff.\\nCrafting: [2 sticks], [1 emerald], [2 amethyst shards], [5 magic essence], [5 life essence]"}']} 1
give @a[scores={buy_book=2,blood=30..}] written_book{display:{Name:'{"text":"Bottany Guide","color":"#00FF11","bold":true}'},title:"",author:"Jerry",pages:['{"text":"\\n\\n\\n\\n\\n\\nBottany Guide","color":"#006B12"}','[{"text":"Introduction: ","color":"#006B12"},{"text":"The art of Bottany is known by the overworld druids, ancient sorcerers from by-gone eras, persisting the divine wars with unrelenting  endurance. Some believe the art of bottany is possible to be learnt by other creatures too...","color":"#000000"}]','[{"text":"Grow Crops (50 mana)\\n","color":"#006B12"},{"text":"Shift down on a crop and right click on it to instantly grow it, costing 50 mana. This works on wheat, potatoes and carrots. These are the ancient plants from the Age of Druids.","color":"#000000"}]','[{"text":"Enchant Flower (50 blood)\\n","color":"#006B12"},{"text":"Shift down on a cornflower, blue orchid OR allium and right click on it to enchant it, costing 50 blood. These flowers then periodically produce magic essence. To collect the essence, sneak around the flowers.","color":"#000000"}]','[{"text":"Enchant Shroom (50 blood)\\n","color":"#006B12"},{"text":"Shift down on a brown mushroom and right click on it to enchant it, costing 50 blood. These mushrooms will start periodically producing poison charms, throw-able poison inducing darts. The way of collecting them is the same as enchanted flowers.","color":"#000000"}]','[{"text":"Curse Shroom (20 blood)\\n","color":"#006B12"},{"text":"Shift down on a red mushroom and right click on it to curse it, costing 20 blood. These mushrooms explode on contact with non bottany users, dealing poison. It is said this magic was taught to the druids by a small talking raccoon!","color":"#000000"}]','[{"text":"Sap Life (50 mana)\\n","color":"#006B12"},{"text":"Shift down on a tree sapling and right click on it to sap it\'s life (gains blood). The tree is then replaced by a dead tree sapling. This spell is fairly recent, being used as a last resource for druids caught in the Ophan - Seraph war. ","color":"#000000"}]']} 1
give @a[scores={buy_book=3,blood=30..}] written_book{display:{Name:'{"text":"Abyssal Guide","color":"#8500B5","bold":true}'},title:"",author:"Lannis",pages:['{"text":"\\n\\n\\n\\n\\n\\nAbyssal Guide","color":"#4B006B"}','{"text":"The abyss, also known as the great void, is the source of all consciousness. With blood one can make life, chaotic motion, evolution and the like. With abyss, one has [HUMANITY], the material of the immaterial, the soul.","color":"#000000"}','{"text":"The abyss was once a thriving place, full of powerful and wise creatures. As the creatures abandoned the abyss to travel to other planes, the Abyss was left with the Abyss Wardens to guard it from whoever dares disrupt the ancient realm..."}','{"text":"The Abyss Wardens hold a secret - the Abyssal Heart. It is said that killing 10 of them will grant you this powerful artifact... I wouldn\'t try it myself..."}','{"text":"To get to the abyss one can jump in the murky waters of Soul Lake, or learn the art of Void walking, known by the Ophan Clerics."}']} 1
give @a[scores={buy_book=4,blood=30..}] written_book{display:{Name:'{"text":"Blood Guide","color":"#B50000","bold":true}'},title:"",author:"???",pages:['{"text":"\\n\\n\\n\\n\\n\\nBlood Guide","color":"#6B0000"}','{"text":"Blood is the essence of all physical life, it is what ties us to the plane of reality. It\'s used in many magical item crafting recipes, namely in the [Arcane Heart], used to revive dead players (players who have lost all their lives). Killing mobs grants blood.","color":"#000000"}','{"text":"Blood Demons were the first creatures brought on by blood, however their realm has since been destroyed, conquered by Lannis\'s magic... They even lost their heat resistance with time, living in the overworld as parasites."}']} 1
give @a[scores={buy_book=6,blood=30..}] written_book{display:{Name:'{"text":"Tundra Guide","color":"#006DB5","bold":true}'},title:"",author:"Lannis",pages:['{"text":"\\n\\n\\n\\n\\n\\nTundra Guide","color":"#0086BF"}','{"text":"The Tundra, one of my greatest creations... Built from ice and snow, the Tundra is a dangerous Realm, where you are prone to freezing to death. Warm clothing such as leather armour can slow the process, but freezing is inevitable.","color":"#000000"}','{"text":"The frost in the Tundra is magical, being impossible to fight if not for the Magical Bonfires, dealt by an artisan in the Interstice (rumors say)."}','{"text":"In the Tundra it is impossible to damage the terrain, with the exception of mining ancient debris with a Tundra Pickaxe. These ores are found below sea level, in the great caverns. I wouldn\'t dare to try mine underwater, as the freezing is more intense..."}','{"text":"The tundra is also home to a plethera of monsters, such as wither skeletons, blazes, fire sprites, rot wizards, nether echoes, phantoms, poisonous spiders , hoglins, ghasts and piglins."}','{"text":"The Tundra also holds it\'s greatest relic - the Tundra Heart... There are many of these hearts, as they split into many from the great magical expansion.. It is unknown on how to get them."}']} 1
give @a[scores={buy_book=7,blood=30..}] written_book{display:{Name:'{"text":"Soul Lake Guide","color":"#00FFCC","bold":true}'},title:"",author:"Lannis",pages:['{"text":"\\n\\n\\n\\n\\n\\nSoul Lake Guide","color":"#00F2BA"}','{"text":"The Soul Lake is the base of all realms, in which the interstice is rooted. It\'s a primal world, absent of magic, now home to the [Gate of Progress]. This gate can be unlocked by collecting special, powerful artifacts by throwing them into the great fire.","color":"#000000"}','{"text":"The first creatures of the Abyss washed up on the shores of Soul Lake, and started to build their realms from there. One can still walk the ancient sands, made of the remains of ancient gods and mystical beings, the firstborns of the abyss."}','{"text":"The primordial fire is said to have the ability to erase one\'s souls, however the method is kept secret by the magical community..."}']} 1

# MISSING MONSTER GUIDE
# MISSING BLACKSMITHING GUIDE
scoreboard players remove @a[scores={buy_book=1..,blood=30..}] blood 30
scoreboard players set @a buy_book 0


# tundra talk
execute as @e[type=interaction,tag=tundra_interaction] on attacker run scoreboard players set @s talk_tundra 240
execute as @a[scores={talk_tundra=1..}] run function raurus:single/talk_tundra

# tundra buy
execute as @e[type=interaction,tag=tundra_interaction] on target if score @s blood matches 100.. at @s run function raurus:single/buy_tundra

effect give @a[nbt={SelectedItem:{tag:{tundra_pick:1b}}},nbt=!{Dimension:"minecraft:the_nether"}] mining_fatigue 1 255 true


# soul lake door mechanics
execute in raurus:soul_lake if entity @a[tag=admin] run fill 9884 54 10039 9886 54 10037 air
execute in raurus:soul_lake unless entity @a[tag=admin] run fill 9884 54 10039 9886 54 10037 minecraft:gray_stained_glass
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star"}}] in raurus:soul_lake run setblock 9881 54 10041 redstone_block
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star"}}] run scoreboard players add @a exp 100
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:nether_star"}}] run summon lightning_bolt
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:heart_of_the_sea"}}] in raurus:soul_lake run setblock 9880 54 10041 redstone_block
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:heart_of_the_sea"}}] run scoreboard players add @a exp 100
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{id:"minecraft:heart_of_the_sea"}}] run summon lightning_bolt
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{tundra_heart:1b}}}] in raurus:soul_lake run setblock 9879 54 10041 redstone_block
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{tundra_heart:1b}}}] run scoreboard players add @a exp 100
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{tundra_heart:1b}}}] run summon lightning_bolt
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{ghost_revival:1b}}}] in raurus:soul_lake run setblock 9881 54 10035 redstone_block
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{ghost_revival:1b}}}] run scoreboard players add @a exp 100
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{ghost_revival:1b}}}] run summon lightning_bolt
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{fire_heart:1b}}}] in raurus:soul_lake run setblock 9880 54 10035 redstone_block
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{fire_heart:1b}}}] run scoreboard players add @a exp 100
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{fire_heart:1b}}}] run summon lightning_bolt
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{abyssal_heart:1b}}}] in raurus:soul_lake run setblock 9879 54 10035 redstone_block
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{abyssal_heart:1b}}}] run scoreboard players add @a exp 100
execute at @e[tag=soul_fire] if entity @e[type=item,distance=..3,nbt={Item:{tag:{abyssal_heart:1b}}}] run summon lightning_bolt

# open soul lake
execute in raurus:soul_lake if block 9881 54 10041 redstone_block if block 9880 54 10041 redstone_block if block 9879 54 10041 redstone_block if block 9881 54 10035 redstone_block if block 9880 54 10035 redstone_block if block 9879 54 10035 redstone_block run fill 9876 61 10040 9876 56 10036 air destroy

# soul lake go
execute as @e[tag=soul_lake_go_interaction] on target in raurus:soul_lake run tp @s 9890 57 10038

# fire keeper
execute as @e[type=interaction,tag=level_up_interaction] on attacker run scoreboard players set @s level_up_talk 0
scoreboard players add @a[scores={level_up_talk=..80}] level_up_talk 1
tellraw @a[scores={level_up_talk=1}] ["",{"text":"<"},{"text":"Firekeeper","color":"#FFAD00"},{"text":"> ..."}]
tellraw @a[scores={level_up_talk=80}] {"text":"- She cannot speak, for she has no tongue."}
execute as @e[type=interaction,tag=level_up_interaction] on target run function raurus:single/stats_message


# blood trader

execute as @e[type=interaction,tag=blood_interaction] on attacker run tellraw @s ["",{"text":"<"},{"text":"Blood Sorcerer","color":"red"},{"text":"> The Arcane Heart? A very useful artifact, used for reviving players stuck in the interstice... To craft it all you need is [10 Blood Essence], [3 Sticks] and [2 Rotten Flesh]. Just drop these items on top of a crafting table."}]
execute as @e[type=interaction,tag=blood_interaction] on target if score @s blood matches 10.. at @s run function raurus:single/buy_blood
