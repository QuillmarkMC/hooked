execute store result score $red_num temp_teams if entity @a[team=red]
execute store result score $blue_num temp_teams if entity @a[team=blue]
scoreboard players operation $team_dif temp_teams = $red_num temp_teams
scoreboard players operation $team_dif temp_teams -= $blue_num temp_teams

scoreboard players add $Count temp_teams 1
scoreboard players set $CountNeutralPlayers temp_teams 0
execute as @a[team=,gamemode=adventure] run scoreboard players add $CountNeutralPlayers temp_teams 1
execute if score $Count temp_teams matches 4.. run scoreboard players set $CountNeutralPlayers temp_teams -1

schedule function pudge:team_select/try_end_team 15s replace
execute if score $team_dif temp_teams matches -1..1 unless score $CountNeutralPlayers temp_teams matches 2.. run function pudge:game/load
execute if score $TimerExtensionMessage temp_teams matches 1 run tellraw @a [{"text":"[","color": "white"},{"text":"!","color": "dark_gray"},{"text":"] Teams unbalanced. Adding 15 seconds to timer.","color":"white"}]
scoreboard players set $TimerExtensionMessage temp_teams 1