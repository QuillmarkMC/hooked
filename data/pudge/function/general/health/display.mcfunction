#more efficiently check the player's health to display on actionbar
execute if score @s health matches 200.. run function pudge:general/health/binary_tree/upper_50
execute if score @s health matches ..199 run function pudge:general/health/binary_tree/lower_50

#the old system, kept for later reference
#execute if score @s health matches 20.. run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001","color":"#4e5c24"}
#execute if score @s health matches 19 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE002","color":"#4e5c24"}
#execute if score @s health matches 18 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 17 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE002\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 16 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 15 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE002\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 14 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 13 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE002\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 12 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 11 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE002\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 10 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 9 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE002\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 8 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE001\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 7 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE002\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 6 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE001\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 5 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE002\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 4 run title @s actionbar {"text":"\uE005\uE001\uE004\uE001\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 3 run title @s actionbar {"text":"\uE005\uE001\uE004\uE002\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 2 run title @s actionbar {"text":"\uE005\uE001\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches 1 run title @s actionbar {"text":"\uE005\uE002\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}
#execute if score @s health matches ..0 run title @s actionbar {"text":"\uE005\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003\uE004\uE003","color":"#4e5c24"}