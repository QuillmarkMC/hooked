#called by a player who voted to skip the current song
scoreboard players add $SkipVotes music 1
tellraw @a [{"text": "[♪] ","color": "light_purple","bold": false},{"text":"","extra":[{"selector":"@s"}],"bold": false},{"text": " has voted to skip the current song! ","color": "white","bold": false},{"text": "(","color": "gray","bold": false},{"score":{"name":"$SkipVotes","objective":"music"},"color": "gray"},{"text": "/","color": "gray","bold": false},{"score":{"name":"$SkipVotesNeeded","objective":"music"},"color": "gray"},{"text": ")","color": "gray","bold": false}]

scoreboard players reset @s skip
execute if score $SkipVotes music >= $SkipVotesNeeded music run function pudge:game/music/skip/skip_song