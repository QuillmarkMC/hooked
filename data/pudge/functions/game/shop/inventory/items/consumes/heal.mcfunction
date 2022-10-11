execute if score $HealCost shop matches 1.. run item replace entity @s enderchest.0 with potion{Potion:"minecraft:healing",HealConsumes:1,Shop:1,display:{Name:'{"text":"Instant Health","color":"#FF4E4B","bold":true,"italic":false}',Lore:['{"text":"Immediate effect!","color":"dark_red","italic":false,"bold": true}','{"text":"Instantly restores 2 hearts upon","color":"gray","italic":false}','{"text":"purchasing.","color":"gray","italic":false}','{"text": ""}']},HideFlags:127}
#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $HealCost shop
execute if score $HealCost shop matches 1.. run item modify entity @s enderchest.0 pudge:lore/shop/gold

execute if score $HealCost shop matches ..0 run item replace entity @s enderchest.0 with bedrock{UnavailableItem:1,Shop:1,display:{Name:'{"text":"Item Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"This item has been disabled","color":"gray","italic":false}','{"text":"from the lobby settings.","color":"gray","italic":false}']},CustomModelData:7}
