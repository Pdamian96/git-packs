
execute as @a[scores={on_cooldown=1},tag=mp9_cooldown] if score @s shooting_cooldown_timer matches 2.. run advancement revoke @s only guns:shoot_mp9
execute as @a[scores={on_cooldown=1},tag=mp9_cooldown] if score @s shooting_cooldown_timer matches 2.. run tag @s add mp9_dummy
execute as @a[scores={on_cooldown=1},tag=mp9_cooldown] if score @s shooting_cooldown_timer matches 2.. run scoreboard players set @s on_cooldown 0
execute as @a[tag=mp9_dummy] if score @s shooting_cooldown_timer matches 2.. run tag @s remove mp9_cooldown
execute as @a[tag=mp9_dummy] if score @s shooting_cooldown_timer matches 2.. run tag @s remove mp9_dummy
