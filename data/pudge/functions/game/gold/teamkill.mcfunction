#called when a player teamkills with the hatchet
tellraw @a [{"text": "[!] ","color": "yellow","bold": true},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}],"bold": false},{"text": " just killed their teammate and lost ","color": "white","bold": false},{"score":{"name":"$TeamkillPunishment","objective":"gold"},"color": "gold"},{"text": " gold ","color": "gold","bold": false},{"text": "for it!","color": "white","bold": false}]
scoreboard players operation @a[tag=tempAttackerTag,limit=1] gold -= $TeamkillPunishment gold
execute as @a[tag=tempAttackerTag,limit=1] run function pudge:game/gold/update_display
