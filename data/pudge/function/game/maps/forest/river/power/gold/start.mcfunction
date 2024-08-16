function pudge:game/maps/forest/river/kill_power
tellraw @s [{"text": "[!] ","color": "yellow","bold": true},{"translate": "text.game.river.gold.1","color": "white","bold": false},{"score":{"name":"$InstantGold","objective":"river"},"color": "gold","bold": false},{"translate": "text.game.river.gold.2","color": "gold","bold": false}]
scoreboard players operation @s gold += $InstantGold river
execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~
function pudge:game/gold/update_display