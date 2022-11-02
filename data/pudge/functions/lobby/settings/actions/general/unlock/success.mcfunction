tag @s remove admin
scoreboard players set $Locked lobbysigns 0
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Settings have been unlocked! All players can modify settings."}]

playsound entity.iron_golem.death ambient @s ~ ~ ~ 1 1.5