#default page
#top row
setblock 199 66 -66 dark_oak_wall_sign[facing=south]
setblock 200 66 -66 dark_oak_wall_sign[facing=south]
setblock 201 66 -66 dark_oak_wall_sign[facing=south]
setblock 202 66 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"blue",messages:['""', '{"text":"Page 5","color":"dark_green"}', '{"text":"Credits","color":"white"}', '""']}}
setblock 203 66 -66 dark_oak_wall_sign[facing=south]
setblock 204 66 -66 dark_oak_wall_sign[facing=south]
setblock 205 66 -66 dark_oak_wall_sign[facing=south]
#2nd row
setblock 199 65 -66 air
setblock 200 65 -66 player_wall_head[facing=south]{SkullOwner:{Name:"Strongis13"}}
setblock 201 65 -66 air
setblock 202 65 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"light_gray",messages:['[{"text":"Click here ","color":"yellow"},{"text":"to","color":"white"}]', '{"text":"download the","color":"white"}', '{"text":"map from","color":"white"}', '{"text":"Planet Minecraft!","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 501"},"color": "green"}']}}
setblock 203 65 -66 air
setblock 204 65 -66 player_wall_head[facing=south]{SkullOwner:{Name:"Soccby"}}
setblock 205 65 -66 air
#3rd row
setblock 199 64 -66 air
setblock 200 64 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"white",messages:['{"text":"Strongis13","color":"aqua"}', '{"text":"Programmer","color":"light_gray"}', '{"text":"Game Balance","color":"light_gray"}', '""']}}
setblock 201 64 -66 air
setblock 202 64 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"light_gray",messages:['[{"text":"Click here ","color":"yellow"},{"text":"to","color":"white"}]', '{"text":"watch this","color":"white"}', '{"text":"map\'s trailer!","color":"white"}', '{"text":"","clickEvent":{"action":"run_command","value": "trigger lobbysigns set 500"}}']}}
setblock 203 64 -66 air
setblock 204 64 -66 dark_oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"white",messages:['{"text":"Soccby","color":"aqua"}', '{"text":"Builder","color":"light_gray"}', '{"text":"Game Balance","color":"light_gray"}', '""']}}
setblock 205 64 -66 air
#bottom row (navigation)
function pudge:lobby/settings/display/locked/pages/page_selection/back
function pudge:lobby/settings/display/locked/pages/page_selection/page1
function pudge:lobby/settings/display/locked/pages/page_selection/page2
function pudge:lobby/settings/display/locked/pages/page_selection/page3
function pudge:lobby/settings/display/locked/pages/page_selection/page4
function pudge:lobby/settings/display/locked/pages/page_selection/page5
function pudge:lobby/settings/display/locked/pages/page_selection/forward