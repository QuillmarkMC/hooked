#redundant function, meant for easy access by admins in game to end a game in progress
function pudge:lobby/load
tellraw @a [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"text.general.admin.end_game","color":"white","bold": false}]
