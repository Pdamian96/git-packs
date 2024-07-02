
# store position of arrow
execute store result score @s pos_x run data get entity @s Pos[0] 1000
execute store result score @s pos_y run data get entity @s Pos[1] 1000
execute store result score @s pos_z run data get entity @s Pos[2] 1000

#TP Forward
tp @s ^ ^ ^0.1

# Store second Position
execute store result score @s pos_x_m run data get entity @s Pos[0] 1000
execute store result score @s pos_y_m run data get entity @s Pos[1] 1000
execute store result score @s pos_z_m run data get entity @s Pos[2] 1000

#Subtract first position from second, ending value is the motion
scoreboard players operation @s pos_x_m -= @s pos_x

#Randomize adding bullet spread
execute store result score @s random run random value -2..2 
scoreboard players operation @s pos_x_m += @s random



scoreboard players operation @s pos_y_m -= @s pos_y
#adds bullet spread
execute store result score @s random run random value -2..2
scoreboard players operation @s pos_y_m += @s random

scoreboard players operation @s pos_z_m -= @s pos_z
#adds bullet spread
execute store result score @s random run random value -2..2 
scoreboard players operation @s pos_z_m += @s random


#apply to entity
execute store result entity @s Motion[0] double 0.05 run scoreboard players get @s pos_x_m
execute store result entity @s Motion[1] double 0.05 run scoreboard players get @s pos_y_m
execute store result entity @s Motion[2] double 0.05 run scoreboard players get @s pos_z_m

tag @s add motion_added
