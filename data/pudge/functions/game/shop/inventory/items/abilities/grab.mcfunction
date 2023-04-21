execute if score @s shopItem.Grab matches 0 if score $GrabCost shop matches 1.. run item replace entity @s enderchest.7 with bedrock{GrabAbility:1,Shop:1,display:{Name:'{"text":"Anchor Arms","color":"#ccca99","bold":true,"italic":false}',Lore:['{"text":"Allows you to pick up other players and","color":"gray","italic":false}','{"text":"throw them using your Hookshot.","color":"gray","italic":false}','{"text":""}','[{"text":"Cooldown: ","color":"dark_green","italic":false},{"text":"20s","color":"gray","italic":false}]']},CustomModelData:108}
execute if score @s shopItem.Grab matches 1 run item replace entity @s enderchest.7 with bedrock{GrabAbility:1,Shop:1,display:{Name:'{"text":"Anchor Arms","color":"#ccca99","bold":true,"italic":false}',Lore:['{"text":"Allows you to pick up other players and","color":"gray","italic":false}','{"text":"throw them using your Hookshot.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"20s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"18s","color":"gray","italic":false}]']},CustomModelData:108}
execute if score @s shopItem.Grab matches 2 run item replace entity @s enderchest.7 with bedrock{GrabAbility:1,Shop:1,display:{Name:'{"text":"Anchor Arms","color":"#ccca99","bold":true,"italic":false}',Lore:['{"text":"Allows you to pick up other players and","color":"gray","italic":false}','{"text":"throw them using your Hookshot.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"18s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"16s","color":"gray","italic":false}]']},CustomModelData:108}
execute if score @s shopItem.Grab matches 3 run item replace entity @s enderchest.7 with bedrock{GrabAbility:1,Shop:1,display:{Name:'{"text":"Anchor Arms","color":"#ccca99","bold":true,"italic":false}',Lore:['{"text":"Allows you to pick up other players and","color":"gray","italic":false}','{"text":"throw them using your Hookshot.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"16s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"14s","color":"gray","italic":false}]']},CustomModelData:108}
execute if score @s shopItem.Grab matches 4 run item replace entity @s enderchest.7 with bedrock{GrabAbility:1,Shop:1,display:{Name:'{"text":"Anchor Arms","color":"#ccca99","bold":true,"italic":false}',Lore:['{"text":"Allows you to pick up other players and","color":"gray","italic":false}','{"text":"throw them using your Hookshot.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"14s","color":"gray","italic":false}]','[{"text":"Upgraded Cooldown: ","color":"dark_purple","italic":false},{"text":"12s","color":"gray","italic":false}]']},CustomModelData:108}
execute if score @s shopItem.Grab matches 5.. run item replace entity @s enderchest.7 with bedrock{GrabAbility:1,Shop:1,display:{Name:'[{"text":"Anchor Arms","color":"#ccca99","bold":true,"italic":false},{"text":" (maxed)","color":"dark_gray","bold":false,"italic":true}]',Lore:['{"text":"Allows you to pick up other players and","color":"gray","italic":false}','{"text":"throw them using your Hookshot.","color":"gray","italic":false}','{"text":""}','[{"text":"Current Cooldown: ","color":"dark_green","italic":false},{"text":"12s","color":"gray","italic":false}]']},Enchantments:[{}],CustomModelData:108}
#set dynamic gold cost lore
scoreboard players operation $TempGoldDisplay shop = $GrabCost shop
execute if score $GrabCost shop matches 1.. if score @s shopItem.Grab matches 0..4 run item modify entity @s enderchest.7 pudge:lore/shop/gold

execute if score $GrabCost shop matches ..0 run item replace entity @s enderchest.7 with bedrock{UnavailableItem:1,Shop:1,display:{Name:'{"text":"Item Unavailable","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"This item has been disabled","color":"gray","italic":false}','{"text":"from the lobby settings.","color":"gray","italic":false}']},CustomModelData:7}
