#check if player has editing permission
execute store success score #Temp lobbysigns if entity @s[tag=admin]
execute if score $Locked lobbysigns matches 0 run scoreboard players set #Temp lobbysigns 1

execute if score #Temp lobbysigns matches 1 run function pudge:lobby/start_countdown/interrupt/allow
execute if score #Temp lobbysigns matches 0 run tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"text":"Settings are locked! "},{"hoverEvent":{"action":"show_text","contents":[{"text":"Admins only!","italic":true,"color":"yellow"}]},"clickEvent":{"action":"run_command","value": "/function pudge:lobby/settings/actions/general/unlock/grant_permission"},"text": "Click here","underlined": true,"color": "gold"},{"text": " to give yourself editing permission."}]
