execute if score $Debug var matches 2.. run say pudge:game/ability/bounce/no_bounce
# @s = arrow
#called with pudge:arrow temp_id

#if arrow is not about to hit a block, copy its current motion data into storage for later use
$data modify storage pudge:arrow Arrows.$(temp_id) set from entity @s Motion