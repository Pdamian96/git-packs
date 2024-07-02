##
 # returnitem.mcfunction
 # 
 #
 # Created by .
##

execute on origin run scoreboard players set @s reloads 1
data modify entity @s PickupDelay set value 0s
execute as @s run data modify entity @s Owner set from entity @s Thrower
execute as @s run data modify entity @s PickupDelay set value 0