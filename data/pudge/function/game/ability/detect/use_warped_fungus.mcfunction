execute if data entity @s SelectedItem.components.minecraft:custom_data.Grab at @s anchored eyes positioned ^ ^ ^ anchored feet run function pudge:game/ability/grab/attempt
execute if data entity @s SelectedItem.components.minecraft:custom_data.GrabDrop unless score @s grabDropDelay matches 1.. run function pudge:game/ability/grab/drop

scoreboard players set @s clickFungus 0
