#function is never called, only kept for reference

#execute if score #SnowballFix math matches -1 run data modify entity @s Air set value 0s
#execute if score #SnowballFix math matches 1 run data modify entity @s Air set value 1s
execute store result entity @s Air short 1.0 run time query gametime