
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick",count:1}}] run scoreboard players set @s reloads 0

#stores holding gun registry in reloading gun
execute store result score @s reloading_gun run data get entity @s SelectedItem.components.minecraft:custom_model_data

title @s actionbar {"text":"Reloading...","italic":true,"color":"gray"}

#Gets max ammo for single shot reloading weapons

execute store result score @s max_ammo run data get entity @s SelectedItem.components.minecraft:custom_data.max_ammo
execute store result score @s ammo run data get entity @s SelectedItem.components.minecraft:custom_data.ammo
#set ammo in current gun to 0

#depending on gun, schedule reload function check n so on
#test gun
execute if score @s reloading_gun matches 1 run function guns:dc15a/dc15a_reload_wait

execute if score @s reloading_gun matches 2 run function guns:mp40/mp40_reload_wait

execute if score @s reloading_gun matches 3 unless score @s ammo >= @s max_ammo run function guns:remington870/remington870_reload_wait
execute if score @s reloading_gun matches 3 if score @s ammo >= @s max_ammo run title @s actionbar {"text":"Gun is at Max Ammo!","italic":false,"color":"dark_red"}
execute if score @s reloading_gun matches 3 if score @s ammo >= @s max_ammo run advancement revoke @s only guns:shoot_remington870

execute if score @s reloading_gun matches 4 run function guns:deagle/deagle_reload_wait

execute if score @s reloading_gun matches 5 run function guns:mp9/mp9_reload_wait