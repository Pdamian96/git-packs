execute as @s unless data entity @s Inventory[{Slot:-106b}] store result score @s ammo run data get entity @s SelectedItem.components.minecraft:custom_data.ammo
execute as @s unless data entity @s SelectedItem store result score @s ammo run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.ammo
execute if score @s ammo matches 1.. unless entity @s[tag=remington870_reload] run function guns:remington870/remington870_shoot_d

execute if score @s ammo matches 0 run playsound minecraft:item.shield.break master @s ~ ~ ~ 100 2

execute if score @s ammo matches 1.. run scoreboard players operation @s ammo -= 1 numbers

execute unless entity @s[tag=remington870_reload] store result storage minecraft:test ammo int 1 run scoreboard players get @s ammo
execute unless entity @s[tag=remington870_reload] as @s unless data entity @s Inventory[{Slot:-106b}] run item modify entity @s weapon.mainhand guns:copy_ammo_to_item
execute unless entity @s[tag=remington870_reload] as @s unless data entity @s SelectedItem run item modify entity @s weapon.offhand guns:copy_ammo_to_item

title @s actionbar ["",{"text":"Ammo: ","color":"gray"},{"score":{"name":"@s","objective":"ammo"}},"/",{"nbt":"SelectedItem.components.minecraft:custom_data.max_ammo","entity":"@s"}]

scoreboard players set @s on_cooldown 1
scoreboard players reset @s shooting_cooldown_timer
tag @s add remington870_cooldown
execute as @s run schedule function guns:remington870/remington870_reset 16t append


