execute as @a[tag=mp9_reload] if score @s timer matches 29.. if entity @s[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":5}}}] run function guns:reload
execute as @a[tag=mp9_reload] if score @s timer matches 29.. if entity @s[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":5}}}] at @s run playsound minecraft:item.armor.equip_wolf master @s ~ ~ ~ 100 0.75
execute as @a[tag=mp9_reload] if score @s timer matches 29.. if entity @s[nbt={SelectedItem:{id:"minecraft:stick",count:1,components:{"minecraft:custom_model_data":5}}}] run advancement revoke @s only guns:shoot_mp9
execute as @a[tag=mp9_reload] if score @s timer matches 29.. run tag @s remove mp9_reload
