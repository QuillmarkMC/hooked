#count down until next tip should be displayed
scoreboard players remove $TipTimer lobbyvar 1
execute if score $TipTimer lobbyvar matches ..0 run function pudge:lobby/tips/generate
execute if score $TipTimer lobbyvar matches ..0 run scoreboard players set $TipTimer lobbyvar 600