#minecraft:tick

execute as @a at @s if entity @s[predicate=only_wood:banned_items] run say ILLEGAL ITEMS EQUPPED!

#check for legal pickaxes -> return
execute as @a at @s if entity @s[predicate=only_wood:legal_pickaxes] run return 0

execute as @a at @s if entity @s[predicate=only_wood:banned_pickaxes] run say ILLEGAL ITEMS EQUPPED!
