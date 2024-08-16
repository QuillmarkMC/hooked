tellraw @a [{"text": "<","color": "white"},{"selector":"@s"},{"text": "> ","color": "white"},{"translate":"text.lobby.settings.start.begin","color":"white"}]
tellraw @a [{"translate":"text.lobby.settings.start.cancel.prompt.1","color":"red","bold": true,"clickEvent": {"action":"run_command","value": "/trigger lobbysigns set 2"},"hoverEvent":{"action":"show_text","contents":[{"translate":"text.lobby.settings.start.cancel.prompt.2","italic":true,"color":"gray"}]}}]
execute as @a at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 1 0.6
scoreboard players set $Count countdown 11
scoreboard players set $PauseTips countdown 1
scoreboard players set $LockTeams lobbyvar 1
schedule function pudge:lobby/start_countdown/countdown 1s