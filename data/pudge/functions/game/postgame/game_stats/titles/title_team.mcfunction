title @a times 10 120 10
title @a subtitle [{"score":{"name": "$RedScore","objective": "var"},"color": "red"},{"text": " - ","color": "white"},{"score":{"name": "$BlueScore","objective": "var"},"color": "blue"}]
execute if score $Winner cutscene matches 3 run title @a title {"text": "Draw","color": "gray","bold": true}
execute if score $Winner cutscene matches 2 run title @a title {"text": "Red Wins!","color": "red","bold": true}
execute if score $Winner cutscene matches 1 run title @a title {"text": "Blue Wins!","color": "blue","bold": true}