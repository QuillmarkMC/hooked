execute if score $LockTeams lobbyvar matches 1 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.lobby.team.change.error","color":"white","bold": false}]
execute unless score $LockTeams lobbyvar matches 1 run function pudge:lobby/teams/random/join_random
advancement revoke @s only pudge:team/join_random