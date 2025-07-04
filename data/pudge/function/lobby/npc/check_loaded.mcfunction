#called every tick after a lobby load, check to make sure all chunks with entities are loaded before killing/summoning new ones
scoreboard players set $CheckLoaded lobbyvar 1

#blue team
execute unless loaded 213 60 -53 run scoreboard players set $CheckLoaded lobbyvar 0
#red team
execute unless loaded 190 60 -53 run scoreboard players set $CheckLoaded lobbyvar 0
#redmage credits
execute unless loaded 209 60 -30 run scoreboard players set $CheckLoaded lobbyvar 0
#spawn and random team
execute unless loaded 199 60 -56 run scoreboard players set $CheckLoaded lobbyvar 0

execute if score $CheckLoaded lobbyvar matches 0 run schedule function pudge:lobby/npc/check_loaded 1t
execute if score $CheckLoaded lobbyvar matches 1 run function pudge:lobby/npc/summon_markers