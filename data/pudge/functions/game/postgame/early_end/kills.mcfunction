#called when the game exceeds the maximum allowed length
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"The time since the last kill has exceeded the maximum allowed length. The game has automatically ended.","color":"white"}]
function pudge:game/postgame/early_end/determine_win
