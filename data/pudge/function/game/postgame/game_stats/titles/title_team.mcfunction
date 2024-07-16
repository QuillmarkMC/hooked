title @a times 10 120 10
title @a subtitle [{"score":{"name": "$RedScore","objective": "var"},"color": "red"},{"text": " - ","color": "white"},{"score":{"name": "$BlueScore","objective": "var"},"color": "blue"}]
execute if score $Winner cutscene matches 3 run title @a title {"translate": "text.game.end.title.win.draw","color": "gray","bold": false}
execute if score $Winner cutscene matches 2 run title @a title {"translate": "text.game.end.title.win.red","color": "red","bold": true}
execute if score $Winner cutscene matches 1 run title @a title {"translate": "text.game.end.title.win.blue","color": "blue","bold": true}