#triggers for game settings
execute as @a[scores={lobbysigns=1..}] run function pudge:lobby/triggers/signs
scoreboard players enable @a lobbysigns
execute as @a[scores={value=-2147483648..2147483647}] unless score @s value matches 0 run function pudge:lobby/triggers/value
execute as @a[scores={customValueTimer=1..}] run function pudge:lobby/triggers/value_timer

#border check
execute as @a[predicate=!pudge:lobby/lobby,gamemode=adventure] run tp @s @e[type=marker,tag=lobbySpawn,limit=1]

#gameplay tips
function pudge:lobby/tips/timer

#unlock settings if admins dc
execute if score $Locked lobbysigns matches 1 unless entity @a[tag=admin] run function pudge:lobby/settings/actions/general/unlock/auto_unlock

#random
effect give @a saturation 999999 255 true
effect give @a resistance 999999 255 true
effect give @a weakness 999999 255 true