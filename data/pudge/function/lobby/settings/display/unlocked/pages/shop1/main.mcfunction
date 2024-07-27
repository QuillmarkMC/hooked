#default page
#top row
setblock 199 66 -66 oak_wall_sign[facing=south]
setblock 200 66 -66 oak_wall_sign[facing=south]
setblock 201 66 -66 oak_wall_sign[facing=south]
setblock 202 66 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"blue",messages:['""', '{"translate":"text.lobby.settings.signs.shop1.title.1","color":"dark_green"}', '{"translate":"text.lobby.settings.signs.shop1.title.2","color":"white"}', '""']}}
setblock 203 66 -66 oak_wall_sign[facing=south]
setblock 204 66 -66 oak_wall_sign[facing=south]
setblock 205 66 -66 oak_wall_sign[facing=south]
#2nd row
#setblock 199 65 -66 air
function pudge:lobby/settings/display/unlocked/pages/shop1/hook_cd
function pudge:lobby/settings/display/unlocked/pages/shop1/hook_damage
function pudge:lobby/settings/display/unlocked/pages/shop1/bounce
function pudge:lobby/settings/display/unlocked/pages/shop1/melee_damage
function pudge:lobby/settings/display/unlocked/pages/shop1/extra_health
#setblock 205 65 -66 air
#3rd row
#setblock 199 64 -66 air
#setblock 200 64 -66 air
function pudge:lobby/settings/display/unlocked/pages/shop1/heal
function pudge:lobby/settings/display/unlocked/pages/shop1/haste
function pudge:lobby/settings/display/unlocked/pages/shop1/ranged_ap
#setblock 204 64 -66 air
#setblock 205 64 -66 air
#bottom row (navigation)
function pudge:lobby/settings/display/unlocked/pages/page_selection/back
function pudge:lobby/settings/display/unlocked/pages/page_selection/page1
function pudge:lobby/settings/display/unlocked/pages/page_selection/page2
function pudge:lobby/settings/display/unlocked/pages/page_selection/page3
function pudge:lobby/settings/display/unlocked/pages/page_selection/page4
function pudge:lobby/settings/display/unlocked/pages/page_selection/page5
function pudge:lobby/settings/display/unlocked/pages/page_selection/forward