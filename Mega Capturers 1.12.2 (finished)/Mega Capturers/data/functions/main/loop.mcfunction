# ALL COMMANDS BY HXADOW, USED FOR THE MEGA CAPTURERS MAP

weather clear


# Towers

# Blue Capturing Tower C

execute @e[tag=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 0 /scoreboard players tag @a[r=0] add CapturingUnC
execute @a[tag=blue] ~ ~ ~ /scoreboard players add @a[tag=CapturingUnC] CapturingUnCT 1
execute @a[score_CapturingUnCT_min=100,tag=blue] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 3 replace stained_glass 0
execute @a[score_CapturingUnCT_min=100,tag=blue] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 3 replace wool 0
execute @a[score_CapturingUnCT_min=100,tag=blue] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingUnCT_min=100,tag=blue] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingUnCT_min=100,tag=blue] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingUnC
execute @a[score_CapturingUnCT_min=100,tag=blue] ~ ~ ~ /scoreboard players set @a[r=0] CapturingUnCT 0
scoreboard players tag @a[tag=CapturingUnC] remove CapturingUnC

# Red Capturing Tower C

execute @e[tag=red] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 0 /scoreboard players tag @a[r=0] add CapturingUnC
execute @a[tag=red] ~ ~ ~ /scoreboard players add @a[tag=CapturingUnC] CapturingUnCT 1
execute @a[score_CapturingUnCT_min=100,tag=red] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 4 replace stained_glass 0
execute @a[score_CapturingUnCT_min=100,tag=red] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 4 replace wool 0
execute @a[score_CapturingUnCT_min=100,tag=red] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingUnCT_min=100,tag=red] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingUnCT_min=100,tag=red] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingUnC
execute @a[score_CapturingUnCT_min=100,tag=red] ~ ~ ~ /scoreboard players set @a[r=0] CapturingUnCT 0
scoreboard players tag @a[tag=CapturingUnC] remove CapturingUnC

# Blue Capturing Tower B

execute @e[tag=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 7 /scoreboard players tag @a[r=0] add CapturingUnB
execute @a[tag=blue] ~ ~ ~ /scoreboard players add @a[tag=CapturingUnB] CapturingUnBT 1
execute @a[score_CapturingUnBT_min=100,tag=blue] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 9 replace stained_glass 7
execute @a[score_CapturingUnBT_min=100,tag=blue] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 9 replace wool 7
execute @a[score_CapturingUnBT_min=100,tag=blue] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingUnBT_min=100,tag=blue] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingUnBT_min=100,tag=blue] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingUnB
execute @a[score_CapturingUnBT_min=100,tag=blue] ~ ~ ~ /scoreboard players set @a[r=0] CapturingUnBT 0
scoreboard players tag @a[tag=CapturingUnB] remove CapturingUnB

# Red Capturing Tower B

execute @e[tag=red] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 7 /scoreboard players tag @a[r=0] add CapturingUnB
execute @a[tag=red] ~ ~ ~ /scoreboard players add @a[tag=CapturingUnB] CapturingUnBT 1
execute @a[score_CapturingUnBT_min=100,tag=red] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 1 replace stained_glass 7
execute @a[score_CapturingUnBT_min=100,tag=red] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 1 replace wool 7
execute @a[score_CapturingUnBT_min=100,tag=red] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingUnBT_min=100,tag=red] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingUnBT_min=100,tag=red] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingUnB
execute @a[score_CapturingUnBT_min=100,tag=red] ~ ~ ~ /scoreboard players set @a[r=0] CapturingUnBT 0
scoreboard players tag @a[tag=CapturingUnB] remove CapturingUnB

# Blue Capturing Tower A

execute @e[tag=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 15 /scoreboard players tag @a[r=0] add CapturingUnA
execute @a[tag=blue] ~ ~ ~ /scoreboard players add @a[tag=CapturingUnA] CapturingUnAT 1
execute @a[score_CapturingUnAT_min=100,tag=blue] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 11 replace stained_glass 15
execute @a[score_CapturingUnAT_min=100,tag=blue] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 11 replace wool 15
execute @a[score_CapturingUnAT_min=100,tag=blue] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingUnAT_min=100,tag=blue] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingUnAT_min=100,tag=blue] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingUnA
execute @a[score_CapturingUnAT_min=100,tag=blue] ~ ~ ~ /scoreboard players set @a[r=0] CapturingUnAT 0
scoreboard players tag @a[tag=CapturingUnA] remove CapturingUnA

# Red Capturing Tower A

execute @e[tag=red] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 15 /scoreboard players tag @a[r=0] add CapturingUnA
execute @a[tag=red] ~ ~ ~ /scoreboard players add @a[tag=CapturingUnA] CapturingUnAT 1
execute @a[score_CapturingUnAT_min=100,tag=red] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 14 replace stained_glass 15
execute @a[score_CapturingUnAT_min=100,tag=red] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 14 replace wool 15
execute @a[score_CapturingUnAT_min=100,tag=red] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingUnAT_min=100,tag=red] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingUnAT_min=100,tag=red] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingUnA
execute @a[score_CapturingUnAT_min=100,tag=red] ~ ~ ~ /scoreboard players set @a[r=0] CapturingUnAT 0
scoreboard players tag @a[tag=CapturingUnA] remove CapturingUnA

# Capturing Red C

execute @e[tag=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 4 /scoreboard players tag @a[r=0] add CapturingRedC
execute @a[tag=blue] ~ ~ ~ /scoreboard players add @a[tag=CapturingRedC] CapturingRedCT 1
execute @a[score_CapturingRedCT_min=249] ~ ~ ~ /tellraw @a {"text":"!BLUE TEAM HAS CAPTURED RED TEAM'S HOME TOWER!","bold":true,"color":"blue"}
execute @a[score_CapturingRedCT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 3 replace stained_glass 4
execute @a[score_CapturingRedCT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 3 replace wool 4
execute @a[score_CapturingRedCT_min=249] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingRedCT_min=249] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingRedCT_min=249] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingRedC
execute @a[score_CapturingRedCT_min=249] ~ ~ ~ /scoreboard players set @a[r=0] CapturingRedCT 0
scoreboard players tag @a[tag=CapturingRedC] remove CapturingRedC

# Capturing Blue C

execute @e[tag=red] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 3 /scoreboard players tag @a[r=0] add CapturingBlueC
execute @a[tag=red] ~ ~ ~ /scoreboard players add @a[tag=CapturingBlueC] CapturingBlueCT 1
execute @a[score_CapturingBlueCT_min=249] ~ ~ ~ /tellraw @a {"text":"!RED TEAM HAS CAPTURED THEIR HOME TOWER!","bold":true,"color":"red"}
execute @a[score_CapturingBlueCT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 4 replace stained_glass 3
execute @a[score_CapturingBlueCT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 4 replace wool 3
execute @a[score_CapturingBlueCT_min=249] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingBlueCT_min=249] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingBlueCT_min=249] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingBlueC
execute @a[score_CapturingBlueCT_min=249] ~ ~ ~ /scoreboard players set @a[r=0] CapturingBlueCT 0
scoreboard players tag @a[tag=CapturingBlueC] remove CapturingBlueC

# Capturing Red B

execute @e[tag=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 1 /scoreboard players tag @a[r=0] add CapturingRedB
execute @a[tag=blue] ~ ~ ~ /scoreboard players add @a[tag=CapturingRedB] CapturingRedBT 1
execute @a[score_CapturingRedBT_min=249] ~ ~ ~ /tellraw @a {"text":"!BLUE TEAM HAS CAPTURED THE CONFLICT TOWER!","bold":true,"color":"blue"}
execute @a[score_CapturingRedBT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 9 replace stained_glass 1
execute @a[score_CapturingRedBT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 9 replace wool 1
execute @a[score_CapturingRedBT_min=249] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingRedBT_min=249] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingRedAT_min=249] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingRedB
execute @a[score_CapturingRedBT_min=249] ~ ~ ~ /scoreboard players set @a[r=0] CapturingRedBT 0
scoreboard players tag @a[tag=CapturingRedB] remove CapturingRedB

# Capturing Blue B

execute @e[tag=red] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 9 /scoreboard players tag @a[r=0] add CapturingBlueB
execute @a[tag=red] ~ ~ ~ /scoreboard players add @a[tag=CapturingBlueB] CapturingBlueBT 1
execute @a[score_CapturingBlueBT_min=249] ~ ~ ~ /tellraw @a {"text":"!RED TEAM HAS CAPTURED THE CONFLICT TOWER!","bold":true,"color":"red"}
execute @a[score_CapturingBlueBT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 1 replace stained_glass 9
execute @a[score_CapturingBlueBT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 1 replace wool 9
execute @a[score_CapturingBlueBT_min=249] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingBlueBT_min=249] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingBlueBT_min=249] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingBlueB
execute @a[score_CapturingBlueBT_min=249] ~ ~ ~ /scoreboard players set @a[r=0] CapturingBlueBT 0
scoreboard players tag @a[tag=CapturingBlueB] remove CapturingBlueB


# Capturing Red A

execute @e[tag=blue] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 14 /scoreboard players tag @a[r=0] add CapturingRedA
execute @a[tag=blue] ~ ~ ~ /scoreboard players add @a[tag=CapturingRedA] CapturingRedAT 1
execute @a[score_CapturingRedAT_min=249] ~ ~ ~ /tellraw @a {"text":"!BLUE TEAM HAS CAPTURED THEIR HOME TOWER!","bold":true,"color":"blue"}
execute @a[score_CapturingRedAT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 11 replace stained_glass 14
execute @a[score_CapturingRedAT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 11 replace wool 14
execute @a[score_CapturingRedAT_min=249] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingRedAT_min=249] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingRedAT_min=249] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingRedA
execute @a[score_CapturingRedAT_min=249] ~ ~ ~ /scoreboard players set @a[r=0] CapturingRedAT 0
scoreboard players tag @a[tag=CapturingRedA] remove CapturingRedA

# Capturing Blue A

execute @e[tag=red] ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 11 /scoreboard players tag @a[r=0] add CapturingBlueA
execute @a[tag=red] ~ ~ ~ /scoreboard players add @a[tag=CapturingBlueA] CapturingBlueAT 1
execute @a[score_CapturingBlueAT_min=249] ~ ~ ~ /tellraw @a {"text":"!RED TEAM HAS CAPTURED BLUE TEAM'S HOME TOWER!","bold":true,"color":"red"}
execute @a[score_CapturingBlueAT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 stained_glass 14 replace stained_glass 11
execute @a[score_CapturingBlueAT_min=249] ~ ~ ~ /fill ~6 ~6 ~6 ~-6 ~-3 ~-6 wool 14 replace wool 11
execute @a[score_CapturingBlueAT_min=249] ~ ~ ~ /playsound minecraft:entity.wither.break_block voice @a ~ ~ ~ 100 0.70
execute @a[score_CapturingBlueAT_min=249] ~ ~ ~ /playsound minecraft:entity.lightning.thunder voice @a ~ ~ ~ 100 2.00
execute @a[score_CapturingBlueAT_min=249] ~ ~ ~ /scoreboard players tag @a[r=0] remove CapturingBlueA
execute @a[score_CapturingBlueAT_min=249] ~ ~ ~ /scoreboard players set @a[r=0] CapturingBlueAT 0
scoreboard players tag @a[tag=CapturingBlueA] remove CapturingBlueA

# Sound When Capturing


scoreboard players add @a[score_CapturingBlueAT_min=1,score_CapturingBlueAT=62] slow 1
scoreboard players add @a[score_CapturingBlueBT_min=1,score_CapturingBlueBT=62] slow 1
scoreboard players add @a[score_CapturingBlueCT_min=1,score_CapturingBlueCT=62] slow 1
scoreboard players add @a[score_CapturingRedAT_min=1,score_CapturingRedAT=62] slow 1
scoreboard players add @a[score_CapturingRedBT_min=1,score_CapturingRedBT=62] slow 1
scoreboard players add @a[score_CapturingRedCT_min=1,score_CapturingRedCT=62] slow 1
scoreboard players add @a[score_slow_min=1] slow 1
execute @a[score_slow_min=1,score_slow=3] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 10 0.00
scoreboard players set @a[score_slow_min=10] slow 0


scoreboard players add @a[score_CapturingBlueAT_min=62,score_CapturingBlueAT=124] mmedium 1
scoreboard players add @a[score_CapturingBlueBT_min=62,score_CapturingBlueBT=124] mmedium 1
scoreboard players add @a[score_CapturingBlueCT_min=62,score_CapturingBlueCT=124] mmedium 1
scoreboard players add @a[score_CapturingRedAT_min=62,score_CapturingRedAT=124] mmedium 1
scoreboard players add @a[score_CapturingRedBT_min=62,score_CapturingRedBT=124] mmedium 1
scoreboard players add @a[score_CapturingRedCT_min=62,score_CapturingRedCT=124] mmedium 1
scoreboard players add @a[score_mmedium_min=1] mmedium 1
execute @a[score_mmedium_min=1,score_mmedium=3] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 10 0.50
scoreboard players set @a[score_mmedium_min=8] mmedium 0


scoreboard players add @a[score_CapturingBlueAT_min=124,score_CapturingBlueAT=220] mediumm 1
scoreboard players add @a[score_CapturingBlueBT_min=124,score_CapturingBlueBT=220] mediumm 1
scoreboard players add @a[score_CapturingBlueCT_min=124,score_CapturingBlueCT=220] mediumm 1
scoreboard players add @a[score_CapturingRedAT_min=124,score_CapturingRedAT=220] mediumm 1
scoreboard players add @a[score_CapturingRedBT_min=124,score_CapturingRedBT=220] mediumm 1
scoreboard players add @a[score_CapturingRedCT_min=124,score_CapturingRedCT=220] mediumm 1
scoreboard players add @a[score_mediumm_min=1] mediumm 1
execute @a[score_mediumm_min=1,score_mediumm=3] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 10 1.00
scoreboard players set @a[score_mediumm_min=6] mediumm 0


scoreboard players add @a[score_CapturingBlueAT_min=220] fast 1
scoreboard players add @a[score_CapturingBlueBT_min=220] fast 1
scoreboard players add @a[score_CapturingBlueCT_min=220] fast 1
scoreboard players add @a[score_CapturingRedAT_min=220] fast 1
scoreboard players add @a[score_CapturingRedBT_min=220] fast 1
scoreboard players add @a[score_CapturingRedCT_min=220] fast 1
scoreboard players add @a[score_fast_min=1] fast 1
execute @a[score_fast_min=1,score_fast=3] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 10 2.00
scoreboard players set @a[score_fast_min=4] fast 0

execute @a[score_CapturingBlueAT_min=1] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 0.05 2.00
execute @a[score_CapturingBlueBT_min=1] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 0.05 2.00
execute @a[score_CapturingBlueCT_min=1] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 0.05 2.00
execute @a[score_CapturingRedAT_min=1] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 0.05 2.00
execute @a[score_CapturingRedBT_min=1] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 0.05 2.00
execute @a[score_CapturingRedCT_min=1] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[r=6] ~ ~ ~ 0.05 2.00










# Side Commands

execute @a[score_CapturingRedCT_min=20,score_CapturingRedCT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=red] ~ ~ ~ 10 0.00
execute @a[score_CapturingRedCT_min=20,score_CapturingRedCT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=red] ~ ~ ~ 10 2.00
execute @a[score_CapturingRedCT_min=20,score_CapturingRedCT=20] ~ ~ ~ /tellraw @a[tag=red] {"text":"! Your Home Tower is under attack !","bold":true,"color":"red"}

execute @a[score_CapturingBlueAT_min=20,score_CapturingBlueAT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=blue] ~ ~ ~ 10 0.00
execute @a[score_CapturingBlueAT_min=20,score_CapturingBlueAT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=blue] ~ ~ ~ 10 2.00
execute @a[score_CapturingBlueCT_min=20,score_CapturingBlueCT=20] ~ ~ ~ /tellraw @a[tag=blue] {"text":"! Your Farthest Tower is under attack !","bold":true,"color":"blue"}

execute @a[score_CapturingRedBT_min=20,score_CapturingRedBT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=red] ~ ~ ~ 10 0.00
execute @a[score_CapturingRedBT_min=20,score_CapturingRedBT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=red] ~ ~ ~ 10 2.00
execute @a[score_CapturingRedBT_min=20,score_CapturingRedBT=20] ~ ~ ~ /tellraw @a[tag=red] {"text":"! Your Conflict Tower is under attack !","bold":true,"color":"red"}

execute @a[score_CapturingBlueCT_min=20,score_CapturingBlueCT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=blue] ~ ~ ~ 10 0.00
execute @a[score_CapturingBlueCT_min=20,score_CapturingBlueCT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=blue] ~ ~ ~ 10 2.00
execute @a[score_CapturingBlueBT_min=20,score_CapturingBlueBT=20] ~ ~ ~ /tellraw @a[tag=blue] {"text":"! Your Conflict Tower is under attack !","bold":true,"color":"blue"}

execute @a[score_CapturingRedAT_min=20,score_CapturingRedAT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=red] ~ ~ ~ 10 0.00
execute @a[score_CapturingRedAT_min=20,score_CapturingRedAT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=red] ~ ~ ~ 10 2.00
execute @a[score_CapturingRedAT_min=20,score_CapturingRedAT=20] ~ ~ ~ /tellraw @a[tag=red] {"text":"! Your Farthest Tower is under attack !","bold":true,"color":"red"}

execute @a[score_CapturingBlueAT_min=20,score_CapturingBlueAT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=blue] ~ ~ ~ 10 0.00
execute @a[score_CapturingBlueAT_min=20,score_CapturingBlueAT=25] ~ ~ ~ /playsound minecraft:block.note.pling voice @a[tag=blue] ~ ~ ~ 10 2.00
execute @a[score_CapturingBlueAT_min=20,score_CapturingBlueAT=20] ~ ~ ~ /tellraw @a[tag=blue] {"text":"! Your Home Tower is under attack !","bold":true,"color":"blue"}

execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueAT 0
execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedAT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueAT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedAT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueAT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedAT 0

execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueBT 0
execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedBT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueBT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedBT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueBT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedBT 0

execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueCT 0
execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedCT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueCT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedCT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingBlueCT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingRedCT 0

execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnCT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnCT 0
execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnBT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnBT 0
execute @e ~ ~ ~ detect ~ ~-2 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnAT 0
execute @e ~ ~ ~ detect ~ ~-1 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnAT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnAT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnBT 0
execute @e ~ ~ ~ detect ~ ~-3 ~ minecraft:stained_glass 8 /scoreboard players set @a[r=0] CapturingUnCT 0

execute @a ~ ~ ~ detect ~ ~-1 ~ stained_glass 15 /playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 0.2 2.00
execute @a ~ ~ ~ detect ~ ~-1 ~ stained_glass 7 /playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 0.2 2.00
execute @a ~ ~ ~ detect ~ ~-1 ~ stained_glass 0 /playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 0.2 2.00

title @a[score_CapturingRedAT_min=248,score_CapturingRedAT=248] actionbar {"text":"\u25cf 100% \u25cf"}
title @a[score_CapturingRedAT_min=220,score_CapturingRedAT=247] actionbar {"text":"\u25cf 99% \u25cf"}
title @a[score_CapturingRedAT_min=124,score_CapturingRedAT=219] actionbar {"text":"\u25d5 75% \u25d5"}
title @a[score_CapturingRedAT_min=62,score_CapturingRedAT=123] actionbar {"text":"\u25d1 50% \u25d1"}
title @a[score_CapturingRedAT_min=1,score_CapturingRedAT=61] actionbar {"text":"\u25d4 25% \u25d4"}

title @a[score_CapturingRedBT_min=248,score_CapturingRedBT=248] actionbar {"text":"\u25cf 100% \u25cf"}
title @a[score_CapturingRedBT_min=220,score_CapturingRedBT=247] actionbar {"text":"\u25cf 99% \u25cf"}
title @a[score_CapturingRedBT_min=124,score_CapturingRedBT=219] actionbar {"text":"\u25d5 75% \u25d5"}
title @a[score_CapturingRedBT_min=62,score_CapturingRedBT=123] actionbar {"text":"\u25d1 50% \u25d1"}
title @a[score_CapturingRedBT_min=1,score_CapturingRedBT=63] actionbar {"text":"\u25d4 25% \u25d4"}

title @a[score_CapturingRedCT_min=248,score_CapturingRedCT=248] actionbar {"text":"\u25cf 100% \u25cf"}
title @a[score_CapturingRedCT_min=220,score_CapturingRedCT=247] actionbar {"text":"\u25cf 99% \u25cf"}
title @a[score_CapturingRedCT_min=124,score_CapturingRedCT=219] actionbar {"text":"\u25d5 75% \u25d5"}
title @a[score_CapturingRedCT_min=62,score_CapturingRedCT=123] actionbar {"text":"\u25d1 50% \u25d1"}
title @a[score_CapturingRedCT_min=1,score_CapturingRedCT=61] actionbar {"text":"\u25d4 25% \u25d4"}

title @a[score_CapturingBlueAT_min=248,score_CapturingBlueAT=248] actionbar {"text":"\u25cf 100% \u25cf"}
title @a[score_CapturingBlueAT_min=220,score_CapturingBlueAT=247] actionbar {"text":"\u25cf 99% \u25cf"}
title @a[score_CapturingBlueAT_min=124,score_CapturingBlueAT=219] actionbar {"text":"\u25d5 75% \u25d5"}
title @a[score_CapturingBlueAT_min=62,score_CapturingBlueAT=123] actionbar {"text":"\u25d1 50% \u25d1"}
title @a[score_CapturingBlueAT_min=1,score_CapturingBlueAT=61] actionbar {"text":"\u25d4 25% \u25d4"}

title @a[score_CapturingBlueBT_min=248,score_CapturingBlueBT=248] actionbar {"text":"\u25cf 100% \u25cf"}
title @a[score_CapturingBlueBT_min=220,score_CapturingBlueBT=247] actionbar {"text":"\u25cf 99% \u25cf"}
title @a[score_CapturingBlueBT_min=124,score_CapturingBlueBT=219] actionbar {"text":"\u25d5 75% \u25d5"}
title @a[score_CapturingBlueBT_min=62,score_CapturingBlueBT=123] actionbar {"text":"\u25d1 50% \u25d1"}
title @a[score_CapturingBlueBT_min=1,score_CapturingBlueBT=61] actionbar {"text":"\u25d4 25% \u25d4"}

title @a[score_CapturingBlueCT_min=248,score_CapturingBlueCT=248] actionbar {"text":"\u25cf 100% \u25cf"}
title @a[score_CapturingBlueCT_min=220,score_CapturingBlueCT=247] actionbar {"text":"\u25cf 99% \u25cf"}
title @a[score_CapturingBlueCT_min=124,score_CapturingBlueCT=219] actionbar {"text":"\u25d5 75% \u25d5"}
title @a[score_CapturingBlueCT_min=62,score_CapturingBlueCT=123] actionbar {"text":"\u25d1 50% \u25d1"}
title @a[score_CapturingBlueCT_min=1,score_CapturingBlueCT=61] actionbar {"text":"\u25d4 25% \u25d4"}









# Classes

#              Archer




execute @a[score_archerulticharge_min=1499,score_archerulticharge=1499,tag=Archer] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
execute @a[score_archerulticharge_min=1499,score_archerulticharge=1499,tag=Archer] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 1.00
execute @a[score_archerulticharge_min=1499,score_archerulticharge=1499,tag=Archer] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 0.00
tellraw @a[score_archerulticharge_min=1499,score_archerulticharge=1500,tag=Archer] {"text":"<Archer> Withered arrow is ready to shoot.","color":"white"}

scoreboard players add @a[tag=Archer] archerulticharge 1

execute @a[score_drinkpotiontimer_min=199,score_drinkpotiontimer=210,tag=Archer] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_drinkpotiontimer_min=199,score_drinkpotiontimer=210,tag=Archer] {"text":"<Archer> Healing potion is usable."}

replaceitem entity @a slot.inventory.0 minecraft:arrow 1 0 




#              Ion


#                       Heal Aura Program

replaceitem entity @a[tag=Medic,score_hauracool=0] slot.hotbar.1 minecraft:dye 1 1 {healaura:1b,display:{Name:"Heal Aura Program"},ench:[{id:0,lvl:1}]}
clear @a[tag=Medic,score_hauracool_min=1,score_hauracool=1] dye 1 1
scoreboard players tag @a add healaura {SelectedItem:{tag:{healaura:1b}}}
scoreboard players tag @a[score_dropdye_min=1,tag=healaura] add hauracool
scoreboard players add @a[tag=hauracool] hauracool 1
execute @a[score_hauracool_min=1,score_hauracool=2,tag=hauracool,team=red] ~ ~ ~ effect @a[r=5,team=red] regeneration 5 1 true
execute @a[score_hauracool_min=1,score_hauracool=2,tag=hauracool,team=blue] ~ ~ ~ effect @a[r=5,team=blue] regeneration 5 1 true
execute @a[score_hauracool_min=1,score_hauracool=60,tag=hauracool] ~ ~ ~ particle reddust ~ ~ ~ 2 0 2 0 40 force
execute @a[score_hauracool_min=1,score_hauracool=60,tag=hauracool] ~ ~ ~ playsound minecraft:entity.guardian.ambient voice @a[r=5] ~ ~ ~ 1 1.00
tellraw @a[score_hauracool_min=380,score_hauracool=480,tag=Medic] {"text":"<Ion> Heal Aura Program Is Ready"}
execute @a[score_hauracool_min=380,score_hauracool=480,tag=Medic] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
scoreboard players tag @a[score_hauracool_min=380] remove hauracool
scoreboard players set @a[score_hauracool_min=380] hauracool 0
scoreboard players tag @a[tag=healaura] remove healaura

#                        Modular Hover Shield

replaceitem entity @a[tag=Medic,score_modshieldactive=0] slot.hotbar.2 minecraft:dye 1 13 {modshield:1b,display:{Name:"Modular Shield"},ench:[{id:0,lvl:1}]}
clear @a[tag=Medic,score_modshieldactive_min=1,score_modshieldactive=1] dye 13 1
scoreboard players tag @a add modshield {SelectedItem:{tag:{modshield:1b}}}
scoreboard players tag @a[tag=modshield,score_dropdye_min=1] add modshieldactive
scoreboard players add @a[tag=modshieldactive] modshieldactive 1
effect @a[score_modshieldactive_min=1,score_modshieldactive=1] instant_health 1 0 true
effect @a[score_modshieldactive_min=1,score_modshieldactive=80] resistance 1 100 true
effect @a[score_modshieldactive_min=39,score_modshieldactive=39] clear
execute @a[score_modshieldactive_min=1,score_modshieldactive=80] ~ ~ ~ playsound minecraft:block.fire.extinguish voice @a[r=5] ~ ~ ~ 0.2 1.00
execute @a[score_modshieldactive_min=1,score_modshieldactive=80] ~ ~ ~ playsound minecraft:block.fire.ambient voice @a[r=5] ~ ~ ~ 500 1.00
execute @a[score_modshieldactive_min=1,score_modshieldactive=80] ~ ~ ~ particle cloud ~ ~ ~ 0.5 0.1 0.5 0 20 force
tellraw @a[score_modshieldactive_min=400,score_modshieldactive=500,tag=Medic] {"text":"<Ion> Modular Shield Is Usable"}
scoreboard players tag @a[score_modshieldactive_min=400] remove modshieldactive
execute @a[score_modshieldactive_min=400,score_modshieldactive=500,tag=Medic] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
scoreboard players set @a[score_modshieldactive_min=400] modshieldactive 0
scoreboard players tag @a[tag=modshield] remove modshield

#                        Life Leaker Virus

replaceitem entity @a[tag=Medic,score_lifeviruscool=0] slot.hotbar.3 minecraft:dye 1 5 {lifevirus:1b,display:{Name:"Life Leaker Virus"},ench:[{id:0,lvl:1}]}
clear @a[tag=Medic,score_lifeviruscool_min=1,score_lifeviruscool=1] dye 5 1
scoreboard players tag @a add lifevirus {SelectedItem:{tag:{lifevirus:1b}}}
scoreboard players tag @a[score_dropdye_min=1,tag=lifevirus] add lifeviruscool
execute @a[score_lifeviruscool=0,tag=lifevirus,team=red] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ effect @e[team=blue,r=7] instant_damage 1 0 true
execute @a[score_lifeviruscool=0,tag=lifevirus,team=blue] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ effect @e[team=red,r=7] instant_damage 1 0 true
execute @a[score_lifeviruscool=0,tag=lifevirus,team=red] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ effect @e[team=red,r=7] instant_health 1 0 true
execute @a[score_lifeviruscool=0,tag=lifevirus,team=blue] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ effect @e[team=blue,r=7] instant_health 1 0 true
execute @a[score_lifeviruscool=0,tag=lifevirus,team=red] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ effect @e[team=blue,r=5,type=!Player] instant_health 1 2 true
execute @a[score_lifeviruscool=0,tag=lifevirus,team=blue] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ effect @e[team=red,r=5,type=!Player] instant_health 1 2 true
execute @a[score_lifeviruscool=0,tag=lifevirus] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ particle damageIndicator ~ ~ ~ 1.5 0.2 1.5 0 20 force
execute @a[score_lifeviruscool=0,tag=lifevirus] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ particle witchMagic ~ ~ ~ 1.5 0.2 1.5 0.1 30 force
execute @a[score_lifeviruscool=0,tag=lifevirus] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ playsound minecraft:entity.wither.hurt voice @a[r=5] ~ ~ ~ 100 2.00
execute @a[score_lifeviruscool=0,tag=lifevirus] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ playsound minecraft:entity.wither.hurt voice @a[r=5] ~ ~ ~ 100 1.00
execute @a[score_lifeviruscool=0,tag=lifevirus] ~ ~ ~ execute @a[score_dropdye_min=1,r=0] ~ ~ ~ playsound minecraft:entity.wither.hurt voice @a[r=5] ~ ~ ~ 100 0.00
scoreboard players add @a[tag=lifeviruscool] lifeviruscool 1
execute @a[score_lifeviruscool_min=300,score_lifeviruscool=400,tag=Medic] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_lifeviruscool_min=300,score_lifeviruscool=400,tag=Medic] {"text":"<Ion> Life Leaker Virus As Been Reset"}
scoreboard players tag @a[score_lifeviruscool_min=300] remove lifeviruscool
scoreboard players set @a[score_lifeviruscool_min=300] lifeviruscool 0
scoreboard players tag @a[tag=lifevirus] remove lifevirus

#                        Nano Reconstruction


replaceitem entity @a[score_mediculticharge_min=3600,tag=Medic] slot.hotbar.4 minecraft:apple 1 0 {display:{Name:"Nano Reconstruction"}}
clear @a[tag=Medic,score_mediculticharge_min=1,score_mediculticharge=20] apple
scoreboard players add @a[tag=Medic,score_dropapple1=1] mediculticharge 1
execute @a[tag=Medic,score_dropapple1_min=1,team=red] ~ ~ ~ effect @a[team=red] instant_health 1 100 true
execute @a[tag=Medic,score_dropapple1_min=1,team=blue] ~ ~ ~ effect @a[team=blue] instant_health 1 100 true
execute @a[tag=Medic,score_dropapple1_min=1,team=blue] ~ ~ ~ particle heart 0.1 1 0.1 0 20 force
execute @a[tag=Medic,score_dropapple1_min=1,team=red] ~ ~ ~ particle heart 0.1 1 0.1 0 20 force
execute @a[tag=Medic,score_dropapple1_min=1,team=blue] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[team=blue] ~ ~ ~ 1 2.00
execute @a[tag=Medic,score_dropapple1_min=1,team=red] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[team=red] ~ ~ ~ 1 2.00
execute @a[tag=Medic,score_dropapple1_min=1,team=blue] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[r=6] ~ ~ ~ 1 2.00
execute @a[tag=Medic,score_dropapple1_min=1,team=red] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[r=6] ~ ~ ~ 1 2.00
execute @a[tag=Medic,score_dropapple1_min=1,team=blue] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[team=blue] ~ ~ ~ 100 1.00
execute @a[tag=Medic,score_dropapple1_min=1,team=red] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[team=red] ~ ~ ~ 100 1.00
execute @a[tag=Medic,score_dropapple1_min=1,team=blue] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[r=6] ~ ~ ~ 1 1.00
execute @a[tag=Medic,score_dropapple1_min=1,team=red] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[r=6] ~ ~ ~ 1 1.00
execute @a[tag=Medic,score_dropapple1_min=1,team=blue] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[team=blue] ~ ~ ~ 100 1.50
execute @a[tag=Medic,score_dropapple1_min=1,team=red] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[team=red] ~ ~ ~ 1 1.50
execute @a[tag=Medic,score_dropapple1_min=1,team=blue] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[r=6] ~ ~ ~ 1 1.50
execute @a[tag=Medic,score_dropapple1_min=1,team=red] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[r=6] ~ ~ ~ 1 1.50
scoreboard players set @a[score_dropapple1_min=1] mediculticharge 1
tellraw @a[score_mediculticharge_min=3600,score_mediculticharge=3600,tag=Medic] {"text":"<Ion> Nano Reconstruction Is Ready To Use"}
execute @a[score_mediculticharge_min=3600,score_mediculticharge=3600,tag=Medic] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00

execute @a[tag=Medic] ~ ~ ~ particle reddust ~ ~ ~ 0.19 0 0.19 0 3 force







#             Raurus


execute @a[score_specialtimer1_min=499,score_specialtimer1=510,tag=Raurus] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_specialtimer1_min=499,score_specialtimer1=510,tag=Raurus] {"text":"<Raurus> my speed stone is full of energy to spend!"}
execute @a[score_speedappletimer_min=799,score_speedappletimer=799,tag=Raurus] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_speedappletimer_min=799,score_speedappletimer=799,tag=Raurus] {"text":"<Raurus> golden apple is prepared to be eaten"}
execute @a[score_raurusulticharge_min=2000,score_raurusulticharge=4000,tag=Raurus] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 0.00
tellraw @a[score_speedappletimer_min=2000,score_raurusulticharge4000,tag=Raurus] {"text":"<Raurus> magnetic pulse is ready to shoot"}

scoreboard players set @a[score_raurusulticharge_min=2000] raurusulticharge 0
scoreboard players set @a[tag=Raurus] speedappletimer 0 {Inventory:[{id:"minecraft:golden_apple",Count:1b}]}


#            Guardian

execute @a[score_guardulticharge_min=500,score_guardulticharge=600,tag=Guardian] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_guardulticharge_min=500,score_guardulticharge=600,tag=Guardian] {"text":"<Guardian> MEGA MINION IS PREPARED."}
execute @a[score_dropminionstimer_min=549,score_dropminionstimer=549,tag=Guardian] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_dropminionstimer_min=549,score_dropminionstimer=549,tag=Guardian] {"text":"<Guardian> MINIONS ARE READY.","color":"white","bold":"false"}
execute @a[score_goldaxetimer_min=399,score_goldaxetimer=399,tag=Guardian] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_goldaxetimer_min=399,score_goldaxetimer=399,tag=Guardian] {"text":"<Guardian> GOLDEN SHIELD FULLY RECHARGED.","color":"white","bold":"false"}

scoreboard players set @a[tag=Guardian] goldaxetimer 0 {Inventory:[{id:"minecraft:clock",Count:1b}]}
scoreboard players set @a[tag=Guardian] dropminionstimer 0 {Inventory:[{id:"minecraft:gold_nugget",Count:1b}]}




#             Shadow Assassin

effect @a[tag=Assassin] speed 1 0 true
effect @a[tag=Assassin] invisibility 1 0 true
scoreboard players add @a[tag=Assassin] assassintimer 1
effect @a[score_assassintimer_min=120,tag=Assassin] regeneration 4 0 true
scoreboard players set @a[score_assassintimer_min=120] assassintimer 0
execute @a[tag=Assassin] ~ ~ ~ particle magicCrit ~ ~ ~ 0.1 0 0.1 0 1 force

# items


replaceitem entity @a[tag=Assassin] slot.hotbar.0 minecraft:iron_sword 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.2,Operation:0,UUIDLeast:180944,UUIDMost:168141},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:73522,UUIDMost:462231}],Unbreakable:1,display:{Name:"Shadow Sword"}}
replaceitem entity @a[tag=Assassin] slot.armor.head minecraft:skull 1 3 {display:{Name:"Death Skull"},SkullOwner:{Id:"8c0900be-a1dc-47af-8509-88610c41c435",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQ1ZGM1NWRhYmE0ZTJkMzJhMjg0NDQ4YmI5ZTM4MzM1ZDg0M2Y5M2M0YTc3Njg4NWZkMzU2NTNmZGZjNzU4In19fQ=="}]}}}
replaceitem entity @a[tag=Assassin] slot.armor.chest minecraft:leather_chestplate 1 0 {HideFlags:63,Unbreakable:1,display:{Name:"Shadow Chestplate",color:2697513}}
replaceitem entity @a[tag=Assassin] slot.armor.legs minecraft:leather_leggings 1 0 {HideFlags:63,Unbreakable:1,display:{Name:"Shadow Leggings",color:1315860}}
replaceitem entity @a[tag=Assassin] slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-6,Operation:0,UUIDLeast:791349,UUIDMost:28098}],Unbreakable:1,display:{Name:"Shadow Boots",color:0}}


# Clone

effect @a[tag=Assassin,score_dropcoal_min=1] regeneration 5 2 true
effect @e[tag=clonelife] speed 1 0 true
effect @e[tag=clonelife] invisibility 1 0 true
replaceitem entity @a[tag=Assassin,score_clonetimer_min=350] slot.hotbar.1 minecraft:coal 1 1 {clone:1b,display:{Name:"Shadow Clone"}}
scoreboard players set @a[tag=Assassin] clonetimer 0 {Inventory:[{id:"minecraft:coal",Count:1b,Damage:1s}]}
scoreboard players add @a[tag=Assassin] clonetimer 1
execute @a[team=red,tag=Assassin,score_dropcoal_min=1] ~ ~ ~ summon skeleton ~ ~ ~ {CustomName:"Shadow Assassin",Tags:["clonelife"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1644825}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2697513}}},{id:"minecraft:skull",Damage:3,Count:1b,tag:{SkullOwner:{Id:"8c0900be-a1dc-47af-8509-88610c41c435",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQ1ZGM1NWRhYmE0ZTJkMzJhMjg0NDQ4YmI5ZTM4MzM1ZDg0M2Y5M2M0YTc3Njg4NWZkMzU2NTNmZGZjNzU4In19fQ=="}]}}}}],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.2,Operation:0,UUIDLeast:390251,UUIDMost:959724}]}},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}],Health:10f,Silent:1,Team:"red"}
execute @a[team=blue,tag=Assassin,score_dropcoal_min=1] ~ ~ ~ summon skeleton ~ ~ ~ {CustomName:"Shadow Assassin",Tags:["clonelife"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:1644825}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:2697513}}},{id:"minecraft:skull",Damage:3,Count:1b,tag:{SkullOwner:{Id:"8c0900be-a1dc-47af-8509-88610c41c435",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDQ1ZGM1NWRhYmE0ZTJkMzJhMjg0NDQ4YmI5ZTM4MzM1ZDg0M2Y5M2M0YTc3Njg4NWZkMzU2NTNmZGZjNzU4In19fQ=="}]}}}}],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.2,Operation:0,UUIDLeast:390251,UUIDMost:959724}]}},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10}],Health:10f,Silent:1,Team:"blue"}

execute @a[tag=Assassin,score_dropcoal_min=1] ~ ~ ~ playsound minecraft:entity.endereye.death voice @a[r=6] ~ ~ ~ 10 1.00
execute @a[tag=Assassin,score_dropcoal_min=1] ~ ~ ~ playsound minecraft:entity.endereye.death voice @a[r=6] ~ ~ ~ 10 0.00
execute @a[tag=Assassin,score_dropcoal_min=1] ~ ~ ~ playsound minecraft:entity.endereye.death voice @a[r=6] ~ ~ ~ 10 2.00
execute @a[tag=Assassin,score_dropcoal_min=1] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[tag=Assassin,score_dropcoal_min=1] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force

execute @a[score_clonetimer_min=350,score_clonetimer=350,tag=Assassin] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_clonetimer_min=350,score_clonetimer=350,tag=Assassin] {"text":"<Assassin> My clone is ready..."}
execute @a[tag=Assassin,score_dropcoal_min=1] ~ ~ ~ spreadplayers ~ ~ 3 4 false @a[r=0]
scoreboard players set @a[score_dropcoal_min=1] dropcoal 0

scoreboard players add @e[tag=clonelife] clonelifetime 1


execute @e[score_clonelifetime_min=346] ~ ~ ~ playsound minecraft:entity.wither.hurt voice @a[r=6] ~ ~ ~ 100 1.00
execute @e[score_clonelifetime_min=344] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @e[score_clonelifetime_min=344] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force
kill @e[score_clonelifetime_min=346,tag=clonelife,type=skeleton]


scoreboard players tag @e[type=zombie] add undead
scoreboard players tag @e[type=skeleton] add undead


#death mark


execute @a[score_marktimer_min=400,score_marktimer=400,tag=Assassin] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_marktimer_min=400,score_marktimer=400,tag=Assassin] {"text":"<Assassin> My death mark is prepared for killing..."}
scoreboard players tag @a add mark {SelectedItem:{tag:{mark:1b}}}
replaceitem entity @a[tag=Assassin,score_marktimer_min=400] slot.hotbar.2 minecraft:dye 1 0 {mark:1b,display:{Name:"Death Mark"}}
scoreboard players set @a[tag=Assassin] marktimer 0 {Inventory:[{id:"minecraft:dye",Count:1b,Damage:0s}]}
scoreboard players add @a[tag=Assassin] marktimer 1
scoreboard players tag @a[score_dropdye_min=1,tag=Assassin] add mark2
scoreboard players add @a[tag=mark2] mark2 1
execute @a[score_mark2_min=1] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[score_mark2_min=1] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force
execute @e[team=blue] ~ ~ ~ teleport @a[team=red,score_mark2_min=2,r=8] ~ ~ ~
execute @e[team=red] ~ ~ ~ teleport @a[team=blue,score_mark2_min=2,r=8] ~ ~ ~
execute @a[team=red,score_mark2_min=3] ~ ~ ~ effect @e[team=blue,r=2,tag=!undead] instant_damage 1 1 true
execute @a[team=blue,score_mark2_min=3] ~ ~ ~ effect @e[team=red,r=2,tag=!undead] instant_damage 1 1 true
execute @a[team=red,score_mark2_min=3] ~ ~ ~ effect @e[team=blue,r=2,tag=undead] instant_health 1 3 true
execute @a[team=blue,score_mark2_min=3] ~ ~ ~ effect @e[team=red,r=2,tag=undead] instant_health 1 3 true
execute @a[score_mark2_min=3] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[score_mark2_min=3] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force
execute @a[score_mark2_min=3] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 2.00
execute @a[score_mark2_min=3] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.00
execute @a[score_mark2_min=3] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.00
execute @a[score_mark2_min=3] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.50
execute @a[score_mark2_min=3] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.50
scoreboard players tag @a[score_mark2_min=4] remove mark2
scoreboard players set @a[score_mark2_min=4] mark2 0
scoreboard players tag @a[tag=mark] remove mark



# Death Mark Ultimate Ability



execute @a[score_assassincharge_min=1800,score_assassincharge=2900,tag=Assassin] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_assassincharge_min=1800,score_assassincharge=2900,tag=Assassin] {"text":"<Assassin> Ultimate ability is ready..."}
scoreboard players tag @a add mark4 {SelectedItem:{tag:{mark4:1b}}}
replaceitem entity @a[tag=Assassin,score_assassincharge_min=1800] slot.hotbar.3 minecraft:coal_block 1 0 {mark4:1b,display:{Name:"Death Sentence"}}
scoreboard players tag @a[score_dropcoalblock_min=1,tag=Assassin] add mark3
scoreboard players add @a[tag=mark3] marktimer2 1
effect @a[score_marktimer2_min=1] resistance 1 100 true

execute @a[score_marktimer2_min=1,tag=Assassin] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[score_marktimer2_min=1,tag=Assassin] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force

execute @e[team=blue] ~ ~ ~ teleport @a[team=red,score_marktimer2_min=3,score_marktimer2=3,r=8] ~ ~ ~
execute @e[team=red] ~ ~ ~ teleport @a[team=blue,score_marktimer2_min=3,score_marktimer2=3,r=8] ~ ~ ~
execute @a[team=red,score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=blue,score_marktimer2_min=3,score_marktimer2=3],tag=Assassin ~ ~ ~ effect @e[team=red,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=red,score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=undead] instant_health 1 4 true
execute @a[team=blue,score_marktimer2_min=3,score_marktimer2=3],tag=Assassin ~ ~ ~ effect @e[team=red,r=2,tag=undead] instant_health 1 4 true
execute @a[score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force
execute @a[score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 2.00
execute @a[score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.00
execute @a[score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.00
execute @a[score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.50
execute @a[score_marktimer2_min=3,score_marktimer2=3,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.50

execute @e[team=blue] ~ ~ ~ teleport @a[team=red,score_marktimer2_min=9,score_marktimer2=9,r=8] ~ ~ ~
execute @e[team=red] ~ ~ ~ teleport @a[team=blue,score_marktimer2_min=9,score_marktimer2=9,r=8] ~ ~ ~
execute @a[team=red,score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=blue,score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ effect @e[team=red,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=red,score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=undead] instant_health 1 4 true
execute @a[team=blue,score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ effect @e[team=red,r=2,tag=undead] instant_health 1 4 true
execute @a[score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force
execute @a[score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 2.00
execute @a[score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.00
execute @a[score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.00
execute @a[score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.50
execute @a[score_marktimer2_min=9,score_marktimer2=9,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.50

execute @e[team=blue] ~ ~ ~ teleport @a[team=red,score_marktimer2_min=15,score_marktimer2=15,r=8] ~ ~ ~
execute @e[team=red] ~ ~ ~ teleport @a[team=blue,score_marktimer2_min=15,score_marktimer2=15,r=8] ~ ~ ~
execute @a[team=red,score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=blue,score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ effect @e[team=red,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=red,score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=undead] instant_health 1 4 true
execute @a[team=blue,score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ effect @e[team=red,r=2,tag=undead] instant_health 1 4 true
execute @a[score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force
execute @a[score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 2.00
execute @a[score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.00
execute @a[score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.00
execute @a[score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.50
execute @a[score_marktimer2_min=15,score_marktimer2=15,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.50

execute @e[team=blue] ~ ~ ~ teleport @a[team=red,score_marktimer2_min=21,score_marktimer2=21,r=8] ~ ~ ~
execute @e[team=red] ~ ~ ~ teleport @a[team=blue,score_marktimer2_min=21,score_marktimer2=21,r=8] ~ ~ ~
execute @a[team=red,score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=blue,score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ effect @e[team=red,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=red,score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=undead] instant_health 1 4 true
execute @a[team=blue,score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ effect @e[team=red,r=2,tag=undead] instant_health 1 4 true
execute @a[score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force
execute @a[score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 2.00
execute @a[score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.00
execute @a[score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.00
execute @a[score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.50
execute @a[score_marktimer2_min=21,score_marktimer2=21,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.50


execute @e[team=blue] ~ ~ ~ teleport @a[team=red,score_marktimer2_min=27,score_marktimer2=27,r=8] ~ ~ ~
execute @e[team=red] ~ ~ ~ teleport @a[team=blue,score_marktimer2_min=27,score_marktimer2=27,r=8] ~ ~ ~
execute @a[team=red,score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=blue,score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ effect @e[team=red,r=2,tag=!undead] instant_damage 1 2 true
execute @a[team=red,score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ effect @e[team=blue,r=2,tag=undead] instant_health 1 4 true
execute @a[team=blue,score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ effect @e[team=red,r=2,tag=undead] instant_health 1 4 true
execute @a[score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ particle largesmoke ~ ~ ~ 0.4 0.1 0.4 0.05 10 force
execute @a[score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ particle witchMagic ~ ~ ~ 0.2 0 0.2 0.5 20 force
execute @a[score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 2.00
execute @a[score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.00
execute @a[score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.00
execute @a[score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 1.50
execute @a[score_marktimer2_min=27,score_marktimer2=27,tag=Assassin] ~ ~ ~ playsound minecraft:entity.endermen.teleport voice @a[r=6] ~ ~ ~ 50 0.50

scoreboard players set @a[tag=Assassin] assassincharge 0 {Inventory:[{id:"minecraft:coal_block",Count:1b,Damage:0s}]}
scoreboard players set @a[score_assassincharge_min=1800,tag=Assassin] assassincharge 0

scoreboard players tag @a[score_marktimer2_min=28] remove mark3
scoreboard players set @a[score_marktimer2_min=28] marktimer2 0
scoreboard players tag @a[tag=mark4] remove mark4
scoreboard players set @a[score_dropcoalblock_min=1] dropcoalblock 0





# Frost


# items

replaceitem entity @a[tag=Frost] slot.armor.head minecraft:skull 1 3 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:6,Operation:0,UUIDLeast:947966,UUIDMost:583584},{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:0.1,Operation:0,UUIDLeast:414295,UUIDMost:817815}],display:{Name:"Icy Skull"},SkullOwner:{Id:"e8cdc38f-7cf7-44ba-b9f7-9442ce345f37",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWRjN2NhOGRhYzhjNTZjMjE2OTFkNDJjZjQxYjM4N2I2ODE3MWVlNmNiNGFlYjViZTc2NzU0OWJjOGRlYjMifX19"}]}}}
replaceitem entity @a[tag=Frost] slot.armor.chest minecraft:leather_chestplate 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:4,lvl:1}],display:{Name:"Icy Chestplate",color:9555967}}
replaceitem entity @a[tag=Frost] slot.armor.legs minecraft:leather_leggings 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:4,lvl:1}],display:{Name:"Icy Leggings",color:9555967}}
replaceitem entity @a[tag=Frost] slot.armor.feet minecraft:leather_boots 1 0 {HideFlags:63,Unbreakable:1,ench:[{id:4,lvl:1},{id:9,lvl:1}],display:{Name:"Icy Boots",color:9555967}}
execute @a[tag=Frost] ~ ~ ~ particle blockcrack ~ ~ ~ 1 0 1 0 5 force @a 174
effect @a[tag=Frost] invisibility 1 0 true
replaceitem entity @a[tag=Frost] slot.hotbar.0 minecraft:diamond_axe 1 0 {HideFlags:63,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3.75,Operation:0,UUIDLeast:912943,UUIDMost:330499},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:766200,UUIDMost:698553}],Unbreakable:1,iceblade:1b,display:{Name:"Frozen Battle Axe"},ench:[{id:22,lvl:100}]}


scoreboard players tag @e add Take2 {HurtTime:10s}
execute @a[tag=Frost,team=blue] ~ ~ ~ execute @e[team=red,r=4] ~ ~ ~ particle blockcrack ~ ~ ~ 0 1 0 10 1 force @a 174
execute @a[tag=Frost,team=red] ~ ~ ~ execute @e[team=blue,r=4] ~ ~ ~ particle blockcrack ~ ~ ~ 0 1 0 10 1 force @a 174



# avalanche

execute @a[score_AvalancheCool_min=400,score_AvalancheCool=400,tag=Frost] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_AvalancheCool_min=400,score_AvalancheCool=400,tag=Frost] {"text":"<Frost> Avalanche is ready!!"}

scoreboard players tag @a[rym=-22,ry=22] add 1
scoreboard players tag @a[rym=23,ry=63] add 2
scoreboard players tag @a[rym=64,ry=125] add 3
scoreboard players tag @a[rym=126,ry=160] add 4
scoreboard players tag @a[rym=161,ry=-158] add 5
scoreboard players tag @a[rym=-157,ry=-114] add 6
scoreboard players tag @a[rym=-113,ry=-70] add 7
scoreboard players tag @a[rym=-69,ry=-22] add 8

scoreboard players tag @a[tag=Frost] add avalanche {SelectedItem:{tag:{avalanche:1b}}}
scoreboard players add @a[tag=Frost] AvalancheCool 1
scoreboard players add @e[tag=blueavalanche] AvalancheLife 1
scoreboard players add @e[tag=redavalanche] AvalancheLife 1
kill @e[score_AvalancheLife_min=60]
replaceitem entity @a[tag=Frost,score_AvalancheCool_min=400] slot.hotbar.1 minecraft:prismarine_crystals 1 0 {HideFlags:63,avalanche:1b,display:{Name:"Avalanche"},ench:[{id:35,lvl:1}]}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["redavalanche","1a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=2] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["redavalanche","2a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=3] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["redavalanche","3a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=4] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["redavalanche","4a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=5] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["redavalanche","5a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=6] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["redavalanche","6a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=7] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["redavalanche","7a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=8] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["redavalanche","8a"],Invisible:1,NoBasePlate:1}

execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["blueavalanche","1a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=2] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["blueavalanche","2a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=3] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["blueavalanche","3a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=4] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["blueavalanche","4a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=5] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["blueavalanche","5a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=6] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["blueavalanche","6a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=7] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["blueavalanche","7a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=8] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["blueavalanche","8a"],Invisible:1,NoBasePlate:1}




execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=1] ~ ~ ~ summon armor_stand ~2 ~ ~ {Tags:["redavalanche","1a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=1] ~ ~ ~ summon armor_stand ~2 ~ ~ {Tags:["blueavalanche","1a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=1] ~ ~ ~ summon armor_stand ~-2 ~ ~ {Tags:["redavalanche","1a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=1] ~ ~ ~ summon armor_stand ~-2 ~ ~ {Tags:["blueavalanche","1a"],Invisible:1,NoBasePlate:1}

execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=5] ~ ~ ~ summon armor_stand ~2 ~ ~ {Tags:["redavalanche","5a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=5] ~ ~ ~ summon armor_stand ~2 ~ ~ {Tags:["blueavalanche","5a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=5] ~ ~ ~ summon armor_stand ~-2 ~ ~ {Tags:["redavalanche","5a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=5] ~ ~ ~ summon armor_stand ~-2 ~ ~ {Tags:["blueavalanche","5a"],Invisible:1,NoBasePlate:1}

execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=3] ~ ~ ~ summon armor_stand ~ ~ ~2 {Tags:["redavalanche","3a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=3] ~ ~ ~ summon armor_stand ~ ~ ~2 {Tags:["blueavalanche","3a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=3] ~ ~ ~ summon armor_stand ~ ~ ~-2 {Tags:["redavalanche","3a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=3] ~ ~ ~ summon armor_stand ~ ~ ~-2 {Tags:["blueavalanche","3a"],Invisible:1,NoBasePlate:1}

execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=7] ~ ~ ~ summon armor_stand ~ ~ ~2 {Tags:["redavalanche","7a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=7] ~ ~ ~ summon armor_stand ~ ~ ~2 {Tags:["blueavalanche","7a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=7] ~ ~ ~ summon armor_stand ~ ~ ~-2 {Tags:["redavalanche","7a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=7] ~ ~ ~ summon armor_stand ~ ~ ~-2 {Tags:["blueavalanche","7a"],Invisible:1,NoBasePlate:1}

execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=2] ~ ~ ~ summon armor_stand ~1 ~ ~1 {Tags:["redavalanche","2a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=2] ~ ~ ~ summon armor_stand ~1 ~ ~1 {Tags:["blueavalanche","2a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=2] ~ ~ ~ summon armor_stand ~-1 ~ ~-1 {Tags:["redavalanche","2a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=2] ~ ~ ~ summon armor_stand ~-1 ~ ~-1 {Tags:["blueavalanche","2a"],Invisible:1,NoBasePlate:1}

execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=4] ~ ~ ~ summon armor_stand ~-1 ~ ~1 {Tags:["redavalanche","4a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=4] ~ ~ ~ summon armor_stand ~-1 ~ ~1 {Tags:["blueavalanche","4a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=4] ~ ~ ~ summon armor_stand ~1 ~ ~-1 {Tags:["redavalanche","4a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=4] ~ ~ ~ summon armor_stand ~1 ~ ~-1 {Tags:["blueavalanche","4a"],Invisible:1,NoBasePlate:1}

execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=6] ~ ~ ~ summon armor_stand ~-1 ~ ~-1 {Tags:["redavalanche","6a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=6] ~ ~ ~ summon armor_stand ~-1 ~ ~-1 {Tags:["blueavalanche","6a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=6] ~ ~ ~ summon armor_stand ~1 ~ ~1 {Tags:["redavalanche","6a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=6] ~ ~ ~ summon armor_stand ~1 ~ ~1 {Tags:["blueavalanche","6a"],Invisible:1,NoBasePlate:1}

execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=8] ~ ~ ~ summon armor_stand ~1 ~ ~-1 {Tags:["redavalanche","8a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=8] ~ ~ ~ summon armor_stand ~1 ~ ~-1 {Tags:["blueavalanche","8a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=red] ~ ~ ~ execute @a[r=0,tag=8] ~ ~ ~ summon armor_stand ~-1 ~ ~1 {Tags:["redavalanche","8a"],Invisible:1,NoBasePlate:1}
execute @a[tag=avalanche,score_DropAvalanche_min=1,team=blue] ~ ~ ~ execute @a[r=0,tag=8] ~ ~ ~ summon armor_stand ~-1 ~ ~1 {Tags:["blueavalanche","8a"],Invisible:1,NoBasePlate:1}


execute @e[tag=redavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 0.00
execute @e[tag=redavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 0.50
execute @e[tag=redavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 1.00
execute @e[tag=redavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 1.50
execute @e[tag=redavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 2.00
execute @e[tag=blueavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 0.00
execute @e[tag=blueavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 0.50
execute @e[tag=blueavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 1.00
execute @e[tag=blueavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 1.50
execute @e[tag=blueavalanche] ~ ~ ~ playsound minecraft:block.snow.break voice @a[r=30] ~ ~ ~ 0.5 2.00


entitydata @e[tag=1a] {Motion:[0.0,-1.0,0.4]}
entitydata @e[tag=2a] {Motion:[-0.2,-1.0,0.2]}
entitydata @e[tag=3a] {Motion:[-0.4,-1.0,0.0]}
entitydata @e[tag=4a] {Motion:[-0.2,-1.0,-0.2]}
entitydata @e[tag=5a] {Motion:[0.0,-1.0,-0.4]}
entitydata @e[tag=6a] {Motion:[0.2,-1.0,-0.2]}
entitydata @e[tag=7a] {Motion:[0.4,-1.0,0.0]}
entitydata @e[tag=8a] {Motion:[0.2,-1.0,0.2]}
clear @a[tag=Frost,score_AvalancheCool=399] minecraft:prismarine_crystals

execute @e[tag=blueavalanche] ~ ~ ~ particle cloud ~ ~1 ~ 1 1.6 1 0 5 force
execute @e[tag=redavalanche] ~ ~ ~ particle cloud ~ ~1 ~ 1 1.6 1 0 5 force
execute @e[tag=blueavalanche] ~ ~ ~ particle blockcrack ~ ~ ~ 1 0 1 1 2 force @a 174
execute @e[tag=redavalanche] ~ ~ ~ particle blockcrack ~ ~ ~ 1 0 1 1 2 force @a 174

execute @e[tag=blueavalanche] ~ ~ ~ effect @e[team=red,r=3] wither 2 2 true
execute @e[tag=redavalanche] ~ ~ ~ effect @e[team=blue,r=3] wither 2 2 true
execute @e[tag=blueavalanche] ~ ~ ~ effect @e[team=red,r=3] slowness 5 1 true
execute @e[tag=redavalanche] ~ ~ ~ effect @e[team=blue,r=3] slowness 5 1 true
execute @e[tag=blueavalanche] ~ ~ ~ effect @e[team=blue,r=3] weakness 1 255 true
execute @e[tag=redavalanche] ~ ~ ~ effect @e[team=red,r=3] weakness 1 255 true
execute @e[tag=blueavalanche] ~ ~ ~ teleport @e[team=red,r=3] ~ ~ ~
execute @e[tag=redavalanche] ~ ~ ~ teleport @e[team=blue,r=3] ~ ~ ~



scoreboard players set @a[score_DropAvalanche_min=1] AvalancheCool 0
scoreboard players set @a[score_DropAvalanche_min=1] DropAvalanche 0

scoreboard players tag @a remove 1
scoreboard players tag @a remove 2
scoreboard players tag @a remove 3
scoreboard players tag @a remove 4
scoreboard players tag @a remove 5
scoreboard players tag @a remove 6
scoreboard players tag @a remove 7
scoreboard players tag @a remove 8




# cryogenic plasma

execute @a[score_CryoPlasmaCool_min=680,score_CryoPlasmaCool=680,tag=Frost] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
tellraw @a[score_CryoPlasmaCool_min=680,score_CryoPlasmaCool=680,tag=Frost] {"text":"<Frost> Cryogenic Plasma is ready to explode!!"}




scoreboard players tag @a[tag=Frost] add cryoplasma {SelectedItem:{tag:{cryoplasma:1b}}}
scoreboard players add @a[tag=Frost] CryoPlasmaCool 1
replaceitem entity @a[tag=Frost,score_CryoPlasmaCool_min=680] slot.hotbar.2 minecraft:ice 1 0 {HideFlags:63,cryoplasma:1b,display:{Name:"Cryogenic Plasma Explosion"},ench:[{id:35,lvl:1}]}
clear @a[tag=Frost,score_CryoPlasmaCool=679] minecraft:ice
execute @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ effect @e[team=blue,r=10] slowness 6 100 true
execute @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ effect @e[team=red,r=10] slowness 6 100 true
execute @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ effect @e[team=blue,r=10] weakness 6 100 true
execute @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ effect @e[team=red,r=10] weakness 6 100 true
execute @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ effect @e[team=red,r=10] weakness 6 100 true
execute @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ effect @e[team=blue,r=10] weakness 6 100 true
execute @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ effect @e[team=red,r=10] resistance 6 1 true
execute @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ effect @e[team=blue,r=10] resistance 6 1 true
effect @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] weakness 6 100 true
effect @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] weakness 6 100 true
effect @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] speed 6 0 true
effect @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] speed 6 0 true
effect @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] instant_health 1 1 true
effect @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] instant_health 1 1 true
execute @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ particle cloud ~ ~ ~ 2 2 2 1 100 force
execute @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ particle cloud ~ ~ ~ 2 2 2 1 100 force
execute @a[team=red,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ particle blockcrack ~ ~ ~ 2 2 2 1 100 force @a 174
execute @a[team=blue,score_CryoPlasmaDrop_min=1,tag=Frost] ~ ~ ~ particle blockcrack ~ ~ ~ 2 2 2 1 100 force @a 174

scoreboard players set @a[score_CryoPlasmaDrop_min=1] CryoPlasmaCool 0
scoreboard players set @a[score_CryoPlasmaDrop_min=1] CryoPlasmaDrop 0
scoreboard players tag @a[tag=cryoplasma] remove cryoplasma


# frost ulti

execute @a[score_frostulticharge_min=680,score_frostulticharge=680,tag=Frost] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
execute @a[score_frostulticharge_min=680,score_frostulticharge=680,tag=Frost] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 1.00
execute @a[score_frostulticharge_min=680,score_frostulticharge=680,tag=Frost] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 0.00
tellraw @a[score_frostulticharge_min=680,score_frostulticharge=680,tag=Frost] {"text":"<Frost> Ice Aura Totem is ready to freeze!"}
scoreboard players add @a[tag=Frost] frostulticharge 1
replaceitem entity @a[tag=Frost,score_frostulticharge_min=4000] slot.hotbar.3 minecraft:packed_ice 1 0 {HideFlags:63,display:{Name:"Ice Aura Totem"},ench:[{id:49,lvl:1}]}
clear @a[tag=Frost,score_frostulticharge=4099] packed_ice
execute @a[score_frostultidrop_min=1,tag=Frost] ~ ~ ~ playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 100 1.00
execute @a[score_frostultidrop_min=1,tag=Frost] ~ ~ ~ playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 100 2.00
execute @a[score_frostultidrop_min=1,tag=Frost] ~ ~ ~ playsound minecraft:entity.wither.ambient voice @a ~ ~ ~ 100 0.80
execute @a[score_frostultidrop_min=1,tag=Frost,team=red] ~ ~ ~ summon zombie ~ ~ ~ {Tags:["redfrostulti"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13107199}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13107199}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13107199}}},{id:"minecraft:skull",Damage:3,Count:1b,tag:{SkullOwner:{Id:"39c4559e-8a9c-40ca-9b32-4420c478b445",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZhYWI1OGZhMDFmY2U5YWY0NjllZDc0N2FlZDgxMWQ3YmExOGM0NzZmNWE3ZjkwODhlMTI5YzMxYjQ1ZjMifX19"}]}},ench:[{id:62,lvl:1}]}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:35}],Health:35.0f,Team:"red",ActiveEffects:[{Id:2,Amplifier:0,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}
execute @a[score_frostultidrop_min=1,tag=Frost,team=blue] ~ ~ ~ summon zombie ~ ~ ~ {Tags:["bluefrostulti"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:13107199}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:13107199}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:13107199}}},{id:"minecraft:skull",Damage:3,Count:1b,tag:{SkullOwner:{Id:"39c4559e-8a9c-40ca-9b32-4420c478b445",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTZhYWI1OGZhMDFmY2U5YWY0NjllZDc0N2FlZDgxMWQ3YmExOGM0NzZmNWE3ZjkwODhlMTI5YzMxYjQ1ZjMifX19"}]}},ench:[{id:62,lvl:1}]}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:35}],Health:35.0f,Team:"blue",ActiveEffects:[{Id:2,Amplifier:0,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}
execute @e[tag=redfrostulti] ~ ~ ~ effect @e[r=8,team=blue] slowness 1 2 true
execute @e[tag=bluefrostulti] ~ ~ ~ effect @e[r=8,team=red] slowness 1 2 true
scoreboard players add @e[tag=redfrostulti] lifefrostulti 1
scoreboard players add @e[tag=bluefrostulti] lifefrostulti 1
execute @e[tag=bluefrostulti] ~ ~ ~ particle cloud ~ ~ ~ 0.1 0 0.1 0 10 force
execute @e[tag=redfrostulti] ~ ~ ~ particle cloud ~ ~ ~ 0.1 0 0.1 0 10 force
kill @e[score_lifefrostulti_min=2400]






scoreboard players set @a[score_frostultidrop_min=1] frostulticharge 0
scoreboard players set @a[score_frostultidrop_min=1] frostultidrop 0













# Hecate

# items

scoreboard players tag @a[tag=Necromancer] add hecatebow {SelectedItem:{tag:{hecatebow:1b}}}
execute @a[tag=Necromancer] ~ ~ ~ replaceitem entity @a[tag=!hecatebow,r=0] slot.hotbar.0 minecraft:bow 1 0 {Unbreakable:1,hecatebow:1b,display:{Name:"Hecate's Bow"}}
scoreboard players tag @a[tag=hecatebow] remove hecatebow
execute @a[tag=Necromancer] ~ ~ ~ particle fallingdust ~ ~0.4 ~ 0.1 0.2 0.1 0 5 force @a 42
execute @a[tag=Necromancer] ~ ~ ~ particle fallingdust ~ ~0.4 ~ 0.1 0.2 0.1 0 1 force @a 57
effect @a[tag=Necromancer] invisibility 1 0 true
replaceitem entity @a[tag=Necromancer] slot.armor.head minecraft:skull 1 3 {display:{Name:"Hecate's Head"},SkullOwner:{Id:"59ea4111-6b0d-4d73-8f2e-8bd6d2cedf11",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTk1NDgxYWNmMGExM2Y2NjU5Njk2OTY3NTRlZmMyMjE0YWE2MjNjM2ZjZTNlYjJhNDRkZjViMmY1OTFhM2MxIn19fQ=="}]}}}
replaceitem entity @a[tag=Necromancer] slot.armor.chest minecraft:leather_chestplate 1 0 {Unbreakable:1,display:{Name:"Hecate's Vest",color:8912863}}
replaceitem entity @a[tag=Necromancer] slot.armor.legs minecraft:leather_leggings 1 0 {Unbreakable:1,display:{Name:"Hecate's Leggings",color:8454117}}
replaceitem entity @a[tag=Necromancer] slot.armor.feet minecraft:leather_boots 1 0 {Unbreakable:1,ench:[{id:2,lvl:5}],display:{Name:"Hecate's Shoes",color:8454117}}
execute @a[tag=Necromancer,score_usebow_min=1] ~ ~ ~ entitydata @e[type=arrow,r=5] {Tags:["astralarrow"],NoGravity:1b}


scoreboard players add @e[tag=astralarrow] arrowtime 1
execute @e[tag=astralarrow] ~ ~ ~ particle fallingdust ~ ~ ~ 0.1 0 0.1 0 1 force
scoreboard players set @a[score_usebow_min=1,tag=Necromancer] usebow 0
kill @e[score_arrowtime_min=30]

#skeletal minions

scoreboard players add @a[tag=Necromancer] dropbonetime 1
scoreboard players add @e[tag=skeletonminionred] dropbonelife 1
scoreboard players add @e[tag=skeletonminionblue] dropbonelife 1
replaceitem entity @a[tag=Necromancer,score_dropbonetime_min=480] slot.hotbar.1 minecraft:bone 1 0 {display:{Name:"Skeleton Minions"}}
clear @a[tag=Necromancer,score_dropbonetime=479] bone
execute @a[tag=Necromancer,score_dropbonetime_min=1,score_dropbonetime=1,team=red] ~ ~ ~ summon skeleton ~ ~ ~ {CustomName:"Skeleton Minion",Tags:["skeletonminionred"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1,ench:[{id:2,lvl:100}],display:{color:14745343}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1,ench:[{id:0,lvl:1}],display:{color:14745343}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1,ench:[{id:7,lvl:1}],display:{color:14745343}}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1}}],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:6}],Health:6.0f,Fire:-1000,Team:"red",ActiveEffects:[{Id:12,Amplifier:1,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}
execute @a[tag=Necromancer,score_dropbonetime_min=10,score_dropbonetime=10,team=red] ~ ~ ~ summon skeleton ~ ~ ~ {CustomName:"Skeleton Minion",Tags:["skeletonminionred"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1,ench:[{id:2,lvl:100}],display:{color:14745343}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1,ench:[{id:0,lvl:1}],display:{color:14745343}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1,ench:[{id:7,lvl:1}],display:{color:14745343}}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1}}],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:6}],Health:6.0f,Fire:-1000,Team:"red",ActiveEffects:[{Id:12,Amplifier:1,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}

execute @a[tag=Necromancer,score_dropbonetime_min=1,score_dropbonetime=1,team=blue] ~ ~ ~ summon skeleton ~ ~ ~ {CustomName:"Skeleton Minion",Tags:["skeletonminionblue"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1,ench:[{id:2,lvl:100}],display:{color:14745343}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1,ench:[{id:0,lvl:1}],display:{color:14745343}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1,ench:[{id:7,lvl:1}],display:{color:14745343}}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1}}],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:6}],Health:6.0f,Fire:-1000,Team:"blue",ActiveEffects:[{Id:12,Amplifier:1,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}
execute @a[tag=Necromancer,score_dropbonetime_min=10,score_dropbonetime=10,team=blue] ~ ~ ~ summon skeleton ~ ~ ~ {CustomName:"Skeleton Minion",Tags:["skeletonminionblue"],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:1,ench:[{id:2,lvl:100}],display:{color:14745343}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:1,ench:[{id:0,lvl:1}],display:{color:14745343}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1,ench:[{id:7,lvl:1}],display:{color:14745343}}},{id:"minecraft:iron_helmet",Count:1b,tag:{Unbreakable:1}}],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:6}],Health:6.0f,Fire:-1000,Team:"blue",ActiveEffects:[{Id:12,Amplifier:1,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}


execute @a[tag=Necromancer,score_dropbonetime_min=1,score_dropbonetime=1] ~ ~ ~ playsound minecraft:entity.arrow.hit voice @a[r=6] ~ ~ ~ 100 0.00
execute @a[tag=Necromancer,score_dropbonetime_min=10,score_dropbonetime=10] ~ ~ ~ playsound minecraft:entity.arrow.hit voice @a[r=6] ~ ~ ~ 100 2.00


kill @e[score_dropbonelife_min=360]

scoreboard players set @a[score_dropbone_min=1] dropbonetime 0
scoreboard players set @a[score_dropbone_min=1] dropbone 0







#minion self destruct

scoreboard players add @e[tag=selfdestructred] lifede 1
scoreboard players add @e[tag=selfdestructblue] lifede 1
scoreboard players add @e[tag=oofoof2] lifedede 1
scoreboard players add @e[tag=oofoof] lifedede 1

execute @a[team=red] ~ ~ ~ kill @e[tag=oofoof,r=4]
execute @a[team=blue] ~ ~ ~ kill @e[tag=oofoof2,r=4]

kill @e[score_lifede_min=4]
kill @e[score_lifedede_min=15]

replaceitem entity @a[tag=Necromancer] slot.hotbar.2 minecraft:gunpowder 1 0 {HideFlags:63,display:{Name:"Minion Self-Destruction"},ench:[{id:62,lvl:1}]}
execute @a[team=red,tag=Necromancer,score_dropgunpowder_min=1] ~ ~ ~ execute @e[tag=skeletonminionred] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["selfdestructred"],NoGravity:1b,Invisible:1,NoBasePlate:1}
execute @a[team=blue,tag=Necromancer,score_dropgunpowder_min=1] ~ ~ ~ execute @e[tag=skeletonminionblue] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["selfdestructblue"],NoGravity:1b,Invisible:1,NoBasePlate:1}
execute @a[team=blue,tag=Necromancer,score_dropgunpowder_min=1] ~ ~ ~ execute @e[tag=skelehorse,team=blue] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["selfdestructblue"],NoGravity:1b,Invisible:1,NoBasePlate:1}
execute @a[team=red,tag=Necromancer,score_dropgunpowder_min=1] ~ ~ ~ execute @e[tag=skelehorse,team=red] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["selfdestructred"],NoGravity:1b,Invisible:1,NoBasePlate:1}


execute @a[team=red,tag=Necromancer,score_dropgunpowder_min=1] ~ ~ ~ kill @e[tag=skeletonminionred]
execute @a[team=blue,tag=Necromancer,score_dropgunpowder_min=1] ~ ~ ~ kill @e[tag=skeletonminionblue]
execute @a[team=blue,tag=Necromancer,score_dropgunpowder_min=1] ~ ~ ~ kill @e[tag=skelehorse,team=blue]
execute @a[team=red,tag=Necromancer,score_dropgunpowder_min=1] ~ ~ ~ kill @e[tag=skelehorse,team=red]
scoreboard players set @a[score_dropgunpowder_min=1,tag=Necromancer] dropgunpowder 0
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~2 ~2 ~ {Tags:["oofoof"],Motion:[1.6,0.0,0.0]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~ ~2 ~2 {Tags:["oofoof"],Motion:[0.0,0.0,1.6]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-2 ~2 ~ {Tags:["oofoof"],Motion:[-1.6,0.0,0.0]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~ ~2 ~-2 {Tags:["oofoof"],Motion:[0.0,0.0,-1.6]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-1 ~2 ~1 {Tags:["oofoof"],Motion:[-0.8,0.0,0.8]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~1 ~2 ~-1 {Tags:["oofoof"],Motion:[0.8,0.0,-0.8]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~1 ~2 ~1 {Tags:["oofoof"],Motion:[0.8,0.0,0.8]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-1 ~2 ~-1 {Tags:["oofoof"],Motion:[-0.8,0.0,-0.8]}

execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~2 ~2 ~ {Tags:["oofoof"],Motion:[1.6,0.2,0.0]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~ ~2 ~2 {Tags:["oofoof"],Motion:[0.0,0.2,1.6]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-2 ~2 ~ {Tags:["oofoof"],Motion:[-1.6,0.2,0.0]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~ ~2 ~-2 {Tags:["oofoof"],Motion:[0.0,0.2,-1.6]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-1 ~2 ~1 {Tags:["oofoof"],Motion:[-0.8,0.2,0.8]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~1 ~2 ~-1 {Tags:["oofoof"],Motion:[0.8,0.2,-0.8]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~1 ~2 ~1 {Tags:["oofoof"],Motion:[0.8,0.2,0.8]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-1 ~2 ~-1 {Tags:["oofoof"],Motion:[-0.8,0.2,-0.8]}

execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~2 ~2 ~ {Tags:["oofoof"],Motion:[0.6,0.2,0.0]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~ ~2 ~2 {Tags:["oofoof"],Motion:[0.0,0.2,0.6]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-2 ~2 ~ {Tags:["oofoof"],Motion:[-0.6,0.2,0.0]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~ ~2 ~-2 {Tags:["oofoof"],Motion:[0.0,0.2,-0.6]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-1 ~2 ~1 {Tags:["oofoof"],Motion:[-0.3,0.2,0.3]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~1 ~2 ~-1 {Tags:["oofoof"],Motion:[0.3,0.2,-0.3]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~1 ~2 ~1 {Tags:["oofoof"],Motion:[0.3,0.2,0.3]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-1 ~2 ~-1 {Tags:["oofoof"],Motion:[-0.3,0.2,-0.3]}


execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~2 ~2 ~ {Tags:["oofoof"],Motion:[0.2,0.2,0.0]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~ ~2 ~2 {Tags:["oofoof"],Motion:[0.0,0.2,0.2]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-2 ~2 ~ {Tags:["oofoof"],Motion:[-0.2,0.2,0.0]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~ ~2 ~-2 {Tags:["oofoof"],Motion:[0.0,0.2,-0.2]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-1 ~2 ~1 {Tags:["oofoof"],Motion:[-0.1,0.2,0.1]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~1 ~2 ~-1 {Tags:["oofoof"],Motion:[0.1,0.2,-0.1]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~1 ~2 ~1 {Tags:["oofoof"],Motion:[0.1,0.2,0.1]}
execute @e[tag=selfdestructred] ~ ~ ~ summon arrow ~-1 ~2 ~-1 {Tags:["oofoof"],Motion:[-0.1,0.2,-0.1]}





execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~2 ~2 ~ {Tags:["oofoof2"],Motion:[1.6,0.0,0.0]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~ ~2 ~2 {Tags:["oofoof2"],Motion:[0.0,0.0,1.6]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-2 ~2 ~ {Tags:["oofoof2"],Motion:[-1.6,0.0,0.0]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~ ~2 ~-2 {Tags:["oofoof2"],Motion:[0.0,0.0,-1.6]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-1 ~2 ~1 {Tags:["oofoof2"],Motion:[-0.8,0.0,0.8]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~1 ~2 ~-1 {Tags:["oofoof2"],Motion:[0.8,0.0,-0.8]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~1 ~2 ~1 {Tags:["oofoof2"],Motion:[0.8,0.0,0.8]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-1 ~2 ~-1 {Tags:["oofoof2"],Motion:[-0.8,0.0,-0.8]}

execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~2 ~2 ~ {Tags:["oofoof2"],Motion:[1.6,0.2,0.0]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~ ~2 ~2 {Tags:["oofoof2"],Motion:[0.0,0.2,1.6]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-2 ~2 ~ {Tags:["oofoof2"],Motion:[-1.6,0.2,0.0]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~ ~2 ~-2 {Tags:["oofoof2"],Motion:[0.0,0.2,-1.6]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-1 ~2 ~1 {Tags:["oofoof2"],Motion:[-0.8,0.2,0.8]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~1 ~2 ~-1 {Tags:["oofoof2"],Motion:[0.8,0.2,-0.8]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~1 ~2 ~1 {Tags:["oofoof2"],Motion:[0.8,0.2,0.8]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-1 ~2 ~-1 {Tags:["oofoof2"],Motion:[-0.8,0.2,-0.8]}

execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~2 ~2 ~ {Tags:["oofoof2"],Motion:[0.6,0.2,0.0]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~ ~2 ~2 {Tags:["oofoof2"],Motion:[0.0,0.2,0.6]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-2 ~2 ~ {Tags:["oofoof2"],Motion:[-0.6,0.2,0.0]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~ ~2 ~-2 {Tags:["oofoof2"],Motion:[0.0,0.2,-0.6]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-1 ~2 ~1 {Tags:["oofoof2"],Motion:[-0.3,0.2,0.3]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~1 ~2 ~-1 {Tags:["oofoof2"],Motion:[0.3,0.2,-0.3]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~1 ~2 ~1 {Tags:["oofoof2"],Motion:[0.3,0.2,0.3]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-1 ~2 ~-1 {Tags:["oofoof2"],Motion:[-0.3,0.2,-0.3]}

execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~2 ~2 ~ {Tags:["oofoof2"],Motion:[0.2,0.2,0.0]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~ ~2 ~2 {Tags:["oofoof2"],Motion:[0.0,0.2,0.2]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-2 ~2 ~ {Tags:["oofoof2"],Motion:[-0.2,0.2,0.0]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~ ~2 ~-2 {Tags:["oofoof2"],Motion:[0.0,0.2,-0.2]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-1 ~2 ~1 {Tags:["oofoof2"],Motion:[-0.1,0.2,0.1]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~1 ~2 ~-1 {Tags:["oofoof2"],Motion:[0.1,0.2,-0.1]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~1 ~2 ~1 {Tags:["oofoof2"],Motion:[0.1,0.2,0.1]}
execute @e[tag=selfdestructblue] ~ ~ ~ summon arrow ~-1 ~2 ~-1 {Tags:["oofoof2"],Motion:[-0.1,0.2,-0.1]}






# undead ride

scoreboard players add @a[tag=Necromancer] dropsaddlecool 1
replaceitem entity @a[tag=Necromancer,score_dropsaddlecool_min=600] slot.hotbar.3 minecraft:saddle 1 0 {HideFlags:63,undeadride:1b,display:{Name:"Undead Ride"},ench:[{id:51,lvl:1}]}
clear @a[tag=Necromancer,score_dropsaddlecool=599] saddle
execute @a[score_dropsaddle_min=1,tag=Necromancer,team=red] ~ ~ ~ summon skeleton_horse ~ ~ ~ {Tags:["skelehorse"],SaddleItem:{id:"minecraft:saddle",Count:1b},Variant:0,Tame:1,ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1,ench:[{id:2,lvl:100},{id:8,lvl:100}]}},{},{},{}],ArmorDropChances:[0.0F,0.085F,0.085F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.movementSpeed,Base:0.205}],Health:10.0f,Team:"red"}
execute @a[score_dropsaddle_min=1,tag=Necromancer,team=blue] ~ ~ ~ summon skeleton_horse ~ ~ ~ {Tags:["skelehorse"],SaddleItem:{id:"minecraft:saddle",Count:1b},Variant:0,Tame:1,ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Unbreakable:1,ench:[{id:2,lvl:100},{id:8,lvl:100}]}},{},{},{}],ArmorDropChances:[0.0F,0.085F,0.085F,0.085F],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.movementSpeed,Base:0.205}],Health:10.0f,Team:"blue"}
effect @a[score_dropsaddle_min=1,tag=Necromancer] regeneration 4 3 true
scoreboard players add @e[tag=skelehorse] lifexd 1
kill @e[score_lifexd_min=320]
scoreboard players set @a[score_dropsaddle_min=1] dropsaddlecool 0
scoreboard players set @a[score_dropsaddle_min=1] dropsaddle 0






















# Dark Lord


scoreboard players tag @a[tag=Darklord] add darkbow {SelectedItem:{tag:{darkbow:1b}}}
execute @a[tag=Darklord] ~ ~ ~ replaceitem entity @a[tag=!darkbow,r=0] slot.hotbar.0 minecraft:bow 1 0 {darkbow:1b,display:{Name:"Dark Bow"},ench:[{id:48,lvl:1}]}
scoreboard players tag @a[tag=darkbow] remove darkbow
execute @a[tag=Darklord,score_usedarkbow_min=1] ~ ~ ~ scoreboard players tag @e[type=arrow,r=4] add darkarrow
scoreboard players add @e[tag=darkarrow] darklife 1
kill @e[score_darklife_min=4]
























#SLIME CAPTAIN
# Jump

replaceitem entity @a[tag=Jump] slot.armor.head minecraft:skull 1 3 {display:{Name:"Jumpy Head"},SkullOwner:{Id:"bdcaf19e-c328-49de-9fa9-f9447d80c9c7",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODJkYzRiY2I5NzY3ZDNmMTMzNjI5OWFiMjQ2OTBiMzRhNGM2ZTVhNDI3ZWM1YzM4MWQ2YzU5ODk4YTVlZjEifX19"}]}}}
replaceitem entity @a[tag=Jump] slot.armor.chest minecraft:leather_chestplate 1 0 {Unbreakable:1,display:{Name:"Jumpy Chestplate",color:986895}}
replaceitem entity @a[tag=Jump] slot.armor.legs minecraft:leather_leggings 1 0 {Unbreakable:1,display:{Name:"Jumpy Pants",color:986895}}
replaceitem entity @a[tag=Jump] slot.armor.feet minecraft:leather_boots 1 0 {Unbreakable:1,display:{Name:"Jumpy Shoes",color:986895}}


replaceitem entity @a[tag=Jump] slot.hotbar.0 minecraft:diamond_shovel 1 0 {AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Unbreakable:1b,Amount:2.25,Operation:0,UUIDLeast:368031,UUIDMost:362375},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:458862,UUIDMost:56665}],display:{Name:"Knockback Shovel"},ench:[{id:19,lvl:2}]}

scoreboard players remove @a[tag=Jump] shiftjump2 1
scoreboard players add @a[tag=Jump,score_shiftjump_min=1] shiftjump2 2
scoreboard players set @a[tag=Jump,score_shiftjump_min=1] shiftjump 0
scoreboard players set @a[tag=Jump,score_shiftjump2=0] shiftjump2 0


effect @a[tag=Jump] jump_boost 1 0 true
execute @a[tag=Jump,score_shiftjump2_min=10] ~ ~ ~ effect @a[r=0,score_jumpjump=0] jump_boost 2 1 true
execute @a[tag=Jump,score_shiftjump2_min=20] ~ ~ ~ effect @a[r=0,score_jumpjump=0] jump_boost 2 2 true
execute @a[tag=Jump,score_shiftjump2_min=30] ~ ~ ~ effect @a[r=0,score_jumpjump=0] jump_boost 2 3 true
execute @a[tag=Jump,score_shiftjump2_min=40] ~ ~ ~ effect @a[r=0,score_jumpjump=0] jump_boost 2 4 true
execute @a[tag=Jump,score_shiftjump2_min=50] ~ ~ ~ effect @a[r=0,score_jumpjump=0] jump_boost 2 5 true

execute @a[tag=Jump,score_shiftjump2_min=10] ~ ~ ~ particle blockcrack ~ ~ ~ 0.3 0.2 0.3 0 1 force @a 165
execute @a[tag=Jump,score_shiftjump2_min=20] ~ ~ ~ particle blockcrack ~ ~ ~ 0.3 0.2 0.3 0 2 force @a 165
execute @a[tag=Jump,score_shiftjump2_min=30] ~ ~ ~ particle blockcrack ~ ~ ~ 0.3 0.2 0.3 0 3 force @a 165
execute @a[tag=Jump,score_shiftjump2_min=40] ~ ~ ~ particle blockcrack ~ ~ ~ 0.3 0.2 0.3 0 4 force @a 165
execute @a[tag=Jump,score_shiftjump2_min=50] ~ ~ ~ particle blockcrack ~ ~ ~ 0.3 0.2 0.3 0 5 force @a 165

execute @a[tag=Jump,score_shiftjump2_min=10] ~ ~ ~ particle happyVillager ~ ~ ~ 0.1 0 0.1 0 1 force
execute @a[tag=Jump,score_shiftjump2_min=20] ~ ~ ~ particle happyVillager ~ ~ ~ 0.1 0 0.1 0 1 force
execute @a[tag=Jump,score_shiftjump2_min=30] ~ ~ ~ particle happyVillager ~ ~ ~ 0.1 0 0.1 0 2 force
execute @a[tag=Jump,score_shiftjump2_min=40] ~ ~ ~ particle happyVillager ~ ~ ~ 0.1 0 0.1 0 2 force
execute @a[tag=Jump,score_shiftjump2_min=50] ~ ~ ~ particle happyVillager ~ ~ ~ 0.1 0 0.1 0 3 force

execute @a[tag=Jump,score_shiftjump2_min=10] ~ ~ ~ playsound minecraft:entity.slime.hurt voice @a[r=3] ~ ~ ~ 0.1 0.40
execute @a[tag=Jump,score_shiftjump2_min=20] ~ ~ ~ playsound minecraft:entity.slime.squish voice @a[r=3] ~ ~ ~ 0.1 0.80
execute @a[tag=Jump,score_shiftjump2_min=30] ~ ~ ~ playsound minecraft:entity.slime.squish voice @a[r=3] ~ ~ ~ 0.1 1.20
execute @a[tag=Jump,score_shiftjump2_min=40] ~ ~ ~ playsound minecraft:entity.slime.squish voice @a[r=3] ~ ~ ~ 0.1 1.60
execute @a[tag=Jump,score_shiftjump2_min=50] ~ ~ ~ playsound minecraft:entity.slime.squish voice @a[r=3] ~ ~ ~ 0.1 2.00

execute @a[tag=Jump,score_shiftjump2_min=20,score_shiftjump2=20] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=3] ~ ~ ~ 0.5 0.50
execute @a[tag=Jump,score_shiftjump2_min=30,score_shiftjump2=30] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=3] ~ ~ ~ 0.5 1.00
execute @a[tag=Jump,score_shiftjump2_min=40,score_shiftjump2=40] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=3] ~ ~ ~ 0.5 1.50
execute @a[tag=Jump,score_shiftjump2_min=50,score_shiftjump2=50] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=3] ~ ~ ~ 0.5 2.00

execute @a[tag=Jump,score_jumpjump_min=1] ~ ~ ~ execute @a[r=0,score_shiftjump2_min=20] ~ ~ ~ playsound minecraft:entity.slime.jump voice @a[r=3] ~ ~ ~ 100 1.00
execute @a[tag=Jump,score_jumpjump_min=1] ~ ~ ~ effect @a[r=0,score_shiftjump2_min=20] speed 1 1 true


scoreboard players set @a[tag=Jump,score_jumpjump_min=1] shiftjump2 0
scoreboard players set @a[tag=Jump,score_jumpjump=0] jumpjump 0
scoreboard players set @a[tag=Jump,score_jumpjump_min=1] jumpjump 0

scoreboard players set @a[tag=Jump,score_shiftjump2_min=70] shiftjump2 70



#GROUNDPOUND



execute @a[score_groundpoundtime_min=300,score_groundpoundtime=300,tag=Jump] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 1.00
tellraw @a[score_groundpoundtime_min=300,score_groundpoundtime=300,tag=Jump] {"text":"<Captain Slime> Regarde! Ourr Grroundpound is rready!"}


scoreboard players add @a[tag=Jump] groundpoundtime 1
replaceitem entity @a[tag=Jump,score_groundpoundtime_min=300] slot.hotbar.1 minecraft:dye 1 10 {gp:1b,display:{Name:"Groundpound"}}
clear @a[score_groundpoundtime=300,tag=Jump] dye 10
scoreboard players tag @a[tag=Jump] add gp {SelectedItem:{tag:{gp:1b}}}

execute @a[tag=gp,score_groundpound_min=1,team=red] ~ ~ ~ playsound entity.slime.squish voice @a[r=7] ~ ~ ~ 100 0.00
execute @a[tag=gp,score_groundpound_min=1,team=red] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["groundpound"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red",Motion:[0.0,1.0,0.0]}
execute @a[tag=gp,score_groundpound_min=1,team=blue] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["groundpound"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue",Motion:[0.0,1.0,0.0]}
execute @e[tag=groundpound,team=red] ~ ~ ~ teleport @a[r=3,tag=Jump,team=red] ~ ~ ~
execute @e[tag=groundpound,team=blue] ~ ~ ~ teleport @a[r=3,tag=Jump,team=blue] ~ ~ ~

scoreboard players add @e[tag=groundpound] gplife 1
scoreboard players add @e[tag=rstun] stunlife 1
scoreboard players add @e[tag=bstun] stunlife 1
entitydata @e[score_gplife_min=12] {Motion:[0.0,-2.0,0.0]}

execute @e[score_gplife_min=16,team=red] ~ ~ ~ effect @e[team=blue,r=4] wither 3 3 true
execute @e[score_gplife_min=16,team=blue] ~ ~ ~ effect @e[team=red,r=4] wither 3 3 true

execute @e[score_gplife_min=16,team=red] ~ ~ ~ effect @e[team=blue,r=4] slowness 3 0 true
execute @e[score_gplife_min=16,team=blue] ~ ~ ~ effect @e[team=red,r=4] slowness 3 0 true

execute @e[score_gplife_min=16,team=red] ~ ~ ~ effect @e[team=blue,r=4] weakness 3 100 true
execute @e[score_gplife_min=16,team=blue] ~ ~ ~ effect @e[team=red,r=4] weakness 3 100 true

execute @e[score_gplife_min=16,team=red] ~ ~ ~ execute @e[team=blue,r=4] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["rstun"],Invisible:1,Invulnerable:1,NoBasePlate:1,Motion:[0.0,0.4,0.0]}
execute @e[score_gplife_min=16,team=blue] ~ ~ ~ execute @e[team=red,r=4] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["bstun"],Invisible:1,Invulnerable:1,NoBasePlate:1,Motion:[0.0,0.4,0.0]}
execute @e[tag=rstun] ~ ~ ~ teleport @e[r=2,team=blue] ~ ~ ~
execute @e[tag=bstun] ~ ~ ~ teleport @e[r=2,team=red] ~ ~ ~

execute @e[score_gplife_min=1] ~ ~ ~ particle blockcrack ~ ~ ~ 0 0.1 0 0 10 force @a 165
execute @e[score_gplife_min=16] ~ ~ ~ particle blockcrack ~ ~ ~ 1.2 0.1 1.2 0 100 force @a 165
execute @e[score_gplife_min=16] ~ ~ ~ playsound entity.slime.squish voice @a[r=7] ~ ~ ~ 100 1.00
execute @e[score_gplife_min=16] ~ ~ ~ playsound entity.slime.squish voice @a[r=7] ~ ~ ~ 100 2.00

kill @e[score_gplife_min=18]
kill @e[score_stunlife_min=10]


scoreboard players set @a[score_groundpound_min=1,tag=Jump] groundpoundtime 0
scoreboard players set @a[score_groundpound_min=1,tag=Jump] groundpound 0
scoreboard players tag @a[tag=gp] remove gp


# STICKY FINGERS

execute @a[score_slimetime_min=300,score_slimetime=300,tag=Jump] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 1.00
tellraw @a[score_slimetime_min=300,score_slimetime=300,tag=Jump] {"text":"<Captain Slime> MES STICKY FINGERRS! A L'ATTAQUE!!"}



scoreboard players add @a[tag=Jump] slimetime 1
clear @a[tag=Jump,score_slimetime=300] slime_ball
replaceitem entity @a[tag=Jump,score_slimetime_min=300] slot.hotbar.2 minecraft:slime_ball 1 0 {fingers:1b,display:{Name:"Sticky Fingers"}}
scoreboard players tag @a[tag=Jump] add fingers {SelectedItem:{tag:{fingers:1b}}}

effect @a[score_slimedrop_min=1,tag=fingers] instant_health 1 1 true

execute @a[score_slimedrop_min=1,tag=fingers,team=red] ~ ~ ~ summon slime ~ ~ ~ {Tags:["sbomb"],Size:0,Attributes:[{Name:generic.maxHealth,Base:20}],Health:20.0f,Team:"red",ActiveEffects:[{Id:11,Amplifier:3,Duration:20000000,ShowParticles:0b}]}
execute @a[score_slimedrop_min=1,tag=fingers,team=blue] ~ ~ ~ summon slime ~ ~ ~ {Tags:["sbomb"],Size:0,Attributes:[{Name:generic.maxHealth,Base:20}],Health:20.0f,Team:"blue",ActiveEffects:[{Id:11,Amplifier:3,Duration:20000000,ShowParticles:0b}]}
execute @a[score_slimedrop_min=1,tag=fingers,team=red] ~ ~ ~ summon slime ~ ~ ~ {Tags:["sbomb"],Size:0,Attributes:[{Name:generic.maxHealth,Base:20}],Health:20.0f,Team:"red",ActiveEffects:[{Id:11,Amplifier:3,Duration:20000000,ShowParticles:0b}]}
execute @a[score_slimedrop_min=1,tag=fingers,team=blue] ~ ~ ~ summon slime ~ ~ ~ {Tags:["sbomb"],Size:0,Attributes:[{Name:generic.maxHealth,Base:20}],Health:20.0f,Team:"blue",ActiveEffects:[{Id:11,Amplifier:3,Duration:20000000,ShowParticles:0b}]}

execute @e[team=red] ~ ~ ~ execute @e[team=blue,tag=sbomb,r=2] ~ ~ ~ summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Fuse:0,Team:"blue"}
execute @e[team=blue] ~ ~ ~ execute @e[team=red,tag=sbomb,r=2] ~ ~ ~ summon creeper ~ ~ ~ {ignited:1,ExplosionRadius:2,Fuse:0,Team:"red"}
execute @e[team=red] ~ ~ ~ kill @e[team=blue,tag=sbomb,r=2]
execute @e[team=blue] ~ ~ ~ kill @e[team=red,tag=sbomb,r=2]

scoreboard players add @e[tag=sbomb] slimeparti 1
execute @e[score_slimeparti_min=5] ~ ~ ~ particle happyVillager ~ ~ ~ 0 0 0 0 1 force
scoreboard players set @e[score_slimeparti_min=5] slimeparti 0

scoreboard players set @a[score_slimedrop_min=1] slimetime 0
scoreboard players set @a[score_slimedrop_min=1] slimedrop 0
scoreboard players tag @a[tag=fingers] remove fingers


# BOUNCER

execute @a[score_bouncertime_min=3600,score_bouncertime=3600,tag=Jump] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 1.00
execute @a[score_bouncertime_min=3600,score_bouncertime=3600,tag=Jump] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
execute @a[score_bouncertime_min=3600,score_bouncertime=3600,tag=Jump] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 0.00
tellraw @a[score_bouncertime_min=3600,score_bouncertime=3600,tag=Jump] {"text":"<Captain Slime> Bouncy Bounce, I trrust you to prrotect moi!"}



scoreboard players add @a[tag=Jump] bouncertime 1
clear @a[tag=Jump,score_bouncertime=3600] slime
replaceitem entity @a[tag=Jump,score_bouncertime_min=3600] slot.hotbar.3 minecraft:slime 1 0 {bouncer:1b,display:{Name:"Bouncy Bounce (no u)"}}
scoreboard players tag @a[tag=Jump] add bouncer {SelectedItem:{tag:{bouncer:1b}}}

execute @a[score_bouncer_min=1,tag=bouncer,team=blue] ~ ~ ~ summon zombie ~ ~ ~ {CustomName:"Bouncy Bounce",CustomNameVisible:1,Tags:["bouncerT"],IsVillager:0,IsBaby:0,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:762624}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:762624}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:762624}}},{id:"minecraft:slime",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1000,Operation:0,UUIDLeast:500701,UUIDMost:927524},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.01,Operation:0,UUIDLeast:857901,UUIDMost:231852}]}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:60}],Health:60.0f,Silent:1,Team:"blue",ActiveEffects:[{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}
execute @a[score_bouncer_min=1,tag=bouncer,team=red] ~ ~ ~ summon zombie ~ ~ ~ {CustomName:"Bouncy Bounce",CustomNameVisible:1,Tags:["bouncerT"],IsVillager:0,IsBaby:0,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:762624}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:762624}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:762624}}},{id:"minecraft:slime",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1000,Operation:0,UUIDLeast:500701,UUIDMost:927524},{AttributeName:"generic.movementSpeed",Name:"generic.movementSpeed",Amount:0.01,Operation:0,UUIDLeast:857901,UUIDMost:231852}]}}],ArmorDropChances:[0.0F,0.0F,0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:60}],Health:60.0f,Silent:1,Team:"red",ActiveEffects:[{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}

execute @e[tag=bouncerT] ~ ~ ~ particle cloud ~ ~ ~ 0.1 0 0.1 0 10 force
execute @e[tag=bouncerT,team=red] ~ ~ ~ scoreboard teams join red @e[type=!Player,r=5,tag=!bouncerT]
execute @e[tag=bouncerT,team=blue] ~ ~ ~ scoreboard teams join blue @e[type=!Player,r=5,tag=!bouncerT]
execute @e[tag=bouncerT,team=blue] ~ ~ ~ kill @e[type=armor_stand,r=4]
execute @e[tag=bouncerT] ~ ~ ~ kill @e[type=arrow,r=3]


scoreboard players set @a[score_bouncer_min=1] bouncertime 0
scoreboard players set @a[score_bouncer_min=1] bouncer 0
scoreboard players tag @a[tagbouncer] remove bouncer























# MECHA SOLDIER

replaceitem entity @a[tag=Mecha] slot.armor.head minecraft:skull 1 3 {AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:40,Operation:0,UUIDLeast:894641,UUIDMost:742293}],display:{Name:"Mecha Head"},SkullOwner:{Id:"bf889145-b588-4c6a-aae2-f007b0f6a380",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGY0OWQwOWMyMGUyOGYxMmVjM2M4OTE1ZThmNmI2OTQzZWMxYzcyNTQ0NjRkNzMxODc1NjNhMTdiZTliN2I1MiJ9fX0="}]}}}
replaceitem entity @a[tag=Mecha] slot.armor.chest minecraft:iron_chestplate 1 0 {display:{Name:"Mecha Top"}}
replaceitem entity @a[tag=Mecha] slot.armor.legs minecraft:iron_leggings 1 0 {display:{Name:"Mecha Bottom"}}
replaceitem entity @a[tag=Mecha] slot.armor.feet minecraft:iron_boots 1 0 {display:{Name:"Mecha Shoes"}}
replaceitem entity @a[tag=Mecha] slot.hotbar.0 minecraft:iron_hoe 1 0 {HideFlags:5,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:3,Operation:0,UUIDLeast:979368,UUIDMost:486863},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:100,Operation:0,UUIDLeast:437992,UUIDMost:950144}],Unbreakable:1,display:{Name:"Silver Scythe"},ench:[{id:22,lvl:1}]}
effect @a[tag=Mecha] slowness 1 1 true
execute @a[tag=Mecha] ~ ~ ~ particle enchantmenttable ~ ~0.3 ~ 0.1 0 0 0.4 8 force



# METAL FANGS


execute @a[score_dropfangstime_min=100,score_dropfangstime=100,tag=Mecha] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 1.00
tellraw @a[score_dropfangstime_min=100,score_dropfangstime=100,tag=Mecha] {"text":"<Silver Mecha> cout << ''Fangs are ready..'' << endl; "}



replaceitem entity @a[tag=Mecha,score_dropfangstime_min=100] slot.hotbar.1 minecraft:dye 1 7 {fangs:1b,HideFlags:5,display:{Name:"Metal Fangs"},ench:[{id:61,lvl:1}]}
scoreboard players add @a[tag=Mecha] dropfangstime 1
scoreboard players tag @a[tag=Mecha] add fangs {SelectedItem:{tag:{fangs:1b}}}
clear @a[tag=Mecha,score_dropfangstime=100] dye 7

scoreboard players tag @a[rym=-22,ry=22] add 1f
scoreboard players tag @a[rym=23,ry=63] add 2f
scoreboard players tag @a[rym=64,ry=125] add 3f
scoreboard players tag @a[rym=126,ry=160] add 4f
scoreboard players tag @a[rym=161,ry=-158] add 5f
scoreboard players tag @a[rym=-157,ry=-114] add 6f
scoreboard players tag @a[rym=-113,ry=-70] add 7f
scoreboard players tag @a[rym=-69,ry=-22] add 8f

execute @a[tag=fangs,team=red,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=1f,r=0] ~ ~ ~ summon armor_stand ~ ~ ~1 {Tags:["1fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @a[tag=fangs,team=red,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=2f,r=0] ~ ~ ~ summon armor_stand ~-1 ~ ~1 {Tags:["2fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @a[tag=fangs,team=red,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=3f,r=0] ~ ~ ~ summon armor_stand ~-1 ~ ~ {Tags:["3fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @a[tag=fangs,team=red,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=4f,r=0] ~ ~ ~ summon armor_stand ~-1 ~ ~-1 {Tags:["4fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @a[tag=fangs,team=red,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=5f,r=0] ~ ~ ~ summon armor_stand ~ ~ ~-1 {Tags:["5fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @a[tag=fangs,team=red,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=6f,r=0] ~ ~ ~ summon armor_stand ~1 ~ ~-1 {Tags:["6fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"} 
execute @a[tag=fangs,team=red,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=7f,r=0] ~ ~ ~ summon armor_stand ~1 ~ ~ {Tags:["7fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @a[tag=fangs,team=red,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=8f,r=0] ~ ~ ~ summon armor_stand ~1 ~ ~1 {Tags:["8fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}

execute @a[tag=fangs,team=blue,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=1f,r=0] ~ ~ ~ summon armor_stand ~ ~ ~1 {Tags:["1fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @a[tag=fangs,team=blue,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=2f,r=0] ~ ~ ~ summon armor_stand ~-1 ~ ~1 {Tags:["2fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @a[tag=fangs,team=blue,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=3f,r=0] ~ ~ ~ summon armor_stand ~-1 ~ ~ {Tags:["3fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @a[tag=fangs,team=blue,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=4f,r=0] ~ ~ ~ summon armor_stand ~-1 ~ ~-1 {Tags:["4fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @a[tag=fangs,team=blue,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=5f,r=0] ~ ~ ~ summon armor_stand ~ ~ ~-1 {Tags:["5fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @a[tag=fangs,team=blue,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=6f,r=0] ~ ~ ~ summon armor_stand ~1 ~ ~-1 {Tags:["6fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"} 
execute @a[tag=fangs,team=blue,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=7f,r=0] ~ ~ ~ summon armor_stand ~1 ~ ~ {Tags:["7fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @a[tag=fangs,team=blue,score_dropfangs_min=1] ~ ~ ~ execute @a[tag=8f,r=0] ~ ~ ~ summon armor_stand ~1 ~ ~1 {Tags:["8fa","fa"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}

entitydata @e[tag=1fa] {Motion:[0.0,-1.0,1.0]}
entitydata @e[tag=2fa] {Motion:[-0.5,-1.0,0.5]}
entitydata @e[tag=3fa] {Motion:[-1.0,-1.0,0.0]}
entitydata @e[tag=4fa] {Motion:[-0.5,-1.0,-0.5]}
entitydata @e[tag=5fa] {Motion:[0.0,-1.0,-1.0]}
entitydata @e[tag=6fa] {Motion:[0.5,-1.0,-0.5]}
entitydata @e[tag=7fa] {Motion:[1.0,-1.0,0.0]}
entitydata @e[tag=8fa] {Motion:[0.5,-1.0,0.5]}



execute @a[team=red] ~ ~ ~ kill @e[r=2,tag=redf]
execute @a[team=blue] ~ ~ ~ kill @e[r=2,tag=bluef]
execute @a[team=red] ~ ~ ~ kill @e[r=2,tag=redf]
execute @a[team=blue] ~ ~ ~ kill @e[r=2,tag=bluef]



execute @e[tag=fa,team=red] ~ ~ ~ summon evocation_fangs ~ ~ ~ {Tags:["redf"]}
execute @e[tag=fa,team=blue] ~ ~ ~ summon evocation_fangs ~ ~ ~ {Tags:["bluef"]}
execute @e[tag=fa2,team=red] ~ ~ ~ summon evocation_fangs ~ ~ ~ {Tags:["redf"]}
execute @e[tag=fa2,team=blue] ~ ~ ~ summon evocation_fangs ~ ~ ~ {Tags:["bluef"]}

scoreboard players add @e[tag=fa] fanglife 1
scoreboard players add @e[tag=fa2] fanglife 1

execute @e[team=red] ~ ~ ~ scoreboard players set @e[tag=fa,r=2,team=blue] fanglife 30
execute @e[team=blue] ~ ~ ~ scoreboard players set @e[tag=fa,r=2,team=red] fanglife 30


execute @e[team=red,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["1fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @e[team=red,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["2fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @e[team=red,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["3fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @e[team=red,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["4fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @e[team=red,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["5fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @e[team=red,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["6fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @e[team=red,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["7fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @e[team=red,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["8fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}

execute @e[team=blue,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["1fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @e[team=blue,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["2fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @e[team=blue,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["3fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @e[team=blue,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["4fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @e[team=blue,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["5fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @e[team=blue,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["6fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @e[team=blue,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["7fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @e[team=blue,score_fanglife_min=30] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["8fa","fa2"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}




kill @e[score_fanglife_min=10,tag=fa2]
kill @e[score_fanglife_min=30]

scoreboard players tag @a[tag=1f] remove 1f
scoreboard players tag @a[tag=2f] remove 2f
scoreboard players tag @a[tag=3f] remove 3f
scoreboard players tag @a[tag=4f] remove 4f
scoreboard players tag @a[tag=5f] remove 5f
scoreboard players tag @a[tag=6f] remove 6f
scoreboard players tag @a[tag=7f] remove 7f
scoreboard players tag @a[tag=8f] remove 8f



scoreboard players set @a[score_dropfangs_min=1] dropfangstime 0
scoreboard players set @a[score_dropfangs_min=1] dropfangs 0
scoreboard players tag @a[tag=fangs] remove fangs



#Portal

execute @a[score_dropportaltime_min=400,score_dropportaltime=400,tag=Mecha] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 1.00
tellraw @a[score_dropportaltime_min=400,score_dropportaltime=400,tag=Mecha] {"text":"<Silver Mecha> cout << ''Portal is ready to deploy..'' << endl; "}




replaceitem entity @a[tag=Mecha,score_dropportaltime_min=400] slot.hotbar.2 minecraft:iron_ingot 1 0 {HideFlags:1,portal:1b,display:{Name:"Portal"},ench:[{id:0,lvl:1}]}
scoreboard players add @a[tag=Mecha] dropportaltime 1
scoreboard players tag @a[tag=Mecha] add portal {SelectedItem:{tag:{portal:1b}}}
clear @a[tag=Mecha,score_dropportaltime=400] iron_ingot

execute @a[score_dropportal_min=1,tag=portal,score_dropportal=1] ~ ~ ~ playsound minecraft:entity.endereye.death voice @a[r=4] ~ ~ ~ 10 0.00
execute @a[score_dropportal_min=1,tag=portal,score_dropportal=1] ~ ~ ~ playsound minecraft:entity.endereye.death voice @a[r=4] ~ ~ ~ 10 0.50

execute @a[score_dropportal_min=1,tag=portal,score_dropportal=1,team=red] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["portala"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @a[score_dropportal_min=1,tag=portal,score_dropportal=1,team=blue] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["portala"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}
execute @e[tag=portala] ~ ~ ~ particle enchantmenttable ~ ~2 ~ 0 1 0 0.3 10 force

scoreboard players add @e[tag=portala] soundloop 1
execute @e[tag=portala,score_soundloop=1] ~ ~ ~ playsound block.portal.ambient voice @a[r=4] ~ ~ ~ 0.1 1.00
scoreboard players set @e[score_soundloop_min=90] soundloop 0

scoreboard players set @a[score_dropportal_min=1,score_dropportal=1] dropportal 2

scoreboard players add @a[score_dropportal_min=3,tag=Mecha] teleport 1


execute @a[score_teleport_min=1,score_teleport=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["lock"],Invisible:1,Invulnerable:1,NoBasePlate:1}
scoreboard players add @e[tag=lock] locklife 1
effect @a[score_teleport_min=1] nausea 4 0 true
effect @a[score_teleport_min=1] blindness 2 0 true
effect @a[score_teleport_min=1] slowness 1 100 true
execute @a[score_teleport_min=1] ~ ~ ~ particle enchantmenttable ~ ~2 ~ 0 1 0 0.5 20 force
execute @e[tag=lock] ~ ~ ~ teleport @a[score_teleport_min=1,r=2] ~ ~ ~
execute @a[score_teleport_min=1,score_teleport=1] ~ ~ ~ playsound minecraft:block.portal.trigger voice @a[r=8] ~ ~ ~ 100 0.90
kill @e[score_locklife_min=90]


effect @a[score_teleport_min=90,score_teleport=90] instant_health 1 2 true
tp @a[score_teleport_min=90,score_teleport=90,team=red] @e[tag=portala,team=red]
tp @a[score_teleport_min=90,score_teleport=90,team=blue] @e[tag=portala,team=blue]
execute @a[score_teleport_min=90] ~ ~ ~ playsound minecraft:block.portal.travel voice @a[r=4] ~ ~ ~ 0.1 2.00

execute @a[score_teleport_min=90,score_teleport=90,team=red] ~ ~ ~ kill @e[tag=portala,team=red,r=3]
execute @a[score_teleport_min=90,score_teleport=90,team=blue] ~ ~ ~ kill @e[tag=portala,team=blue,r=3]


scoreboard players set @a[score_dropportal_min=3] dropportaltime 0
scoreboard players set @a[score_teleport_min=90] dropportal 0
scoreboard players set @a[score_teleport_min=90] teleport 0
scoreboard players tag @a[tag=portal] remove portal






#Bring Enemy

execute @a[score_dropheretime_min=1200,score_dropheretime=1200,tag=Mecha] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 1.00
execute @a[score_dropheretime_min=1200,score_dropheretime=1200,tag=Mecha] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 2.00
execute @a[score_dropheretime_min=1200,score_dropheretime=1200,tag=Mecha] ~ ~ ~ playsound minecraft:block.note.pling voice @a[r=0] ~ ~ ~ 100 0.00
tellraw @a[score_dropheretime_min=1200,score_dropheretime=1200,tag=Mecha] {"text":"<Silver Mecha> cout << ''Come here.. Fight me..'' << endl; "}




replaceitem entity @a[tag=Mecha,score_dropheretime_min=1200] slot.hotbar.3 minecraft:iron_block 1 0 {here:1b,HideFlags:1,display:{Name:"Come Here"},ench:[{id:0,lvl:1}]}
scoreboard players tag @a[tag=Mecha] add here {SelectedItem:{tag:{here:1b}}}
scoreboard players add @a[tag=Mecha] dropheretime 1
clear @a[tag=Mecha,score_dropheretime=1200] iron_block

execute @a[score_drophere_min=1,tag=here] ~ ~ ~ playsound minecraft:entity.endereye.death voice @a[r=4] ~ ~ ~ 10 0.50
execute @a[score_drophere_min=1,tag=here] ~ ~ ~ playsound minecraft:entity.endereye.death voice @a[r=4] ~ ~ ~ 10 1.00

execute @a[team=red,score_drophere_min=1,tag=here] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["herea"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"red"}
execute @a[team=blue,score_drophere_min=1,tag=here] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["herea"],Invisible:1,Invulnerable:1,NoBasePlate:1,Team:"blue"}

execute @e[tag=herea] ~ ~ ~ particle enchantmenttable ~ ~2 ~ 0 1 0 0.3 10 force
execute @e[tag=herea] ~ ~ ~ particle witchMagic ~ ~2 ~ 0 1 0 0.3 10 force

execute @a[team=red,score_drophere_min=1,tag=here] ~ ~ ~ scoreboard players tag @r[team=blue] add hereap
execute @a[team=blue,score_drophere_min=1,tag=here] ~ ~ ~ scoreboard players tag @r[team=red] add hereap

scoreboard players add @a[tag=hereap] dropheretp 1
effect @a[score_dropheretp_min=1] nausea 4 0 true
effect @a[score_dropheretp_min=1] slowness 1 100 true

scoreboard players add @e[tag=lockhere] lockherelife 1
execute @a[score_dropheretp_min=1,score_dropheretp=1] ~ ~ ~ summon armor_stand ~ ~ ~ {Tags:["lockhere"],Invisible:1,Invulnerable:1,NoBasePlate:1}
execute @e[tag=lockhere] ~ ~ ~ teleport @a[score_dropheretp_min=1] ~ ~ ~
kill @e[score_lockherelife_min=90]

tp @a[score_dropheretp_min=90,team=red] @e[tag=herea,team=blue]
tp @a[score_dropheretp_min=90,team=blue] @e[tag=herea,team=red]
execute @a[score_dropheretp_min=90,team=red] ~ ~ ~ kill @e[tag=herea,r=0,team=blue]
execute @a[score_dropheretp_min=90,team=blue] ~ ~ ~ kill @e[tag=herea,r=0,team=red]
scoreboard players tag @a[score_dropheretp_min=90] remove hereap
scoreboard players set @a[score_dropheretp_min=90] dropheretp 0



scoreboard players set @a[score_drophere_min=1] dropheretime 0
scoreboard players set @a[score_drophere_min=1] drophere 0
scoreboard players tag @a[tag=here] remove here











































# ON DEATH HEALTH

execute @a[score_DeathH_min=1] ~ ~ ~ detect ~ ~-1 ~ wool 14 effect @a[r=0] instant_health 1 100 true
execute @a[score_DeathH_min=1] ~ ~ ~ detect ~ ~-1 ~ wool 11 effect @a[r=0] instant_health 1 100 true
execute @a[score_DeathH_min=1] ~ ~ ~ detect ~ ~-1 ~ wool 14 scoreboard players set @a[r=0] DeathH 0
execute @a[score_DeathH_min=1] ~ ~ ~ detect ~ ~-1 ~ wool 11 scoreboard players set @a[r=0] DeathH 0


























# TDM Death

execute @a[team=blue,score_Death_min=1,tag=mode2p] ~ ~ ~ scoreboard players add RED SCORES 835
execute @a[team=red,score_Death_min=1,tag=mode2p] ~ ~ ~ scoreboard players add BLUE SCORES 835
scoreboard players set @a[score_Death_min=1] Death 0



#      C Resets




scoreboard players tag @a[tag=CMedic] add Medic
clear @a[tag=CMedic]
scoreboard players set @a[tag=CMedic] hauracool 10000
scoreboard players set @a[tag=CMedic] modshieldactive 10000
scoreboard players set @a[tag=CMedic] lifeviruscool 10000
scoreboard players set @a[tag=CMedic] mediculticharge 0
scoreboard players tag @a[tag=CMedic] remove Raurus
scoreboard players tag @a[tag=CMedic] remove Guardian
scoreboard players tag @a[tag=CMedic] remove Archer
scoreboard players tag @a[tag=CMedic] remove Assassin
scoreboard players tag @a[tag=CMedic] remove Frost
scoreboard players tag @a[tag=CMedic] remove Necromancer
scoreboard players tag @a[tag=CMedic] remove Jump
scoreboard players tag @a[tag=CMedic] remove Mecha
scoreboard players tag @a[tag=CMedic] remove CMedic


scoreboard players tag @a[tag=CAssassin] add Assassin
clear @a[tag=CAssassin]
scoreboard players set @a[tag=CAssassin] marktimer 10000
scoreboard players set @a[tag=CAssassin] clonetimer 10000
scoreboard players set @a[tag=CAssassin] assassincharge 0
scoreboard players tag @a[tag=CAssassin] remove Raurus
scoreboard players tag @a[tag=CAssassin] remove Guardian
scoreboard players tag @a[tag=CAssassin] remove Archer
scoreboard players tag @a[tag=CAssassin] remove Medic
scoreboard players tag @a[tag=CAssassin] remove Frost
scoreboard players tag @a[tag=CAssassin] remove Necromancer
scoreboard players tag @a[tag=CAssassin] remove Jump
scoreboard players tag @a[tag=CAssassin] remove Mecha
scoreboard players tag @a[tag=CAssassin] remove CAssassin


scoreboard players tag @a[tag=CRaurus] add Raurus
clear @a[tag=CRaurus]
scoreboard players set @a[tag=CRaurus] specialtimer1 10000
scoreboard players set @a[tag=CRaurus] acidtimer 10000
scoreboard players set @a[tag=CRaurus] speedappletimer 10000
scoreboard players set @a[tag=CRaurus] raurusulticharge 0
scoreboard players tag @a[tag=CRaurus] remove Assassin
scoreboard players tag @a[tag=CRaurus] remove Guardian
scoreboard players tag @a[tag=CRaurus] remove Archer
scoreboard players tag @a[tag=CRaurus] remove Medic
scoreboard players tag @a[tag=CRaurus] remove Frost
scoreboard players tag @a[tag=CRaurus] remove Necromancer
scoreboard players tag @a[tag=CRaurus] remove Jump
scoreboard players tag @a[tag=CRaurus] remove Mecha
scoreboard players tag @a[tag=CRaurus] remove CRaurus


scoreboard players tag @a[tag=CGuardian] add Guardian
clear @a[tag=CGuardian]
scoreboard players set @a[tag=CGuardian] goldaxetimer 10000
scoreboard players set @a[tag=CGuardian] dropminionstimer 10000
scoreboard players set @a[tag=CGuardian] guardulticharge 0
scoreboard players tag @a[tag=CGuardian] remove Assassin
scoreboard players tag @a[tag=CGuardian] remove Raurus
scoreboard players tag @a[tag=CGuardian] remove Archer
scoreboard players tag @a[tag=CGuardian] remove Medic
scoreboard players tag @a[tag=CGuardian] remove Frost
scoreboard players tag @a[tag=CGuardian] remove Necromancer
scoreboard players tag @a[tag=CGuardian] remove Jump
scoreboard players tag @a[tag=CGuardian] remove Mecha
scoreboard players tag @a[tag=CGuardian] remove CGuardian


scoreboard players tag @a[tag=CArcher] add Archer
clear @a[tag=CArcher]
scoreboard players set @a[tag=CArcher] drinkpotiontimer 10000
scoreboard players set @a[tag=CArcher] archerulticharge 0
scoreboard players tag @a[tag=CArcher] remove Assassin
scoreboard players tag @a[tag=CArcher] remove Raurus
scoreboard players tag @a[tag=CArcher] remove Guardian
scoreboard players tag @a[tag=CArcher] remove Medic
scoreboard players tag @a[tag=CArcher] remove Frost
scoreboard players tag @a[tag=CArcher] remove Necromancer
scoreboard players tag @a[tag=CArcher] remove Jump
scoreboard players tag @a[tag=CArcher] remove Mecha
scoreboard players tag @a[tag=CArcher] remove CArcher

scoreboard players tag @a[tag=CFrost] add Frost
clear @a[tag=CFrost]
scoreboard players set @a[tag=CFrost] AvalancheCool 10000
scoreboard players set @a[tag=CFrost] CryoPlasmaCool 10000
scoreboard players set @a[tag=CFrost] frostulticharge 0
scoreboard players tag @a[tag=CFrost] remove Assassin
scoreboard players tag @a[tag=CFrost] remove Raurus
scoreboard players tag @a[tag=CFrost] remove Guardian
scoreboard players tag @a[tag=CFrost] remove Medic
scoreboard players tag @a[tag=CFrost] remove Archer
scoreboard players tag @a[tag=CFrost] remove Necromancer
scoreboard players tag @a[tag=CFrost] remove Jump
scoreboard players tag @a[tag=CFrost] remove Mecha
scoreboard players tag @a[tag=CFrost] remove CFrost

scoreboard players tag @a[tag=CNecromancer] add Necromancer
clear @a[tag=CNecromancer]
scoreboard players set @a[tag=CNecromancer] dropbonecool 10000
scoreboard players set @a[tag=CNecromancer] dropsaddlecool 10000
scoreboard players set @a[tag=CNecromancer] necroulticharge 0
scoreboard players tag @a[tag=CNecromancer] remove Assassin
scoreboard players tag @a[tag=CNecromancer] remove Raurus
scoreboard players tag @a[tag=CNecromancer] remove Guardian
scoreboard players tag @a[tag=CNecromancer] remove Medic
scoreboard players tag @a[tag=CNecromancer] remove Archer
scoreboard players tag @a[tag=CNecromancer] remove Frost
scoreboard players tag @a[tag=CNecromancer] remove Jump
scoreboard players tag @a[tag=CNecromancer] remove Mecha
scoreboard players tag @a[tag=CNecromancer] remove CNecromancer


scoreboard players tag @a[tag=CJump] add Jump
clear @a[tag=CJump]
scoreboard players set @a[tag=CJump] groundpoundtime 10000
scoreboard players set @a[tag=CJump] slimetime 10000
scoreboard players set @a[tag=CJump] bouncertime 0
scoreboard players tag @a[tag=CJump] remove Assassin
scoreboard players tag @a[tag=CJump] remove Raurus
scoreboard players tag @a[tag=CJump] remove Guardian
scoreboard players tag @a[tag=CJump] remove Medic
scoreboard players tag @a[tag=CJump] remove Archer
scoreboard players tag @a[tag=CJump] remove Frost
scoreboard players tag @a[tag=CJump] remove Necromancer
scoreboard players tag @a[tag=CJump] remove Mecha
scoreboard players tag @a[tag=CJump] remove CJump



scoreboard players tag @a[tag=CMecha] add Mecha
clear @a[tag=CMecha]
scoreboard players set @a[tag=CMecha] dropfangstime 10000
scoreboard players set @a[tag=CMecha] dropportaltime 10000
scoreboard players set @a[tag=CMecha] dropportal 0
scoreboard players set @a[tag=CMecha] dropheretime 0
scoreboard players tag @a[tag=CMecha] remove Assassin
scoreboard players tag @a[tag=CMecha] remove Raurus
scoreboard players tag @a[tag=CMecha] remove Guardian
scoreboard players tag @a[tag=CMecha] remove Medic
scoreboard players tag @a[tag=CMecha] remove Archer
scoreboard players tag @a[tag=CMecha] remove Frost
scoreboard players tag @a[tag=CMecha] remove Necromancer
scoreboard players tag @a[tag=CMecha] remove Jump
scoreboard players tag @a[tag=CMecha] remove CMecha
























































# BOOKS
replaceitem entity @a[tag=Raurus] slot.hotbar.8 minecraft:written_book 1 0 {display:{Name:"HOW TO USE"},title:"HOW TO USE",author:"Mega Capturers",generation:0,pages:["{\"text\":\"Raurus:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Raurus is a Mage class that focuses on speed and damage, having slightly lower health\",\"color\":\"black\"}]}","{\"text\":\"Poison Blade:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"The Poison Blade is a low damage dealing sword that leaves the enemy poisoned.\",\"color\":\"black\"}]}","{\"text\":\"Acid:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Acid is used by right-clicking it while it's selected, it works as a regular potion, and leaves the enemy poisoned.\",\"color\":\"black\"}]}","{\"text\":\"Speed Stone:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"The speed stone can be activated by dropping it, this magical stone puts the user's speed at overclock\",\"color\":\"black\"}]}","{\"text\":\"Golden Apple:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"If you eat this apple (holding right-click) you will gain a health boost, speed, regeneration and strength, and all the enemies around you will be paralysed\",\"color\":\"black\"}]}","{\"text\":\"Ultimate - Magnetic Pulse:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"This ability is obtained by dealing much damage in a match. With Magnetic Pulse you can shoot a beam of eletromagnetic energy that kills any enemy close to it. Only one use.\",\"color\":\"black\"}]}","{\"text\":\"Passive Ability - Speed up:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"The more Raurus runs, the greater his speed becomes.\",\"color\":\"black\"}]}"]}

replaceitem entity @a[tag=Guardian] slot.hotbar.8 minecraft:written_book 1 0 {display:{Name:"HOW TO USE"},title:"HOW TO USE",author:"Mega Capturers",generation:0,pages:["{\"text\":\"Guardian:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Guardian is a Tank/Fighter class focused around minion spawning and tanking damage\",\"color\":\"black\"}]}","{\"text\":\"Heavy Axe:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Guardian's signature weapon. Deals high damage\",\"color\":\"black\"}]}","{\"text\":\"Golden Shield:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping this will make you invincible for a bit, however, you cannot move nor attack your enemy, only jump. You also re-gain some health.\",\"color\":\"black\"}]}","{\"text\":\"Golden Minions:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"This ability is used by dropping it, and it's ability is to spawn 3 Golden Minions that pursue your enemies. Great for tower defense\",\"color\":\"black\"}]}","{\"text\":\"Ultimate - Mega Minion:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"When the ultimate is dropped, it spawns a high damage dealing, but slow minion with tremendous health\",\"color\":\"black\"}]}"]}

replaceitem entity @a[tag=Archer] slot.hotbar.8 minecraft:written_book 1 0 {display:{Name:"HOW TO USE"},title:"HOW TO USE",author:"Mega Capturers",generation:0,pages:["{\"text\":\"Archer:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Archer is a purely range oriented class, simple, yet effective\",\"color\":\"black\"}]}","{\"text\":\"Archer's Bow:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"This Bow has EXTREME range and very high damage, it is a weapon of destruction in the hands of a professional. \",\"color\":\"black\"}]}","{\"text\":\"Archer's Shard:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"This low damage dealing knife is just a last resource to when your bow can't help (example: killing Bouncy Bounce Minion)\",\"color\":\"black\"}]}","{\"text\":\"Heal potion:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Drink this potion (hold right click) to regain some health\",\"color\":\"black\"}]}","{\"text\":\"Ultimate - Withered Arrow:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"When this item is dropped, 3 withered arrows fall upon all the enemy players, and all their positions are revealed through glowing.\",\"color\":\"black\"}]}"]}

replaceitem entity @a[tag=Medic] slot.hotbar.8 minecraft:written_book 1 0 {display:{Name:"HOW TO USE"},title:"HOW TO USE",author:"Mega Capturers",generation:0,pages:["{\"text\":\"Ion:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Ion is a pure support class with healing habilities and some (yet low) combat potential.\",\"color\":\"black\"}]}","{\"text\":\"Wooden Sword:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"A weak, rudimentary sword to defend against enemies\",\"color\":\"black\"}]}","{\"text\":\"Heal Aura Program:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping this item will create a healing aura that will heal allies, including yourself\",\"color\":\"black\"}]}","{\"text\":\"Modular Shield:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping this will grant you invincibility, without taking away your attacks or movement.\",\"color\":\"black\"}]}","{\"text\":\"Life Leaker Virus:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"When this is dropped, all the enemies around you get damaged, and you get some health\",\"color\":\"black\"}]}","{\"text\":\"Ultimate - Nano Reconstruction:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping this apple will heal all allies to their maximum health.\",\"color\":\"black\"}]}"]}

replaceitem entity @a[tag=Frost] slot.hotbar.8 minecraft:written_book 1 0 {display:{Name:"HOW TO USE"},title:"HOW TO USE",author:"Mega Capturers",generation:0,pages:["{\"text\":\"Frost:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Frost is a Fighter class that is more focused on croud controlling and defense.\",\"color\":\"black\"}]}","{\"text\":\"Frozen Battle Axe:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Medium damage dealing axe.\",\"color\":\"black\"}]}","{\"text\":\"Avalanche:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping Avalanche will throw a wave of snow into any direction, that pushes the enemy along it's path and deals damage and slowness.\",\"color\":\"black\"}]}","{\"text\":\"Cryogenic Plasma Explosion:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping this will freeze everyone around you, grant you speed and recover some of your health, at the cost of depriving you from attacking during the freeze.\",\"color\":\"black\"}]}","{\"text\":\"Ultimate - Ice Aura Totem:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"When Ice Aura Totem is dropped, an ice humanoid is spawned, that slows down everyone around it.\",\"color\":\"black\"}]}"]}

replaceitem entity @a[tag=Assassin] slot.hotbar.8 minecraft:written_book 1 0 {display:{Name:"HOW TO USE"},title:"HOW TO USE",author:"Mega Capturers",generation:0,pages:["{\"text\":\"Shadow Assassin:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Shadow Assassin is, as the name says, an assassin class that focuses on ambushes.\",\"color\":\"black\"}]}","{\"text\":\"Shadow Sword:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"EXTREME damage dealing sword.\",\"color\":\"black\"}]}","{\"text\":\"Shadow Clone:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping the Shadow Clone will give you a regen. boost, spawn a clone of you and teleport you to a nearby location. If you are under a ceiling, a house per say, you will be teleported to the roof.\",\"color\":\"black\"}]}","{\"text\":\"Death Mark:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"This ability, activated by dropping it, will teleport you to a nearby player (radius of about 6 blocks) and deal tremendous damage.\",\"color\":\"black\"}]}","{\"text\":\"Ultimate - Death Sentence:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Like Death Mark, when you drop this, you will be teleported to a nearby player (same range as Death Mark), but this time, damage is greater and instead of 1 teleport there are FIVE\",\"color\":\"black\"}]}"]}

replaceitem entity @a[tag=Jump] slot.hotbar.8 minecraft:written_book 1 0 {display:{Name:"HOW TO USE"},title:"HOW TO USE",author:"Mega Capturers",generation:0,pages:["{\"text\":\"Captain Slime:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Captain Slime is a Assassin/Mage class centered around mobility (high jumps) and strategical approaches\",\"color\":\"black\"}]}","{\"text\":\"Knockback Shovel:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"This extremely serious weapon deals low damage, but has a very high knockback\",\"color\":\"black\"}]}","{\"text\":\"Groundpound:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping Groundpound will make you jump onto the air, and drop like an anvil, creating a shockwave that stuns and damages enemies below.\",\"color\":\"black\"}]}","{\"text\":\"Sticky Fingers:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"When Sticky Fingers are dropped, these two seemingly harmless bouncy boys will chase the enemy, and if they get close enough, they will explode. (Name is not a JoJo reference *cough cough*)\",\"color\":\"black\"}]}","{\"text\":\"Ultimate - Bouncy Bounce:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Bouncy Bounce, also known as No U, can be activated when dropped, and will spawn a minion that will turn any enemy minion into your team, will block arrows and other attacks.\",\"color\":\"black\"}]}","{\"text\":\"Passive Ability - Shift Jump:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"If you hold shift, you will jump higher, the longer you hold the higher you jump (You can know when you reach maximum when it stops beeping)\",\"color\":\"black\"}]}"]}

replaceitem entity @a[tag=Mecha] slot.hotbar.8 minecraft:written_book 1 0 {display:{Name:"HOW TO USE"},title:"HOW TO USE",author:"Mega Capturers",generation:0,pages:["{\"text\":\"Silver Mecha:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Silver Mecha is a pure Tank class with TONS of health and low speed, but with good mobility abilities\",\"color\":\"black\"}]}","{\"text\":\"Silver Scythe:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Silver Scythe is a medium dealing damage weapon\",\"color\":\"black\"}]}","{\"text\":\"Metal Fangs:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping this will spawn a line of fangs that move torwards the direction you're pointing. If they get close to an enemy, they will disperse.\",\"color\":\"black\"}]}","{\"text\":\"Portal:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping this will spawn a portal. Dropping it a second time will begin a process of teleportation. Being attacked will cancel the teleport\",\"color\":\"black\"}]}","{\"text\":\"Ultimate - Come Here:\\n\\n\",\"color\":\"green\",\"extra\":[{\"text\":\"Dropping this ability will spawn a portal, and a random enemy will teleport into it, giving you the possibility to attack.\",\"color\":\"black\"}]}"]}





#                                            Drop Reseter

scoreboard players set @a[score_dropdye_min=1] dropdye 0
scoreboard players set @a[score_dropapple1_min=1] dropapple1 0















































































