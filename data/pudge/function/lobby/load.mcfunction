#change state
function pudge:general/change_state
#set state
scoreboard players set $State var 0
#summon entities
function pudge:lobby/npc/load_chunks

#reset entityid
#scoreboard players reset * entityid
#scoreboard players set $highest entityid 0

#unlock teams
scoreboard players set $LockTeams lobbyvar 0
#unlock settings
scoreboard players set $Locked lobbysigns 0
#render settings
function pudge:lobby/settings/display/update
#place information board
function pudge:lobby/information/display