scoreboard players add $RedVotes surrender 1
tellraw @a[team=red] [{"text": ""},{"text":"[!] ","color":"#9E01FE","bold": true},{"selector":"@s"},{"text":" has voted to surrender. "},{"text": "(","color": "gray"},{"score":{"name":"$RedVotes","objective":"surrender"},"color": "gray"},{"text": "/","color": "gray"},{"score":{"name":"$RedVotesNeeded","objective":"surrender"},"color": "gray"},{"text": ")","color": "gray"}]

execute if score $RedVotes surrender = $RedVotesNeeded surrender run schedule function pudge:game/surrender/red/conclude 1t replace