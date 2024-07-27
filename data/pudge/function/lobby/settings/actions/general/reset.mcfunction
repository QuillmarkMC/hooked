#player-triggered settings reset
tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.actions.reset"}]
execute at @s run playsound entity.warden.death ambient @s ~ ~ ~ 0.75 1.5
function pudge:lobby/settings/init
