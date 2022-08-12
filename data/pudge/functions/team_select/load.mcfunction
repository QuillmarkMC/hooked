#change state
function pudge:general/change_state
#set state
scoreboard players set $State var 1
#tp all players to team select room
summon marker -5.0 -60 21.0 {Tags:["tsSpawn","tsMarker"],Rotation:[90.0f,10.0f]}
tp @a @e[type=marker,tag=tsSpawn,limit=1]
#tellraw or title telling players to choose team
tellraw @a {"text": "Move to an area to select a team!","color": "green"}
#random
scoreboard objectives add temp_teams dummy
scoreboard players set $tick_teams temp_teams 1
team leave @a
#init
schedule function pudge:team_select/try_end_team 10s