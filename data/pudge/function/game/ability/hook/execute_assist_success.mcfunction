#assister gets gold equal to 1/4 of the full bounty of the target
scoreboard players operation $Num1 math = @s bounty
scoreboard players operation $Num1 math /= #4 math
scoreboard players operation @a[tag=tempHookTag,limit=1] gold += $Num1 math
function pudge:game/gold/update_display
tellraw @a[tag=tempHookTag,limit=1] [{"text": "(+) ","color": "green"},{"translate": "text.game.hook.execute.assist.1","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}]},{"translate": "text.game.hook.execute.assist.2","color": "white"},{"score":{"name":"$Num1","objective":"math"},"color": "gold"},{"translate": "text.game.hook.execute.assist.3","color": "gold"}]

scoreboard players add @a[tag=tempHookTag,limit=1] totalAssists 1