#default page
#top row
setblock 199 66 -66 oak_wall_sign[facing=south]
setblock 200 66 -66 oak_wall_sign[facing=south]
setblock 201 66 -66 oak_wall_sign[facing=south]
setblock 202 66 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"blue",messages:[{text:""}, {"translate":"text.lobby.settings.signs.credits.title.1","color":"dark_green"}, {"translate":"text.lobby.settings.signs.credits.title.2","color":"white"}, {text:""}]}}
setblock 203 66 -66 oak_wall_sign[facing=south]
setblock 204 66 -66 oak_wall_sign[facing=south]
setblock 205 66 -66 oak_wall_sign[facing=south]
#2nd row
setblock 199 65 -66 air
setblock 200 65 -66 player_wall_head[facing=south]{profile:{name:"Strongis13"}}
setblock 201 65 -66 air
execute unless score $RealmsRelease var matches 1 run setblock 202 65 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"light_gray",messages:[[{"translate":"text.lobby.settings.signs.credits.download.public.1","color":"yellow"},{"translate":"text.lobby.settings.signs.credits.download.public.2","color":"white"}], {"translate":"text.lobby.settings.signs.credits.download.public.3","color":"white"}, {"translate":"text.lobby.settings.signs.credits.download.public.4","color":"white"}, {"translate":"text.lobby.settings.signs.credits.download.public.5","click_event":{"action":"run_command","command": "/trigger lobbysigns set 501"},"color": "green"}]}}
execute if score $RealmsRelease var matches 1 run setblock 202 65 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"light_gray",messages:[[{"translate":"text.lobby.settings.signs.credits.download.realms.1","color":"yellow"},{"translate":"text.lobby.settings.signs.credits.download.realms.2","color":"white"}], {"translate":"text.lobby.settings.signs.credits.download.realms.3","color":"white"}, {"translate":"text.lobby.settings.signs.credits.download.realms.4","color":"white"}, {"translate":"text.lobby.settings.signs.credits.download.realms.5","click_event":{"action":"run_command","command": "/trigger lobbysigns set 501"},"color": "green"}]}}
setblock 203 65 -66 air
setblock 204 65 -66 player_wall_head[facing=south]{profile:{name:"Soccby"}}
setblock 205 65 -66 air
#3rd row
setblock 199 64 -66 air
setblock 200 64 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"white",messages:[{"text":"Strongis13","color":"aqua"}, {"translate":"text.lobby.settings.signs.credits.strongis13.role","color":"white"}, {text:""}, {text:""}]}}
setblock 201 64 -66 air
setblock 202 64 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"light_gray",messages:[[{"translate":"text.lobby.settings.signs.credits.trailer.1","color":"yellow"},{"translate":"text.lobby.settings.signs.credits.trailer.2","color":"white"}], {"translate":"text.lobby.settings.signs.credits.trailer.3","color":"white"}, {"translate":"text.lobby.settings.signs.credits.trailer.4","color":"white"}, {"text":"","click_event":{"action":"run_command","command": "/trigger lobbysigns set 500"}}]}}
setblock 203 64 -66 air
setblock 204 64 -66 oak_wall_sign[facing=south]{front_text:{has_glowing_text:true,color:"white",messages:[{"text":"Soccby","color":"aqua"}, {"translate":"text.lobby.settings.signs.credits.soccby.role","color":"white"}, {text:""}, {text:""}]}}
setblock 205 64 -66 air
#bottom row (navigation)
function pudge:lobby/settings/display/unlocked/pages/page_selection/back
function pudge:lobby/settings/display/unlocked/pages/page_selection/page1
function pudge:lobby/settings/display/unlocked/pages/page_selection/page2
function pudge:lobby/settings/display/unlocked/pages/page_selection/page3
function pudge:lobby/settings/display/unlocked/pages/page_selection/page4
function pudge:lobby/settings/display/unlocked/pages/page_selection/page5
function pudge:lobby/settings/display/unlocked/pages/page_selection/forward