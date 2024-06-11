#called when a player runs /trigger surrender
#if surrender vote has already started
execute if entity @s[team=red] if score $RedVotes surrender matches 1.. run function pudge:game/surrender/red/vote
execute if entity @s[team=blue] if score $BlueVotes surrender matches 1.. run function pudge:game/surrender/blue/vote
#if new vote needs to be started
execute if entity @s[team=red] unless score $RedVotes surrender matches 1.. run function pudge:game/surrender/red/start
execute if entity @s[team=blue] unless score $BlueVotes surrender matches 1.. run function pudge:game/surrender/blue/start

scoreboard players reset @s surrender