#default page
#top row
setblock 199 66 -66 oak_wall_sign[facing=south]
setblock 200 66 -66 oak_wall_sign[facing=south]
setblock 201 66 -66 oak_wall_sign[facing=south]
setblock 202 66 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'',Text2:'{"text":"Page 1","color":"dark_green"}',Text3:'{"text":"General","color":"white"}',Text4:""}
setblock 203 66 -66 oak_wall_sign[facing=south]
setblock 204 66 -66 oak_wall_sign[facing=south]
setblock 205 66 -66 oak_wall_sign[facing=south]
#2nd row
#setblock 199 65 -66 air
function pudge:lobby/settings/display/unlocked/pages/general/victory_type
function pudge:lobby/settings/display/unlocked/pages/general/victory_condition
setblock 202 65 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1"},"text": ""}',Text2:'{"text":"Start Game","color":"dark_green"}',Text3:'{"text":"[Right Click]","color":"white"}',Text4:""}
function pudge:lobby/settings/display/unlocked/pages/general/gamemode
function pudge:lobby/settings/display/unlocked/pages/general/soundtrack
#setblock 205 65 -66 air
#3rd row
#setblock 199 64 -66 air
#setblock 200 64 -66 air
setblock 201 64 -66 oak_wall_sign[facing=south]{GlowingText:true,Color:"red",Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 103"},"text": ""}',Text2:'{"text":"Reset to","color":"white"}',Text3:'{"text":"Default","color":"red"}',Text4:""}
#setblock 202 64 -66 air
setblock 203 64 -66 dark_oak_wall_sign[facing=south]{GlowingText:true,Color:"blue",Text1:'{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 106"},"text": ""}',Text2:'{"text":"Lock Settings","color":"yellow"}',Text3:'{"text":"[Admins Only]","color":"white"}',Text4:""}
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
