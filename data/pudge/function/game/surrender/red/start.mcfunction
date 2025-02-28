#get number of players on the team, and subtract 1 to get number of players needed to surrender (exception for teams of size 1)
execute store result score $RedVotesNeeded surrender if entity @a[team=red]
execute unless score $RedVotesNeeded surrender matches 1 run scoreboard players remove $RedVotesNeeded surrender 1

#tellraw
execute unless score $RedVotesNeeded surrender matches 1 run tellraw @a[team=red] [{"text": ""},{"text":"[!] ","color":"#9E01FE","bold": true},{"selector":"@s"},{"translate":"text.game.surrender.start.1"},{"translate":"text.game.surrender.start.2","color":"yellow","underlined": true,"click_event": {"action":"run_command","command": "/trigger surrender"},"hover_event":{"action":"show_text","value":[{"translate":"text.game.surrender.start.3","italic":true,"color":"gray"}]}},{"translate": "text.game.surrender.start.4"},{"score":{"name":"$RedVotesNeeded","objective":"surrender"},"color": "green"},{"translate": "text.game.surrender.start.5","color": "green"},{"translate": "text.game.surrender.start.6"}]

#schedule conclusion of surrender vote
schedule function pudge:game/surrender/red/conclude 30s

#count first vote
function pudge:game/surrender/red/vote