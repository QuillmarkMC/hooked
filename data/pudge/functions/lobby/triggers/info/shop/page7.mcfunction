tellraw @s {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~","color": "dark_green"}
tellraw @s [{"text": ""},{"text": " \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 Item Shop","color": "#cfcfff","bold": true},{"text": " (7/17)","color": "gray"}]
tellraw @s [{"text": ""},{"text": "[!] ","color": "aqua","bold": true},{"text":"Max Health: ","bold": true,"color": "#BD4D4D"},{"text": "Buying this upgrade increases your maximum health by 2 hearts each purchase."}]
tellraw @s [{"text": ""},{"text":"Starting Value: ","color": "dark_green"},{"text": "10 hearts"}]
tellraw @s [{"text": ""},{"text":"Maximum Upgrade Value: ","color": "purple"},{"text": "20 hearts"}]
tellraw @s {"text": "Next Page →","color": "yellow","underlined": true,"italic": true,"clickEvent":{"action":"run_command","value":"/trigger lobbysigns set 927"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","italic":true,"color":"yellow"}]}}
tellraw @s {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~","color": "dark_green"}