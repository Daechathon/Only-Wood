#permit nether portals
execute as @a at @s run execute if block ~ ~-0.1 ~ minecraft:obsidian at @s run execute if block ~ ~ ~ minecraft:nether_portal run return 0

#kaboom
    #center
execute as @a at @s run execute unless block ~ ~-0.1 ~ #only_wood:permitted_blocks at @s run function only_wood:boom_player

    #edges
execute as @a at @s run execute unless block ~0.3 ~-0.1 ~ #only_wood:permitted_blocks at @s run function only_wood:boom_player
execute as @a at @s run execute unless block ~-0.3 ~-0.1 ~ #only_wood:permitted_blocks at @s run function only_wood:boom_player
execute as @a at @s run execute unless block ~ ~-0.1 ~0.3 #only_wood:permitted_blocks at @s run function only_wood:boom_player
execute as @a at @s run execute unless block ~ ~-0.1 ~-0.3 #only_wood:permitted_blocks at @s run function only_wood:boom_player
