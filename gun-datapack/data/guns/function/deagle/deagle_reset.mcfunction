
execute as @a[scores={on_cooldown=1},tag=deagle_cooldown] if score @s shooting_cooldown_timer matches 16.. run advancement revoke @s only guns:shoot_deagle
execute as @a[scores={on_cooldown=1},tag=deagle_cooldown] if score @s shooting_cooldown_timer matches 16.. run tag @s add deagle_dummy
execute as @a[scores={on_cooldown=1},tag=deagle_cooldown] if score @s shooting_cooldown_timer matches 16.. run scoreboard players set @s on_cooldown 0
execute as @a[tag=deagle_dummy] if score @s shooting_cooldown_timer matches 16.. run tag @s remove deagle_cooldown
execute as @a[tag=deagle_dummy] if score @s shooting_cooldown_timer matches 16.. run tag @s remove deagle_dummy
