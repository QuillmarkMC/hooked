# @s = attacker

scoreboard players set $Temp killstreak 0

#count kill on scoreboard
execute if entity @s[team=red] unless entity @a[tag=tempReceiverTag,team=red] run scoreboard players add $RedScore var 1
execute if entity @s[team=blue] unless entity @a[tag=tempReceiverTag,team=blue] run scoreboard players add $BlueScore var 1
function pudge:game/bossbar/update
#reset recent kill timer
scoreboard players operation $KillTime timers = $MaxLengthPerKillSeconds timers
#check teams
tag @s add teamCheckPlayer1
tag @a[tag=tempReceiverTag,limit=1] add teamCheckPlayer2
function pudge:general/teams/check_teams
#display kill message to attacker
execute unless score #SkipDeath death matches 1 if score #TempTeams var matches 0 run tellraw @s [{"text": "(+) ","color": "green"},{"text": "You just killed ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}]},{"text": " and got ","color": "white"},{"score":{"name":"@a[tag=tempReceiverTag,limit=1]","objective":"bounty"},"color": "gold"},{"text": " gold!","color": "gold"}]
execute unless score #TempTeams var matches 0 unless entity @s[tag=tempReceiverTag] run tellraw @s [{"text": "(+) ","color": "green"},{"text": "You just killed ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}]}]
#check receiver's kill streak, set variable if ending streak
execute if score #TempTeams var matches 0 if score @a[tag=tempReceiverTag,limit=1] killstreak matches 3.. run scoreboard players set $Temp killstreak 17
#handle lifesteal ability's regen effect
execute if score @s lifestealAmount matches 1.. if score #TempTeams var matches 0 run function pudge:game/ability/lifesteal/regen
#grant gold for kill
execute if score #TempTeams var matches 0 run scoreboard players operation @s gold += @a[tag=tempReceiverTag,limit=1] bounty
function pudge:game/gold/update_display
#count individual kill
execute if score #TempTeams var matches 0 run scoreboard players add @s playerKills 1
#add 1 to killstreak
execute if score #TempTeams var matches 0 run function pudge:game/killstreak/add
#combo tracking
execute if score #TempTeams var matches 0 run function pudge:game/killstreak/combo/add
#reduced bounty tracking
execute if score #TempTeams var matches 0 if score @s deathStreak matches 2.. run function pudge:general/death/bounty/on_kill_deathstreak

#kill receiver
execute unless score #SkipDeath death matches 1 as @a[tag=tempReceiverTag,limit=1] run function pudge:general/death/on_death

#track first blood
scoreboard players set #Temp math 0
scoreboard players operation #Temp math += $RedScore var
scoreboard players operation #Temp math += $BlueScore var
execute if score #Temp math matches 1 run scoreboard players set $Temp killstreak 100
#global kill announce (sound and tellraw)
execute if score $Temp killstreak matches 1.. run function pudge:game/killstreak/announce

#check win
function pudge:game/postgame/check_win