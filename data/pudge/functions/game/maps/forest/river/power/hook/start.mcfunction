function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"text": "You just Mass Hooked the entire enemy team!","color": "white","bold": false}]

tag @s add tempAttackerTag
execute if entity @s[team=red,tag=!dead] as @a[tag=isGamer,tag=!dead,team=blue] run function pudge:game/maps/forest/river/power/hook/hook_me
execute if entity @s[team=blue,tag=!dead] as @a[tag=isGamer,tag=!dead,team=red] run function pudge:game/maps/forest/river/power/hook/hook_me
tag @s remove tempAttackerTag