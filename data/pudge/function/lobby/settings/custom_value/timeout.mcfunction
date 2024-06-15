tellraw @s [{"text": ""},{"text": "[!] ","color": "blue","bold": true},{"text":"Input time expired! Please use a non-zero integer."}]
scoreboard players reset @s customValueTimer
scoreboard players reset @s value
function pudge:general/player/remove_lobby_tags
