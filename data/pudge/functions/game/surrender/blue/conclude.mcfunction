scoreboard players set $BlueSurrender surrender 0
#check if enough votes were obtained
execute if score $BlueVotes surrender = $BlueVotesNeeded surrender run scoreboard players set $BlueSurrender surrender 1

#tellraw depending on outcome
execute if score $BlueSurrender surrender matches 0 run tellraw @a[team=blue] [{"text": ""},{"text":"[!] ","color":"#9E01FE","bold": true},{"text":"The surrender vote has failed."}]
execute if score $BlueSurrender surrender matches 1 run tellraw @a [{"text": ""},{"text":"[!] ","color":"yellow","bold": true},{"text":"The "},{"text": "Blue Team","color": "blue"},{"text": " has voted to surrender."}]

#reset trigger if failure
scoreboard players reset @a[team=blue] surrender
scoreboard players set $BlueVotes surrender 0
execute if score $BlueSurrender surrender matches 0 run schedule function pudge:game/surrender/blue/enable 60s
#end game if success
execute if score $BlueSurrender surrender matches 1 run function pudge:game/postgame/red_win