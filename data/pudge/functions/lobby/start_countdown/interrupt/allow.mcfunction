schedule clear pudge:lobby/start_countdown/countdown
scoreboard players set $Count countdown -1
scoreboard players set $LockTeams lobbyvar 0
scoreboard players reset $PauseTips countdown
tellraw @a [{"text": "<","color": "white"},{"selector":"@s"},{"text": ">","color": "white"},{"text":" Start sequence cancelled!","color":"white"}]