schedule clear pudge:team_select/try_end_team
execute as @a[tag=CFPlaying,team=,sort=random] run function pudge:team_select/auto_join_team
scoreboard objectives remove temp_teams
kill @e[type=marker,tag=tsMarker]