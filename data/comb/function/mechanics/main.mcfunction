# --- Логика анимации и ходов (без изменений) ---
execute if score *end turn matches 0 run function comb:mechanics/an_start
execute if score *end turn matches 1 if score *animation turn < *max turn run fill 30 -57 7 32 -59 7 birch_planks
execute if score *end turn matches 1 if score *animation turn < *max turn unless score *level main matches 8 run schedule function comb:mechanics/animation 4t append
execute if score *end turn matches 1 if score *animation turn < *max turn if score *level main matches 8 run schedule function comb:mechanics/animation 2t append
execute if score *end turn matches 1 if score *animation turn < *max turn run scoreboard players set *end turn -2
execute if score *end turn matches 1 if score *animation turn >= *max turn run function comb:mechanics/end

# --- Проверка кнопок (без изменений) ---
execute as @e[tag=button,type=marker] at @s if block ~ ~ ~ polished_blackstone_button[powered=true] unless score *end turn matches 2 run setblock ~ ~ ~ polished_blackstone_button[facing=south]
execute as @e[tag=button,type=marker] at @s if block ~ ~ ~ polished_blackstone_button[powered=true] if score *end turn matches 2 unless score *level main matches 9 run function comb:mechanics/test
execute as @e[tag=button,type=marker] at @s if block ~ ~ ~ polished_blackstone_button[powered=true] unless score @s main matches 3 if score *end turn matches 2 if score *level main matches 9 run function comb:mechanics/test1

# --- Сброс таймеров кнопок (без изменений) ---
execute as @e[tag=button,type=marker,scores={main=1}] run scoreboard players set @s Timer 0
execute as @e[tag=button,type=marker,scores={main=1}] run scoreboard players set @s main 2
execute as @e[tag=button,type=marker,scores={main=2}] at @s run function comb:mechanics/clear

# --- ВАЖНО: Обновленная проверка предметов (Data Components) ---
# Раньше было: nbt={Item:{tag:{it:1}}}
# Теперь: nbt={Item:{components:{"minecraft:custom_data":{it:1}}}}

execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{it:1}}}}] run tp @a 1 -59 -15
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{it:1}}}}] if score *level main matches 6.. run scoreboard players set *level main 1
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{it:1}}}}] run function comb:mechanics/restart

# Проверка предмета с тегом it:2
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{it:2}}}}] run function comb:mechanics/mistake

# --- Титулы и Actionbar (без изменений) ---
execute if score *level main matches 6.. run title @a times 0 10 0
execute if score *level main matches 6 run title @a actionbar [{"score":{"name": "*comboes6","objective": "main"},"color": "red","bold": true},{"text": " Серия"}]
execute if score *level main matches 7 run title @a actionbar [{"score":{"name": "*comboes7","objective": "main"},"color": "red","bold": true},{"text": " Серия"}]
execute if score *level main matches 8 run title @a actionbar [{"score":{"name": "*comboes8","objective": "main"},"color": "red","bold": true},{"text": " Серия"}]
execute if score *level main matches 9 run title @a actionbar [{"score":{"name": "*comboes9","objective": "main"},"color": "red","bold": true},{"text": " Серия"}]