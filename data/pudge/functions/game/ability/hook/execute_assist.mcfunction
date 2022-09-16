#called from main execute function to count an assist

# @s = receiver
#tag source of hook
scoreboard players operation $Temp_Player hookID = @s hookID
execute as @a[tag=isGamer] if score @s entityid = $Temp_Player hookID run tag @s add tempHookTag

tellraw @a[tag=tempHookTag,limit=1] [{"text": "(+) ","color": "green"},{"text": "You just assisted ","color": "white"},{"text":"","extra":[{"selector":"@a[tag=tempAttackerTag,limit=1]"}]},{"text": " and got ","color": "white"},{"score":{"name":"$AssistBounty","objective":"var"},"color": "gold"},{"text": " gold!","color": "gold"}]
scoreboard players operation @a[tag=tempHookTag,limit=1] gold += $AssistBounty var
function pudge:game/gold/update_display

scoreboard players add @a[tag=tempHookTag,limit=1] totalAssists 1

tag @a[tag=tempHookTag,limit=1] remove tempHookTag