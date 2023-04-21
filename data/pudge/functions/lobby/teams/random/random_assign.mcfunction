#assign player to the team with less players, or a random team if they are equal sizes
scoreboard players set #Random teamID -1
execute if score $RedPlayerCountLobby teamID > $BluePlayerCountLobby teamID run scoreboard players set #Random teamID 0
execute if score $RedPlayerCountLobby teamID < $BluePlayerCountLobby teamID run scoreboard players set #Random teamID 1
execute if score #Random teamID matches -1 store result score #Random teamID if predicate pudge:50_percent

execute if score #Random teamID matches 0 run function pudge:lobby/teams/join_blue
execute if score #Random teamID matches 1 run function pudge:lobby/teams/join_red
execute if score #Random teamID matches 0 run scoreboard players add $BluePlayerCountLobby teamID 1
execute if score #Random teamID matches 1 run scoreboard players add $RedPlayerCountLobby teamID 1