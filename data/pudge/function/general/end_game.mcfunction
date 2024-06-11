#redundant function, meant for easy access by admins in game to end a game in progress
function pudge:lobby/load
tellraw @a [{"text":"[!] ","color":"dark_red","bold": true},{"text":"An admin has manually executed the end game function.","color":"white","bold": false}]
