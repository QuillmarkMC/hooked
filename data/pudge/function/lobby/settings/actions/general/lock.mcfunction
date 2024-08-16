tag @s add admin
scoreboard players set $Locked lobbysigns 1
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.actions.lock"}]

execute at @s run playsound entity.iron_golem.repair ambient @s ~ ~ ~ 1 1.1