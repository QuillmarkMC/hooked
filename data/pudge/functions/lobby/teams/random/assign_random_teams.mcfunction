execute store result score $RedPlayerCountLobby teamID if entity @a[team=red]
execute store result score $BluePlayerCountLobby teamID if entity @a[team=blue]
execute as @a[team=random] run function pudge:lobby/teams/random/random_assign