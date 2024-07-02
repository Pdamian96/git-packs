
execute store result score @s temp run data get entity @s SelectedItem.components.minecraft:custom_data.ammo
scoreboard players add @s temp 1
execute store result storage minecraft:test ammo int 1 run scoreboard players get @s temp
item modify entity @s weapon.mainhand guns:copy_ammo_to_item
execute store result score @s ammo run data get entity @s SelectedItem.components.minecraft:custom_data.ammo
title @s actionbar ["",{"text":"Ammo: ","color":"gray"},{"score":{"name":"@s","objective":"ammo"}},"/",{"nbt":"SelectedItem.components.minecraft:custom_data.max_ammo","entity":"@s"}]