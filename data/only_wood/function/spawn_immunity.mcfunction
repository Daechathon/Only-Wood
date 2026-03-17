#Title
execute as @s at @s run title @s title {"text": "STAND ON WOOD OR DIE", "color": "yellow"}
execute as @s at @s run title @s times 10 400 10

stopwatch create impending_doom
execute as @s at @s run scoreboard players reset @s player_immunity
execute as @s at @s store result score @s player_immunity run stopwatch query impending_doom

#add const immunity_time
execute as @s at @s run scoreboard players operation @s player_immunity += 20 math

execute as @s at @s run function only_wood:init_bossbar with storage minecraft:player_id player

#grant the immunity
#execute as @s at @s run scoreboard players set @s boom_immunity 1
execute as @s at @s run data modify storage minecraft:player_id player.immune set value 1

execute as @s at @s run advancement revoke @s only only_wood:dimension_spawn_protection
