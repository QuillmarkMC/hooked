item replace entity @s hotbar.3 with bedrock{display:{Name:'[{"text":"Ricochet Arrows","color":"#FCC272","bold":true,"italic":false},{"text":" (passive: lvl -)","color":"gray","bold":false,"italic":true}]',Lore:['{"text":"All arrows you shoot will ricochet off","color":"gray","italic":true}','{"text":"of walls.","color":"gray","italic":true}','[{"text":"Number of bounces: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]']},CustomModelData:101}
#execute if score @s cdCreeper matches 1.. run item replace entity @s hotbar.2 with shears{display:{Name:'[{"text":"Throwable Creeper","color":"dark_green","bold":true,"italic":false},{"text":" (lvl -)","color":"gray","bold":false,"italic":true}]',Lore:['{"text":"Throw me! I explode!","color":"gray","italic":true}','[{"text":"Cooldown: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]','[{"text":"Damage: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]','[{"text":"Knockback: ","color":"dark_green","italic":false},{"text":"-","color":"gray","italic":false}]']},CustomModelData:100}

#execute if score @s cdCreeper matches 1.. run function pudge:game/inventory/items/creeper/display