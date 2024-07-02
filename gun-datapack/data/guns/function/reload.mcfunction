
execute store result storage minecraft:test max_ammo int 1 run data get entity @s SelectedItem.components.minecraft:custom_data.max_ammo
data modify storage minecraft:test ammo set from storage minecraft:test max_ammo
item modify entity @s weapon.mainhand guns:copy_ammo_to_item
execute store result score @s ammo run data get entity @s SelectedItem.components.minecraft:custom_data.ammo
title @s actionbar {"text":"Reloaded!","italic":false,"color":"green"}