#called when the game exceeds the maximum allowed length
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"The game has exceeded the maximum allowed length, and has been automatically ended.","color":"white","bold": false}]
function pudge:game/postgame/early_end/determine_win
