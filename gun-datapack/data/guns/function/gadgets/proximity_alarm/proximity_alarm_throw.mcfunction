execute anchored eyes run summon minecart ^ ^ ^ {Tags:["proximity_alarm"]}
execute as @e[type=minecart,tag=proximity_alarm,tag=!motion_added] at @s rotated as @p run function guns:frag_motion
item modify entity @s weapon.mainhand guns:remove_1_item
advancement revoke @s only guns:throw_proximity_alarm

