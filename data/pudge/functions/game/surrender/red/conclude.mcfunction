scoreboard players set $RedSurrender surrender 0
#check if enough votes were obtained
execute if score $RedVotes surrender = $RedVotesNeeded surrender run scoreboard players set $RedSurrender surrender 1

#tellraw depending on outcome
execute if score $RedSurrender surrender matches 0 run tellraw @a[team=red] [{"text": ""},{"text":"[!] ","color":"#9E01FE","bold": true},{"text":"The surrender vote has failed."}]
execute if score $RedSurrender surrender matches 1 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The "},{"text": "Red Team","color": "red"},{"text": " has voted to surrender."}]

#reset trigger if failure
scoreboard players reset @a[team=red] surrender
execute if score $RedSurrender surrender matches 0 run schedule function pudge:game/surrender/red/enable 60s
#end game if success
execute if score $RedSurrender surrender matches 1 run function pudge:game/postgame/blue_win