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
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text": "The ","color": "white","bold": false},{"text":"Red Team","bold": true,"color": "red"},{"text": " is struggling to keep up... Each team member has been given an extra ","color": "white","bold": false},{"score":{"name":"$CatchupReward","objective":"timers"},"color": "gold","bold": false},{"text": " gold!","color": "gold","bold": false}]
#give gold
scoreboard players operation @a[team=red] gold += $CatchupReward timers
execute as @a[team=red] run function pudge:game/gold/update_display
#playsound
execute as @a at @s run playsound minecraft:entity.elder_guardian.curse ambient @s ~ ~ ~ 1 2
#mercy rule reminder
execute if score $MercyRule timers matches 1 as @a[team=red] run tellraw @s [{"text": ""},{"text": "[!] ","color": "#9E01FE","bold": true},{"text":"You can use the command \""},{"text":"/trigger surrender","clickEvent":{"action":"suggest_command","value":"/trigger surrender"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","italic":true,"color":"yellow"}]},"color": "gold","underlined": true},{"text":"\" to initiate a surrender vote."}]
