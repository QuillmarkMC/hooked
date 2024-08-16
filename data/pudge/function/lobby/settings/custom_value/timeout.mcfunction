tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"translate":"text.lobby.settings.signs.custom.timeout"}]
scoreboard players reset @s customValueTimer
scoreboard players reset @s value
function pudge:general/player/remove_lobby_tags
