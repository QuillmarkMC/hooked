tellraw @s [{"translate": "text.lobby.info.river.title.dash.left.2","color": "dark_green"},{"translate": "text.lobby.info.river.title.name","color": "#cfcfff","bold":true},{"text": " (10/10)","color": "gray"},{"translate": "text.lobby.info.river.title.dash.right.2","color": "dark_green"}]
tellraw @s [{"text": ""},{"text": "[!] ","color": "aqua","bold": true},{"translate":"text.lobby.info.river.page10.1","bold": true,"color": "yellow"},{"translate": "text.lobby.info.river.page10.2"}]
tellraw @s [{"text": ""},{"translate": "text.lobby.info.river.previous.10","color": "dark_gray","underlined": true,"italic": true,"clickEvent":{"action":"run_command","value":"/trigger lobbysigns set 948"},"hoverEvent":{"action":"show_text","contents":[{"translate":"text.lobby.info.click","italic":true,"color":"dark_gray"}]}}]
