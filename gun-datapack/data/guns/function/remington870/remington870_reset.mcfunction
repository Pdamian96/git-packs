
execute as @a[scores={on_cooldown=1},tag=remington870_cooldown] if score @s shooting_cooldown_timer matches 16.. run advancement revoke @s only guns:shoot_remington870
execute as @a[scores={on_cooldown=1},tag=remington870_cooldown] if score @s shooting_cooldown_timer matches 16.. run tag @s add remington870_dummy
execute as @a[scores={on_cooldown=1},tag=remington870_cooldown] if score @s shooting_cooldown_timer matches 16.. run scoreboard players set @s on_cooldown 0
execute as @a[tag=remington870_dummy] if score @s shooting_cooldown_timer matches 16.. run tag @s remove remington870_cooldown
execute as @a[tag=remington870_dummy] if score @s shooting_cooldown_timer matches 16.. run tag @s remove remington870_dummy
