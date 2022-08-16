scoreboard players set $Temp killstreak 0

#grant gold for kill
scoreboard players operation @s gold += @a[tag=tempReceiverTag,limit=1] bounty
function pudge:game/gold/update_display
#count kill on scoreboard
execute if entity @s[team=red] run scoreboard players add $RedScore var 1
execute if entity @s[team=blue] run scoreboard players add $BlueScore var 1
function pudge:game/bossbar/update
#add 1 to killstreak
function pudge:game/killstreak/add
#combo tracking
function pudge:game/killstreak/combo/add
#display kill message to attacker
tellraw @s [{"text": "(+)","color": "green"},{"text": "You just killed ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempReceiverTag,limit=1]"}]},{"text": " and got ","color": "white"},{"score":{"name":"@a[tag=tempReceiverTag,limit=1]","objective":"bounty"},"color": "gold"},{"text": " gold!","color": "gold"}]

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