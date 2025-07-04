# $Num1 initial value is number of kills ahead
scoreboard players operation $Num1 math *= #-1 math
scoreboard players operation $Num1 math /= #5 math
scoreboard players operation $Num2 math = $BaseCatchupReward timers
scoreboard players operation $Num2 math /= #2 math
#initial reward is 1/2 of "base" value, will be corrected in first recursive call
scoreboard players operation $CatchupReward timers = $Num2 math
function pudge:game/catchup/reward/calculate
#divide reward between all team members
execute store result score $Num2 math if entity @a[team=red]
scoreboard players operation $CatchupReward timers /= $Num2 math
#tellraw
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.game.catchup.red.1","color": "white","bold": false},{"translate":"text.game.catchup.red.2","bold": true,"color": "red"},{"translate": "text.game.catchup.red.3","color": "white","bold": false},{"score":{"name":"$CatchupReward","objective":"timers"},"color": "gold","bold": false},{"translate": "text.game.catchup.red.4","color": "gold","bold": false}]
#give gold
scoreboard players operation @a[team=red] gold += $CatchupReward timers
execute as @a[team=red] run function pudge:game/gold/update_display
#playsound
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 1 2
#mercy rule reminder
execute if score $MercyRule timers matches 1 as @a[team=red] run tellraw @s [{"text": ""},{"text": "[!] ","color": "#9E01FE","bold": true},{"translate":"text.game.catchup.mercy.1"},{"translate":"text.game.catchup.mercy.2","click_event":{"action":"suggest_command","command":"/trigger surrender"},"hover_event":{"action":"show_text","value":[{"translate":"text.game.catchup.mercy.3","italic":true,"color":"yellow"}]},"color": "gold","underlined": true},{"translate":"text.game.catchup.mercy.4"}]
