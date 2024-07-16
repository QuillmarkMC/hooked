#called when the game exceeds the maximum allowed length
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"translate":"text.game.end.early.kills","color":"white","bold": false}]
function pudge:game/postgame/early_end/determine_win
