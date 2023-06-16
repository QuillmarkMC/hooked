#default page
#top row
setblock 199 66 -66 dark_oak_wall_sign[facing=south]
setblock 200 66 -66 dark_oak_wall_sign[facing=south]
setblock 201 66 -66 dark_oak_wall_sign[facing=south]
setblock 202 66 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"blue",messages:['""', '{"text":"Page 1","color":"dark_green"}', '{"text":"General","color":"white"}', '""']}}
setblock 203 66 -66 dark_oak_wall_sign[facing=south]
setblock 204 66 -66 dark_oak_wall_sign[facing=south]
setblock 205 66 -66 dark_oak_wall_sign[facing=south]
#2nd row
#setblock 199 65 -66 air
function pudge:lobby/settings/display/locked/pages/general/victory_type
function pudge:lobby/settings/display/locked/pages/general/victory_condition
setblock 202 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"blue",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1001"},"text": ""}', '{"text":"Start Game","color":"dark_green"}', '[{"text":"[","color": "white"},{"keybind":"key.use","color":"white"},{"text":"]","color": "white"}]', '""']}}
function pudge:lobby/settings/display/locked/pages/general/gamemode
function pudge:lobby/settings/display/locked/pages/general/soundtrack
#setblock 205 65 -66 air
#3rd row
#setblock 199 64 -66 air
#setblock 200 64 -66 air
setblock 201 64 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"red",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 1103"},"text": ""}', '{"text":"Reset to","color":"white"}', '{"text":"Default","color":"red"}', '""']}}
#setblock 202 64 -66 air
setblock 203 64 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"blue",messages:['{"clickEvent":{"action":"run_command","value": "trigger lobbysigns set 107"},"text": ""}', '{"text":"Unlock Settings","color":"yellow"}', '{"text":"[Admins Only]","color":"white"}', '""']}}
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
