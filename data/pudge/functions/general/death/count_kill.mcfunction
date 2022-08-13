#grant gold for kill
scoreboard players operation @s gold += @a[tag=tempReceiverTag,limit=1] bounty
function pudge:game/gold/update_display
#count kill on scoreboard
execute if entity @s[team=red] run scoreboard players add $RedScore var 1
execute if entity @s[team=blue] run scoreboard players add $BlueScore var 1
function pudge:game/bossbar/update
#add 1 to killstreak
function pudge:game/killstreak/add

#kill receiver
execute as @a[tag=tempReceiverTag,limit=1] run function pudge:general/death/on_death