#minecraft:tick

execute as @a at @s if entity @s[predicate=only_wood:banned_items] run function only_wood:boom_player

#check for legal pickaxes -> return
execute as @a at @s if entity @s[predicate=only_wood:legal_pickaxes] run return 0

execute as @a at @s if entity @s[predicate=only_wood:banned_pickaxes] run function only_wood:boom_player
