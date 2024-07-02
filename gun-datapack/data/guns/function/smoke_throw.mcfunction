execute anchored eyes run summon tnt ^ ^ ^ {fuse:150s,Tags:["smoke"]}
execute as @e[type=tnt,tag=smoke,tag=!motion_added] at @s rotated as @p run function guns:frag_motion
item modify entity @s weapon.mainhand guns:remove_1_item
scoreboard players reset @s grenade_cooldown
tag @s add smoke_cooldown
schedule function guns:grenades/smoke_cooldown 15t
