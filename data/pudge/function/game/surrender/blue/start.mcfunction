#get number of players on the team, and subtract 1 to get number of players needed to surrender (exception for teams of size 1)
execute store result score $BlueVotesNeeded surrender if entity @a[team=blue]
execute unless score $BlueVotesNeeded surrender matches 1 run scoreboard players remove $BlueVotesNeeded surrender 1

#tellraw
execute unless score $BlueVotesNeeded surrender matches 1 run tellraw @a[team=blue] [{"text": ""},{"text":"[!] ","color":"#9E01FE","bold": true},{"selector":"@s"},{"translate":"text.game.surrender.start.1"},{"translate":"text.game.surrender.start.2","color":"yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger surrender"},"hoverEvent":{"action":"show_text","contents":[{"translate":"text.game.surrender.start.3","italic":true,"color":"gray"}]}},{"translate": "text.game.surrender.start.4"},{"score":{"name":"$BlueVotesNeeded","objective":"surrender"},"color": "green"},{"translate": "text.game.surrender.start.5","color": "green"},{"translate": "text.game.surrender.start.6"}]

#schedule conclusion of surrender vote
schedule function pudge:game/surrender/blue/conclude 30s

#count first vote
function pudge:game/surrender/blue/vote