#healing fountain
execute at @e[type=marker,tag=forestHealingFountain,limit=1] as @a[gamemode=adventure,distance=..8] run scoreboard players remove @s healthRegen 4

#river items