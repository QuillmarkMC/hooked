tellraw @s [{"text": "------------------","color": "dark_green"},{"text": "Item Shop","color": "#cfcfff","bold":true},{"text": " (18/20)","color": "gray"},{"text":"------------------","color": "dark_green"}]
#tellraw @s [{"text": ""},{"text": " \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 Item Shop","color": "#cfcfff","bold": true},{"text": " (15/17)","color": "gray"}]
tellraw @s [{"text": ""},{"text": "[!] ","color": "aqua","bold": true},{"text":"Instant Health: ","bold": true,"color": "#FF4E4B"},{"text": "Buying this item instantly heals 2 hearts. The heal is applied instantly after purchasing and cannot be saved for later."}]
tellraw @s [{"text": ""},{"text": "\n\n\n\n\n← Previous Page","color": "dark_gray","underlined": true,"italic": true,"clickEvent":{"action":"run_command","value":"/trigger lobbysigns set 936"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","italic":true,"color":"dark_gray"}]}},{"text": " \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020 \u0020"},{"text": "Next Page →","color": "yellow","underlined": true,"italic": true,"clickEvent":{"action":"run_command","value":"/trigger lobbysigns set 938"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click me!","italic":true,"color":"yellow"}]}}]
#tellraw @s {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~","color": "dark_green"}