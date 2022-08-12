#handle leavers
execute as @a[scores={leave=1..}] run function pudge:general/player/check_dc

#handle player resets
execute as @a[tag=!initSpawned] run tag @s add playerReset
execute as @a if entity @s[tag=playerReset] run function pudge:general/player/reset

#health
execute as @a run function pudge:general/health/display
execute as @a[scores={health=..0}] run kill @s
#handle death function
#scoreboard players operation @s health = $MaxHealth health
#scoreboard players set @s death 0

#States: 0 = lobby, 1 = team select, 2 = game
execute if score $State var matches 0 run function pudge:lobby/tick
execute if score $State var matches 1 run function pudge:team_select/tick
execute if score $State var matches 2 run function pudge:game/tick

#dropped items
kill @e[type=item]

#debug tool: show location of all Marker entities
execute if score $Debug var matches 2.. at @e[type=marker] run particle glow ~ ~1 ~ 0.1 0.3 0.1 0 10 force