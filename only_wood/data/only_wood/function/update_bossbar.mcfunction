#say update_bossbar

execute as @s at @s run scoreboard players operation @s math = @s player_immunity
execute store result score time math run stopwatch query impending_doom
execute as @s at @s run scoreboard players operation @s math -= time math


#debug
#execute as @s at @s store result score self_math player_immunity run scoreboard players get @s math
#execute store result score timer player_immunity run stopwatch query impending_doom

#update
$execute as @s at @s store result bossbar $(id) value run scoreboard players get @s math

#remove
execute as @s at @s unless score @s math matches ..0 run return 0

$execute as @s at @s run bossbar remove $(id)
execute as @s at @s run scoreboard players set @s player_immunity -1
#execute as @s at @s run scoreboard players set @s boom_immunity 0
execute as @s at @s run data remove storage minecraft:player_id player.immune
