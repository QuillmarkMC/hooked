#default page
#top row
setblock 199 66 -66 dark_oak_wall_sign[facing=south]
setblock 200 66 -66 dark_oak_wall_sign[facing=south]
setblock 201 66 -66 dark_oak_wall_sign[facing=south]
setblock 202 66 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"blue",messages:[{"text":""}, {"translate":"text.lobby.settings.signs.gameplay.title.1","color":"dark_green"}, {"translate":"text.lobby.settings.signs.gameplay.title.2","color":"white"}, {"text":"","color":"white"}]}}
setblock 203 66 -66 dark_oak_wall_sign[facing=south]
setblock 204 66 -66 dark_oak_wall_sign[facing=south]
setblock 205 66 -66 dark_oak_wall_sign[facing=south]
#2nd row
function pudge:lobby/settings/display/locked/pages/gameplay/starting_gold
function pudge:lobby/settings/display/locked/pages/gameplay/base_bounty
function pudge:lobby/settings/display/locked/pages/gameplay/teamkill_punishment
function pudge:lobby/settings/display/locked/pages/gameplay/income_amount
function pudge:lobby/settings/display/locked/pages/gameplay/income_cycle
function pudge:lobby/settings/display/locked/pages/gameplay/respawn_delay
function pudge:lobby/settings/display/locked/pages/gameplay/max_inventory_upgrades
#3rd row
#setblock 199 64 -66 air
#setblock 200 64 -66 air
#setblock 201 64 -66 air
#function pudge:lobby/settings/display/locked/pages/gameplay/forest
#setblock 203 64 -66 air
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