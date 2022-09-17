#called from main execute function to count an assist

# @s = receiver
#tag source of hook
scoreboard players operation $Temp_Player hookID = @s hookID
execute as @a[tag=isGamer] if score @s entityid = $Temp_Player hookID run tag @s add tempHookTag

#check team of assister
execute if entity @s[team=red] unless entity @a[tag=tempHookTag,limit=1,team=red] run function pudge:game/ability/hook/execute_assist_success
execute if entity @s[team=blue] unless entity @a[tag=tempHookTag,limit=1,team=blue] run function pudge:game/ability/hook/execute_assist_success

tag @a[tag=tempHookTag,limit=1] remove tempHookTag