tellraw @s [{"translate": "text.lobby.info.river.title.dash.left.1","color": "dark_green"},{"translate": "text.lobby.info.river.title.name","color": "#cfcfff","bold":true},{"text": " (9/10)","color": "gray"},{"translate": "text.lobby.info.river.title.dash.right.1","color": "dark_green"}]
tellraw @s [{"text": ""},{"text": "[!] ","color": "aqua","bold": true},{"translate":"text.lobby.info.river.page9.1","bold": true,"color": "dark_gray"},{"translate": "text.lobby.info.river.page9.2"}]
tellraw @s [{"text": ""},{"translate": "text.lobby.info.river.previous.9","color": "dark_gray","underlined": true,"italic": true,"clickEvent":{"action":"run_command","value":"/trigger lobbysigns set 947"},"hoverEvent":{"action":"show_text","contents":[{"translate":"text.lobby.info.click","italic":true,"color":"dark_gray"}]}},{"translate": "text.lobby.info.next_page.space"},{"translate": "text.lobby.info.next_page","color": "yellow","underlined": true,"italic": true,"clickEvent":{"action":"run_command","value":"/trigger lobbysigns set 949"},"hoverEvent":{"action":"show_text","contents":[{"translate":"text.lobby.info.click","italic":true,"color":"yellow"}]}}]
