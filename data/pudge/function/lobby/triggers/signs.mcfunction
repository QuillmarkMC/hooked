#check if player tried to start the game with value of 1 if signs are locked (manually type trigger command), if true set to a random unused amount (so it does nothing)
execute if score @s lobbysigns matches 1 if score $Locked lobbysigns matches 1 run scoreboard players set @s lobbysigns 1999
#if player clicked on locked sign, check if they have permission to edit
execute if score @s lobbysigns matches 1000.. if entity @s[tag=admin] run scoreboard players remove @s lobbysigns 1000

#trigger based on action (sign/chat click)
execute if score @s lobbysigns matches 1..99 run function pudge:lobby/triggers/signs/other
execute if score @s lobbysigns matches 100..199 run function pudge:lobby/triggers/signs/general
execute if score @s lobbysigns matches 200..299 run function pudge:lobby/triggers/signs/gameplay
execute if score @s lobbysigns matches 300..399 run function pudge:lobby/triggers/signs/shop1
execute if score @s lobbysigns matches 400..499 run function pudge:lobby/triggers/signs/shop2
execute if score @s lobbysigns matches 500..599 run function pudge:lobby/triggers/signs/credits

execute if score @s lobbysigns matches 900..999 run function pudge:lobby/triggers/info/tutorial

execute unless score @s lobbysigns matches 1..2 unless score @s lobbysigns matches 900..999 at @s run playsound block.wooden_button.click_on ambient @s ~ ~ ~ 0.75 0.75

execute if score @s lobbysigns matches 1000.. run tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"translate":"text.lobby.settings.actions.unlock.click.1"},{"hover_event":{"action":"show_text","value":[{"translate":"text.lobby.settings.actions.unlock.click.2","italic":true,"color":"yellow"}]},"click_event":{"action":"run_command","command": "/function pudge:lobby/settings/actions/general/unlock/grant_permission"},"translate": "text.lobby.settings.actions.unlock.click.3","underlined": true,"color": "gold"},{"translate": "text.lobby.settings.actions.unlock.click.4"}]
function pudge:lobby/settings/display/update
scoreboard players set @s lobbysigns 0