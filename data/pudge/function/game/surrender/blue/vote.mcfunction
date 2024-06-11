scoreboard players add $BlueVotes surrender 1
tellraw @a[team=blue] [{"text": ""},{"text":"[!] ","color":"#9E01FE","bold": true},{"selector":"@s"},{"text":" has voted to surrender. "},{"text": "(","color": "gray"},{"score":{"name":"$BlueVotes","objective":"surrender"},"color": "gray"},{"text": "/","color": "gray"},{"score":{"name":"$BlueVotesNeeded","objective":"surrender"},"color": "gray"},{"text": ")","color": "gray"}]

execute if score $BlueVotes surrender = $BlueVotesNeeded surrender run schedule function pudge:game/surrender/blue/conclude 1t replace