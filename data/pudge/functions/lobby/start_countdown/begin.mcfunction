tellraw @a [{"text": "<","color": "white"},{"selector":"@s"},{"text": ">","color": "white"},{"text":" Start sequence initialized! Team selection will begin in 10 seconds.","color":"white"}]
tellraw @a [{"text":"[Cancel Start]","color":"red","bold": true,"clickEvent": {"action":"run_command","value": "/trigger lobbysigns set 2"}}]
execute as @a at @s run playsound block.note_block.hat record @s ~ ~ ~ 1 0.6
scoreboard players set $Count countdown 11
scoreboard players set $PauseTips countdown 1
schedule function pudge:lobby/start_countdown/countdown 1s