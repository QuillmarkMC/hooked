execute store result score $ready_num lobbysigns if entity @a[team=!]
execute if score $Count countdown matches 0.. run scoreboard players set $ready_num lobbysigns -1
execute if score $ready_num lobbysigns matches 1.. run function pudge:lobby/start_countdown/begin
execute if score $ready_num lobbysigns matches 0 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"text":"At least one team must be populated to start the game!","color":"white","bold": false}]
execute if score $ready_num lobbysigns matches -1 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"text":"Start sequence has already begun!","color":"white","bold": false}]
scoreboard players reset $ready_num lobbysigns