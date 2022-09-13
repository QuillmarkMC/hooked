execute store result score $ready_num lobbysigns if entity @a[team=!]
execute if score $Count countdown matches 0.. run scoreboard players set $ready_num lobbysigns -1
execute if score $ready_num lobbysigns matches 1.. run function pudge:lobby/start_countdown/begin
execute if score $ready_num lobbysigns matches 0 run tellraw @s [{"text":"[!] ","color":"dark_red"},{"text":"At least one player must be ready to start the game!","color":"white"}]
execute if score $ready_num lobbysigns matches -1 run tellraw @s [{"text":"[!] ","color":"dark_red"},{"text":"Start sequence has already begun!","color":"white"}]
scoreboard players reset $ready_num lobbysigns