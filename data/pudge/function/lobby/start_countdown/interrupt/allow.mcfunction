schedule clear pudge:lobby/start_countdown/countdown
scoreboard players set $Count countdown -1
scoreboard players set $LockTeams lobbyvar 0
tellraw @a [{"text": "<","color": "white"},{"selector":"@s"},{"text": "> ","color": "white"},{"translate":"text.lobby.settings.start.cancel","color":"white"}]