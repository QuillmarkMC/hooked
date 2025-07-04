#assign entities an id (place before all other logic)
function entity_hit_matching:tick

#handle leavers
execute as @a[scores={leave=1..}] run function pudge:general/player/check_dc

#handle player resets
execute as @a[tag=!initSpawned] run tag @s add playerReset
execute as @a[tag=playerReset] run function pudge:general/player/reset

#States: 0 = lobby, 2 = game
execute if score $State var matches 0 run function pudge:lobby/tick
execute if score $State var matches 2 run function pudge:game/tick

#health
function pudge:general/health/update

#dropped items
kill @e[type=item,tag=!riverPower]

#debug tool: show location of all Marker entities
execute if score $Debug var matches 2.. at @e[type=marker] run particle glow ~ ~1 ~ 0.1 0.3 0.1 0 10 force