#summon npcs and markers in lobby
#kill existing npcs first
function pudge:lobby/npc/kill_markers

#player spawn
summon marker 202.5 64.0 -58.5 {Tags:["lobbySpawn","lobbyMarker"],Rotation:[180.0f,6.5f]}

#team select npcs
#blue
summon villager 215.0 63.0 -53.0 {Tags:["teamSelect","lobbyVillager","blueTeamSelect"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:taiga"},Rotation:[90.0f,0.0f]}
execute at @e[type=villager,tag=blueTeamSelect,limit=1] run summon minecraft:armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:{"translate":"text.lobby.teams.npc.blue","color":"blue"},CustomNameVisible:1b,Tags:["teamSelect"],equipment:{}}
#red
summon villager 190.0 63.0 -53.0 {Tags:["teamSelect","lobbyVillager","redTeamSelect"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:taiga"},Rotation:[-90.0f,0.0f]}
execute at @e[type=villager,tag=redTeamSelect,limit=1] run summon minecraft:armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:{"translate":"text.lobby.teams.npc.red","color":"red"},CustomNameVisible:1b,Tags:["teamSelect"],equipment:{}}
#random
summon villager 202.5 63 -48.5 {Tags:["teamSelect","lobbyVillager","randomTeamSelect"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,VillagerData:{level:99,profession:"minecraft:fletcher",type:"minecraft:taiga"},Rotation:[180.0f,0.0f]}
execute at @e[type=villager,tag=randomTeamSelect,limit=1] run summon minecraft:armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:{"translate":"text.lobby.teams.npc.random","color":"light_purple"},CustomNameVisible:1b,Tags:["teamSelect"],equipment:{}}

#redmage credit
summon interaction 208.5 69.0 -30.5 {width:0.75f,height:0.51f,response:true,Tags:["redmageCredits"]}
setblock 208 69 -31 air
setblock 208 69 -31 player_head[rotation=5]{profile:{name:"Eikinskialdr"}}

function pudge:lobby/npc/unload_chunks