tellraw @s [{"text":"[!] ","color":"aqua","bold": true},{"translate":"text.lobby.redmage","color":"white","bold": false}]
scoreboard players operation @s announcer = $Redmage announcer
execute at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1 2
advancement revoke @s only pudge:redmage/credit