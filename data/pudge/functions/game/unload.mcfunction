kill @e[type=marker,tag=gameMarker]
kill @e[type=armor_stand,tag=deathSpectate]
tag @a add playerReset
bossbar set score players
#schedule clear pudge:game/inventory/queue_update

forceload remove 22 25 89 23