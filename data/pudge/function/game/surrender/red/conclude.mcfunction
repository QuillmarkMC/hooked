scoreboard players set $RedSurrender surrender 0
#check if enough votes were obtained
execute if score $RedVotes surrender = $RedVotesNeeded surrender run scoreboard players set $RedSurrender surrender 1

#tellraw depending on outcome
execute if score $RedSurrender surrender matches 0 run tellraw @a[team=red] [{"text": ""},{"text":"[!] ","color":"#9E01FE","bold": true},{"translate":"text.game.surrender.fail"}]
execute if score $RedSurrender surrender matches 1 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"translate":"text.game.surrender.red.1"},{"translate": "text.game.surrender.red.2","color": "red"},{"translate": "text.game.surrender.red.3"}]

#reset trigger if failure
scoreboard players reset @a[team=red] surrender
scoreboard players set $RedVotes surrender 0
execute if score $RedSurrender surrender matches 0 run schedule function pudge:game/surrender/red/enable 60s
#end game if success
execute if score $RedSurrender surrender matches 1 run function pudge:game/postgame/blue_win