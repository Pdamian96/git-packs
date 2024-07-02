
execute as @a[scores={on_cooldown=1},tag=mp40_cooldown] if score @s shooting_cooldown_timer matches 3.. run advancement revoke @s only guns:shoot_mp40
execute as @a[scores={on_cooldown=1},tag=mp40_cooldown] if score @s shooting_cooldown_timer matches 3.. run tag @s add mp40_dummy
execute as @a[scores={on_cooldown=1},tag=mp40_cooldown] if score @s shooting_cooldown_timer matches 3.. run scoreboard players set @s on_cooldown 0
execute as @a[tag=mp40_dummy] if score @s shooting_cooldown_timer matches 3.. run tag @s remove mp40_cooldown
execute as @a[tag=mp40_dummy] if score @s shooting_cooldown_timer matches 3.. run tag @s remove mp40_dummy
