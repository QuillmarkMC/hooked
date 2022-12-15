#get number of players on the team, and subtract 1 to get number of players needed to surrender (exception for teams of size 1)
execute store result score $RedVotesNeeded surrender if entity @a[team=red]
execute unless score $RedVotesNeeded surrender matches 1 run scoreboard players remove $RedVotesNeeded surrender 1

#tellraw
execute unless score $RedVotesNeeded surrender matches 1 run tellraw @a[team=red] [{"text": ""},{"text":"[!] ","color":"#9E01FE","bold": true},{"selector":"@s"},{"text":" has initiated a surrender vote. "},{"text":"Click here","color":"yellow","underlined": true,"clickEvent": {"action":"run_command","value": "/trigger surrender"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to vote to surrender","italic":true,"color":"gray"}]}},{"text": " to vote to surrender. "},{"score":{"name":"$RedVotesNeeded","objective":"surrender"},"color": "green"},{"text": " votes ","color": "green"},{"text": "in total are needed to surrender."}]

#schedule conclusion of surrender vote
schedule function pudge:game/surrender/red/conclude 30s

#count first vote
function pudge:game/surrender/red/vote