#predicate zones for spectator and teams
#execute if entity @s[team=spectator,gamemode=adventure] run gamemode spectator @s
execute as @a if entity @s[predicate=pudge:team_select/blue] run team join blue
execute as @a if entity @s[predicate=pudge:team_select/red] run team join red
execute as @a if entity @s[predicate=pudge:team_select/spectator] run team join spectator
execute as @a if entity @s[predicate=pudge:team_select/neutral] run team leave @s
#balance check/auto assign
#border check?
#teleport init players
#random
effect give @a minecraft:saturation 999999 255 true
effect give @a minecraft:resistance 999999 255 true
effect give @a weakness 999999 255 true