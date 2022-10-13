#default page
#top row
setblock 199 66 -66 oak_wall_sign[facing=south]
setblock 200 66 -66 oak_wall_sign[facing=south]
setblock 201 66 -66 oak_wall_sign[facing=south]
setblock 202 66 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'',Text2:'{"text":"Page 2","color":"dark_green"}',Text3:'{"text":"Gameplay","color":"white"}',Text4:'{"text":"","color":"white"}'}
setblock 203 66 -66 oak_wall_sign[facing=south]
setblock 204 66 -66 oak_wall_sign[facing=south]
setblock 205 66 -66 oak_wall_sign[facing=south]
#2nd row
function pudge:lobby/settings/display/unlocked/pages/gameplay/starting_gold
function pudge:lobby/settings/display/unlocked/pages/gameplay/base_bounty
function pudge:lobby/settings/display/unlocked/pages/gameplay/teamkill_punishment
function pudge:lobby/settings/display/unlocked/pages/gameplay/income_amount
function pudge:lobby/settings/display/unlocked/pages/gameplay/income_cycle
function pudge:lobby/settings/display/unlocked/pages/gameplay/respawn_delay
function pudge:lobby/settings/display/unlocked/pages/gameplay/max_inventory_upgrades
#3rd row
#setblock 199 64 -66 air
#setblock 200 64 -66 air
#setblock 201 64 -66 air
#function pudge:lobby/settings/display/unlocked/pages/gameplay/forest
#setblock 203 64 -66 air
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