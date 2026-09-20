#default page
#top row
setblock 199 66 -66 dark_oak_wall_sign[facing=south]
setblock 200 66 -66 dark_oak_wall_sign[facing=south]
setblock 201 66 -66 dark_oak_wall_sign[facing=south]
setblock 202 66 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"blue",messages:[{"text":""}, {"translate":"text.lobby.settings.signs.shop2.title.1","color":"dark_green"}, {"translate":"text.lobby.settings.signs.shop2.title.2","color":"white"}, {"text":""}]}}
setblock 203 66 -66 dark_oak_wall_sign[facing=south]
setblock 204 66 -66 dark_oak_wall_sign[facing=south]
setblock 205 66 -66 dark_oak_wall_sign[facing=south]
#2nd row
#setblock 199 65 -66 air
function pudge:lobby/settings/display/locked/pages/shop2/creeper
function pudge:lobby/settings/display/locked/pages/shop2/totem
function pudge:lobby/settings/display/locked/pages/shop2/knockback
function pudge:lobby/settings/display/locked/pages/shop2/grapple
function pudge:lobby/settings/display/locked/pages/shop2/lifesteal
#setblock 205 65 -66 air
#3rd row
#setblock 199 64 -66 air
#setblock 200 64 -66 air
function pudge:lobby/settings/display/locked/pages/shop2/goat
function pudge:lobby/settings/display/locked/pages/shop2/retract
function pudge:lobby/settings/display/locked/pages/shop2/grab
#setblock 204 64 -66 air
#setblock 205 64 -66 air
#bottom row (navigation)
function pudge:lobby/settings/display/locked/pages/page_selection/back
function pudge:lobby/settings/display/locked/pages/page_selection/page1
function pudge:lobby/settings/display/locked/pages/page_selection/page2
function pudge:lobby/settings/display/locked/pages/page_selection/page3
function pudge:lobby/settings/display/locked/pages/page_selection/page4
function pudge:lobby/settings/display/locked/pages/page_selection/page5
function pudge:lobby/settings/display/locked/pages/page_selection/forward