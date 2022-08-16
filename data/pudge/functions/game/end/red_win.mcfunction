#called when red team has required points to win
title @a times 10 200 5
title @a subtitle [{"score":{"name": "$RedScore","objective": "var"},"color": "red"},{"text": " - ","color": "white"},{"score":{"name": "$BlueScore","objective": "var"},"color": "blue"}]
title @a title {"text": "Red Wins!","color": "red","bold": true}

function pudge:lobby/load