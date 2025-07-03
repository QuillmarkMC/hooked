function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.game.river.hook","color": "white","bold": false}]
execute as @a at @s run playsound entity.ender_dragon.growl ambient @s

tag @s add tempAttackerTag
execute if entity @s[team=red,tag=!dead] as @a[tag=isGamer,tag=!dead,team=blue] run function pudge:game/maps/forest/river/power/hook/hook_me
execute if entity @s[team=blue,tag=!dead] as @a[tag=isGamer,tag=!dead,team=red] run function pudge:game/maps/forest/river/power/hook/hook_me
tag @s remove tempAttackerTag