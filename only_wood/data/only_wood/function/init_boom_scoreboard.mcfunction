scoreboard objectives add player_immunity dummy
scoreboard objectives add math dummy
scoreboard objectives add boom_counter dummy
scoreboard objectives add player_id dummy
scoreboard objectives add obsidian_mined minecraft.broken:minecraft.obsidian

scoreboard players set time math 0
scoreboard players set 20 math 20

scoreboard objectives modify boom_counter displayname "Times Exploded"
scoreboard objectives setdisplay sidebar boom_counter

#say scoreboards initialized
