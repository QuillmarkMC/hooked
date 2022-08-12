schedule clear pudge:team_select/try_end_team
execute as @a[tag=CFPlaying,team=,sort=random] run function pudge:team_select/auto_join_team
scoreboard objectives remove temp_teams
#execute as @a[team=red] run tag @s add CFInGame
#execute as @a[team=blue] run tag @s add CFInGame
#execute as @a[team=spectator] run tag @s add CFSpectating
kill @e[type=marker,tag=tsMarker]