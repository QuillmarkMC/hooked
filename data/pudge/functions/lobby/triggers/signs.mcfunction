#if player clicked on locked sign, check if they have permission to edit
execute if score @s lobbysigns matches 1000.. if entity @s[tag=admin] run scoreboard players remove @s lobbysigns 1000

#trigger based on action (sign/chat click)
execute if score @s lobbysigns matches 1..99 run function pudge:lobby/triggers/signs/other
execute if score @s lobbysigns matches 100..199 run function pudge:lobby/triggers/signs/general
execute if score @s lobbysigns matches 200..299 run function pudge:lobby/triggers/signs/gameplay
execute if score @s lobbysigns matches 300..399 run function pudge:lobby/triggers/signs/shop1
execute if score @s lobbysigns matches 400..499 run function pudge:lobby/triggers/signs/shop2
execute if score @s lobbysigns matches 500..599 run function pudge:lobby/triggers/signs/credits

execute unless score @s lobbysigns matches 1..2 at @s run playsound block.wooden_button.click_on ambient @s ~ ~ ~ 0.75 0.75

execute if score @s lobbysigns matches 1000.. run tellraw @s [{"text": ""},{"text": "[!] ","color": "dark_red","bold": true},{"text":"Settings are locked! "},{"hoverEvent":{"action":"show_text","contents":[{"text":"Admins only!","italic":true,"color":"yellow"}]},"clickEvent":{"action":"run_command","value": "/function pudge:lobby/settings/actions/general/unlock/grant_permission"},"text": "Click here","underlined": true,"color": "gold"},{"text": " to give yourself editing permission."}]
function pudge:lobby/settings/display/update
scoreboard players set @s lobbysigns 0