#blood essence
give @a[scores={blood=1..}] red_dye{display:{Name:'{"text":"Blood Essence","color":"#A10000"}'},blood:1b} 1
scoreboard players remove @a[scores={blood=1..}] blood 1

#human soul
give @a[scores={kill_player_2=1..}] clay_ball{display:{Name:'{"text":"Human Soul","color":"#DEB6DD","bold":true}',Lore:['{"text":"Soul ripped out of the betrayed\'s body...","color":"#F7CBF6"}']},soul:1b,Enchantments:[{}]} 1
scoreboard players set @a[scores={kill_player_2=1..}] kill_player_2 0





















