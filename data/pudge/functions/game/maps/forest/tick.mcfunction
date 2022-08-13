#healing fountain
execute at @e[type=marker,tag=forestHealingFountain,limit=1] as @a[gamemode=adventure,distance=..8] run scoreboard players remove @s healthRegen 4
#execute at @e[type=marker,tag=forestHealingFountain,limit=1] run particle dust 1 0.514 0.976 1 ~ ~ ~ 3.5 2.1 3.5 0 50 force
execute as @e[type=marker,tag=forestHealingFountainParticle,limit=1] run function pudge:game/maps/forest/fountain_particles
#river items