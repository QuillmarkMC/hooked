#healing fountain
execute at @e[type=marker,tag=forestHealingFountain,limit=1] as @a[gamemode=adventure,distance=..8] run function pudge:game/maps/forest/heal_tick

#river items
function pudge:game/maps/forest/river/tick