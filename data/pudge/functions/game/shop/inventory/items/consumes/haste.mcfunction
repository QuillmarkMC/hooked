execute if score $HasteCost shop matches 1.. run item replace entity @s enderchest.1 with potion{Potion:"minecraft:swiftness",HasteConsumes:1,Shop:1,display:{Name:'{"text":"Speed","color":"#7ECAFF","bold":true,"italic":false}',Lore:['{"text":"Immediate effect!","color":"dark_red","italic":false,"bold": true}','{"text":"Instantly grants Speed and Dolphin\'s","color":"gray","italic":false}','{"text":"Grace for 20 seconds upon purchasing.","color":"gray","italic":false}','{"text": ""}']},HideFlags:127}
#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $HasteCost shop
execute if score $HasteCost shop matches 1.. run item modify entity @s enderchest.1 pudge:lore/shop/gold

execute if score $HasteCost shop matches ..0 run item replace entity @s enderchest.1 with bedrock{UnavailableItem:1,Shop:1,display:{Name:'{"text":"Item Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"This item has been disabled","color":"gray","italic":false}','{"text":"from the lobby settings.","color":"gray","italic":false}']},CustomModelData:7}
