
execute as @a[scores={on_cooldown=1},tag=dc15a_cooldown] if score @s shooting_cooldown_timer matches 5.. run advancement revoke @s only guns:shoot_dc15a
execute as @a[scores={on_cooldown=1},tag=dc15a_cooldown] if score @s shooting_cooldown_timer matches 5.. run tag @s add dc15a_dummy
execute as @a[scores={on_cooldown=1},tag=dc15a_cooldown] if score @s shooting_cooldown_timer matches 5.. run scoreboard players set @s on_cooldown 0
execute as @a[tag=dc15a_dummy] if score @s shooting_cooldown_timer matches 5.. run tag @s remove dc15a_cooldown
execute as @a[tag=dc15a_dummy] if score @s shooting_cooldown_timer matches 5.. run tag @s remove dc15a_dummy
