#check if player has editing permission
execute store success score #Temp lobbysigns if entity @s[tag=admin]
execute if score $Locked lobbysigns matches 0 run scoreboard players set #Temp lobbysigns 1

execute if score #Temp lobbysigns matches 1 run function pudge:lobby/start_countdown/interrupt/allow
execute if score #Temp lobbysigns matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"translate":"text.lobby.settings.actions.unlock.click.1"},{"hover_event":{"action":"show_text","value":[{"translate":"text.lobby.settings.actions.unlock.click.2","italic":true,"color":"yellow"}]},"click_event":{"action":"run_command","command": "/function pudge:lobby/settings/actions/general/unlock/grant_permission"},"translate": "text.lobby.settings.actions.unlock.click.3","underlined": true,"color": "gold"},{"translate": "text.lobby.settings.actions.unlock.click.4"}]
