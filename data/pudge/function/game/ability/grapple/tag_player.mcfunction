#called from game/tick.mcfunction by an arrow tagged as a grappleArrow that has data inGround:true
# @s = arrow

tag @s add tempAttackerTag
#tag player who shot grapple arrow
scoreboard players operation $Temp arrowOwner = @s arrowOwner
execute as @a[tag=isGamer] if score @s entityid = $Temp arrowOwner run tag @s add tempReceiverTag

function pudge:game/ability/grapple/begin

tag @s remove tempAttackerTag
tag @a[tag=tempReceiverTag,limit=1] remove tempReceiverTag
tag @s remove grappleArrow