#spawn immunity
execute as @a at @s if data storage player_id player.immune run return 0

execute if entity @s[nbt={Health:0.0f}] run return 0
gamerule show_death_messages false


#say @s was executed for heresy
tellraw @a [{"type":"selector","selector":"@s"},{"text":" exploded"}]

summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~ ~ ~
summon minecraft:lightning_bolt ~ ~ ~

summon minecraft:fireball ~ ~ ~ {Motion:[0.0,-1.0,0.0], ExplosionPower:10}
kill @s
gamerule show_death_messages true

execute as @a at @s run scoreboard players add @s boom_counter 1

#advancement: explode
execute as @s at @s if score @s boom_counter matches 1.. run advancement grant @s only only_wood:explode

function only_wood:spawn_immunity
