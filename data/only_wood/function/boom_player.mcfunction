execute if entity @s[nbt={Health:0.0f}] run return 0
gamerule show_death_messages false

#$say @s was killed by $(block_id)
say @s was executed for heresy

summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~ ~ ~

summon minecraft:fireball ~ ~ ~ {Motion:[0.0,-1.0,0.0], ExplosionPower:10}
kill @s
gamerule show_death_messages true

execute as @a at @s run scoreboard players add @s boom_counter 1

function only_wood:spawn_immunity
