#healing fountain
execute at @e[type=marker,tag=forestHealingFountain,limit=1] as @a[gamemode=adventure] run scoreboard players remove @s healthRegen 4
execute at @e[type=marker,tag=forestHealingFountain,limit=1] run particle dust 1 0.514 0.976 1 ~ ~ ~ 8 5 8 0 100 force
#river items