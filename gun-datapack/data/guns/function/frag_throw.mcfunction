execute anchored eyes run summon tnt ^ ^ ^ {fuse:35s,Tags:["frag"]}
execute as @e[type=tnt,tag=frag,tag=!motion_added] at @s rotated as @p run function guns:frag_motion
item modify entity @s weapon.mainhand guns:remove_1_item
scoreboard players reset @s grenade_cooldown
tag @s add frag_cooldown
schedule function guns:grenades/frag_cooldown 15t

