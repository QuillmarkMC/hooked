team join spectator @a[team=]
function pudge:lobby/teams/random/assign_random_teams
schedule function pudge:game/load 50t
scoreboard players set $Count countdown -1

title @a times 20 40 20
title @a title {"text":"\uE006"}