#healing fountain
execute at @e[type=marker,tag=forestHealingFountain,limit=1] as @a[gamemode=adventure] run scoreboard players remove @s healthRegen 4
execute at @e[type=marker,tag=forestHealingFountain,limit=1] run particle dust 1 0.514 0.976 1 ~ ~ ~ 3.8 2.3 3.8 0 50 force
#river items