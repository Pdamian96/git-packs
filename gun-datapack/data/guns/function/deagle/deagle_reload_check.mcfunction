execute as @a[tag=deagle_reload] if score @s timer matches 99.. if entity @s[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":4}}}] run function guns:reload
execute as @a[tag=deagle_reload] if score @s timer matches 99.. if entity @s[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":4}}}] at @s run playsound minecraft:item.armor.equip_wolf master @s ~ ~ ~ 100 0.75
execute as @a[tag=deagle_reload] if score @s timer matches 99.. if entity @s[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":4}}}] run advancement revoke @s only guns:shoot_deagle
execute as @a[tag=deagle_reload] if score @s timer matches 99.. run tag @s remove deagle_reload
