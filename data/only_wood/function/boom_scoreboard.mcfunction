#generate unique player id
execute as @a at @s unless data storage player_id player.id run execute store result storage minecraft:player_id player.id int 1 run random value 0..2147483646

#initial spawn immunity
execute as @a at @s unless entity @s[scores={player_immunity=-1..}] run execute at @s run function spawn_immunity

#boss bar
execute as @a at @s run function only_wood:update_bossbar with storage minecraft:player_id player

