# @s = an arrow
execute unless entity @s[nbt={pickup:0b}] run data modify entity @s pickup set value 0
#execute store result entity @s Air short 1.0 run time query gametime 