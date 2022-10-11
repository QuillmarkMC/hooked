#player-triggered settings reset
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"All settings have been reset to their default values."}]
execute at @s run playsound entity.warden.death ambient @s ~ ~ ~ 0.75 1.5
function pudge:lobby/settings/init
