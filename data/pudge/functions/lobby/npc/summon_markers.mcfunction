#summon npcs and markers in lobby
#kill existing npcs first
function pudge:lobby/npc/kill_markers
#prevent this function from running again
scoreboard players set $NPCLoad lobbyvar 1

#marker used to check when entities load
execute unless entity @e[type=marker,tag=NPCLoadCheck] run summon marker 223.0 200.0 -33.0 {Tags:["NPCLoadCheck"]}
#marker for spawn location
summon marker 203.0 64 -58.5 {Tags:["lobbySpawn","lobbyMarker"],Rotation:[0.0f,12.0f]}

#team select npcs
#blue
summon villager 215.0 63.0 -53.0 {Tags:["teamSelect","lobbyVillager","blueTeamSelect"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:taiga"},Rotation:[90.0f,0.0f]}
execute at @e[type=villager,tag=blueTeamSelect,limit=1] run summon minecraft:armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:"{\"text\":\"Join Blue Team!\",\"color\":\"blue\"}",CustomNameVisible:1b,Tags:["teamSelect"]}
#red
summon villager 190.0 63.0 -53.0 {Tags:["teamSelect","lobbyVillager","redTeamSelect"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:taiga"},Rotation:[-90.0f,0.0f]}
execute at @e[type=villager,tag=redTeamSelect,limit=1] run summon minecraft:armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:"{\"text\":\"Join Red Team!\",\"color\":\"red\"}",CustomNameVisible:1b,Tags:["teamSelect"]}
