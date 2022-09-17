#assister gets gold equal to 1/4 of the full bounty of the target
scoreboard players operation $Num1 math = @s bounty
scoreboard players operation $Num1 math /= #4 math
scoreboard players operation @a[tag=tempHookTag,limit=1] gold += $Num1 math
function pudge:game/gold/update_display
tellraw @a[tag=tempHookTag,limit=1] [{"text": "(+) ","color": "green"},{"text": "You just assisted ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}]},{"text": " and got ","color": "white"},{"score":{"name":"$Num1","objective":"math"},"color": "gold"},{"text": " gold!","color": "gold"}]

scoreboard players add @a[tag=tempHookTag,limit=1] totalAssists 1