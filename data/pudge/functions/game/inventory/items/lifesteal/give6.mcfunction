item replace entity @s hotbar.6 with bedrock{display:{Name:'[{"text":"Lifesteal","color":"#911919","bold":true,"italic":false},{"text":" (passive: lvl -)","color":"gray","bold":false,"italic":true}]',Lore:['{"text":"Your hookshot will heal you when it deals","color":"gray","italic":true}','{"text":"damage and will provide regeneration when","color":"gray","italic":true}','{"text":"you kill an enemy.","color":"gray","italic":true}','{"text":""}','[{"text":"Health restored on hit: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]','[{"text":"Regeneration on kill: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]']},CustomModelData:104}
#execute if score @s cdCreeper matches 1.. run item replace entity @s hotbar.2 with shears{display:{Name:'[{"text":"Throwable Creeper","color":"dark_green","bold":true,"italic":false},{"text":" (lvl -)","color":"gray","bold":false,"italic":true}]',Lore:['{"text":"Throw me! I explode!","color":"gray","italic":true}','[{"text":"Cooldown: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]','[{"text":"Damage: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]','[{"text":"Knockback: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]']},CustomModelData:100}

#execute if score @s cdCreeper matches 1.. run function pudge:game/inventory/items/creeper/display