# @s = attacker

scoreboard players set $Temp killstreak 0

#grant gold for kill
scoreboard players operation @s gold += @a[tag=tempReceiverTag,limit=1] bounty
function pudge:game/gold/update_display
#count kill on scoreboard
execute if entity @s[team=red] run scoreboard players add $RedScore var 1
execute if entity @s[team=blue] run scoreboard players add $BlueScore var 1
function pudge:game/bossbar/update
#count individual kill
scoreboard players add @s playerKills 1
#add 1 to killstreak
function pudge:game/killstreak/add
#combo tracking
function pudge:game/killstreak/combo/add
#check teams
tag @s add teamCheckPlayer1
tag @a[tag=tempReceiverTag,limit=1] add teamCheckPlayer2
function pudge:general/teams/check_teams
#display kill message to attacker
execute if score #TempTeams var matches 0 run tellraw @s [{"text": "(+)","color": "green"},{"text": "You just killed ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}]},{"text": " and got ","color": "white"},{"score":{"name":"@a[tag=tempReceiverTag,limit=1]","objective":"bounty"},"color": "gold"},{"text": " gold!","color": "gold"}]
execute unless score #TempTeams var matches 0 run tellraw @s [{"text": "(+)","color": "green"},{"text": "You just killed ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}]}]
#check receiver's kill streak, set variable if ending streak
execute if score @a[tag=tempReceiverTag,limit=1] killstreak matches 3.. run scoreboard players set $Temp killstreak 17
#handle lifesteal ability's regen effect
execute if score @s lifestealAmount matches 1.. if score #TempTeams var matches 0 run function pudge:game/ability/lifesteal/regen

#kill receiver
execute as @a[tag=tempReceiverTag,limit=1] run function pudge:general/death/on_death

#track first blood
scoreboard players set #Temp math 0
scoreboard players operation #Temp math += $RedScore var
scoreboard players operation #Temp math += $BlueScore var
execute if score #Temp math matches 1 run scoreboard players set $Temp killstreak 100
#global kill announce (sound and tellraw)
execute if score $Temp killstreak matches 1.. run function pudge:game/killstreak/announce

#check win
function pudge:game/end/check_win