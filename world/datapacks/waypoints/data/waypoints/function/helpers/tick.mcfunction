execute as @a[scores={add_wp=1..}] at @s run function waypoints:add
execute as @a[scores={add_wp=1..}] run scoreboard players set @s add_wp 0
scoreboard players enable @a add_wp