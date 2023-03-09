execute if score @s shopItem.Hook.CD matches 0 if score $HookCDCost shop matches 1.. run item replace entity @s enderchest.0 with bedrock{HookCDStats:1,Shop:1,display:{Name:'{"text":"Upgrade Hook Cooldown","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Reduces the cooldown of your","color":"gray","italic":false}','{"text":"Hookshot weapon by 1 second.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"8s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"7s","color":"gray","italic":false}]']},CustomModelData:4}
execute if score @s shopItem.Hook.CD matches 1 run item replace entity @s enderchest.0 with bedrock{HookCDStats:1,Shop:1,display:{Name:'{"text":"Upgrade Hook Cooldown","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Reduces the cooldown of your","color":"gray","italic":false}','{"text":"Hookshot weapon by 1 second.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"7s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"6s","color":"gray","italic":false}]']},CustomModelData:4}
execute if score @s shopItem.Hook.CD matches 2 run item replace entity @s enderchest.0 with bedrock{HookCDStats:1,Shop:1,display:{Name:'{"text":"Upgrade Hook Cooldown","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Reduces the cooldown of your","color":"gray","italic":false}','{"text":"Hookshot weapon by 1 second.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"6s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"5s","color":"gray","italic":false}]']},CustomModelData:4}
execute if score @s shopItem.Hook.CD matches 3 run item replace entity @s enderchest.0 with bedrock{HookCDStats:1,Shop:1,display:{Name:'{"text":"Upgrade Hook Cooldown","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Reduces the cooldown of your","color":"gray","italic":false}','{"text":"Hookshot weapon by 1 second.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"5s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"4s","color":"gray","italic":false}]']},CustomModelData:4}
execute if score @s shopItem.Hook.CD matches 4 run item replace entity @s enderchest.0 with bedrock{HookCDStats:1,Shop:1,display:{Name:'{"text":"Upgrade Hook Cooldown","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"Reduces the cooldown of your","color":"gray","italic":false}','{"text":"Hookshot weapon by 1 second.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"4s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"3s","color":"gray","italic":false}]']},CustomModelData:4}
execute if score @s shopItem.Hook.CD matches 5.. run item replace entity @s enderchest.0 with bedrock{HookCDStats:1,Shop:1,display:{Name:'[{"text":"Upgrade Hook Cooldown","color":"yellow","bold":true,"italic":false},{"text":" (maxed)","color":"dark_gray","bold":false,"italic":true}]',Lore:['{"text":"Reduces the cooldown of your","color":"gray","italic":false}','{"text":"Hookshot weapon by 1 second.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"3s","color":"gray","italic":false}]']},Enchantments:[{}],CustomModelData:4}
#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $HookCDCost shop
execute if score $HookCDCost shop matches 1.. if score @s shopItem.Hook.CD matches 0..4 run item modify entity @s enderchest.0 pudge:lore/shop/gold

execute if score $HookCDCost shop matches ..0 run item replace entity @s enderchest.0 with bedrock{UnavailableItem:1,Shop:1,display:{Name:'{"text":"Item Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"This item has been disabled","color":"gray","italic":false}','{"text":"from the lobby settings.","color":"gray","italic":false}']},CustomModelData:7}
