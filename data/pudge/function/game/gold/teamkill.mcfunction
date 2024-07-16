#called when a player teamkills with the hatchet
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}],"bold": false},{"translate": "text.game.teamkill.1","color": "white","bold": false},{"score":{"name":"$TeamkillPunishment","objective":"gold"},"color": "gold"},{"translate": "text.game.teamkill.2","color": "gold","bold": false},{"translate": "text.game.teamkill.3","color": "white","bold": false}]
scoreboard players operation @a[tag=tempAttackerTag,limit=1] gold -= $TeamkillPunishment gold
execute as @a[tag=tempAttackerTag,limit=1] run function pudge:game/gold/update_display
execute as @a[scores={announcer=1}] at @s run playsound pudge:game.team_killer ambient @s ~ ~ ~ 0.5
execute as @a[scores={announcer=2}] at @s run playsound pudge:game.team_killer.redmage ambient @s ~ ~ ~
