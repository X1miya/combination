function comb:mechanics/restart

#
tp @a 31 -59 11 180 0
execute at @a run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1
#

#scoreboard players operation *max turn = *example turn
scoreboard players set *max turn 1
execute if score *level main matches 1 run scoreboard players set *maximum turn 5
execute if score *level main matches 2 run scoreboard players set *maximum turn 7
execute if score *level main matches 3 run scoreboard players set *maximum turn 10
execute if score *level main matches 4 run scoreboard players set *maximum turn 12
execute if score *level main matches 5 run scoreboard players set *maximum turn 15
execute if score *level main matches 6.. run scoreboard players set *maximum turn 999999999
scoreboard players set *score turn 0
#scoreboard players set *animation turn 1
function comb:mechanics/spawn
schedule function comb:mechanics/animation 2s append
bossbar set minecraft:progress players @a
bossbar set minecraft:progress visible true

# --- ОБНОВЛЕННЫЕ КОМАНДЫ ВЫДАЧИ ПРЕДМЕТОВ (1.21.11) ---

# Барьер (Выйти) - custom_data:{it:1}
item replace entity @a container.8 with barrier[item_name={"text":"Выйти","italic":false,"color":"dark_red","bold":true},lore=[{"text":"Для использования, нужно выбросить данный предмет.","italic":false}],enchantment_glint_override=true,custom_data={it:1}]

# Книга (Рестарт) - custom_data:{it:2}
item replace entity @a container.4 with book[item_name={"text":"Рестарт","italic":false,"color":"gold","bold":true},lore=[{"text":"Для использования, нужно выбросить данный предмет.","italic":false}],enchantment_glint_override=true,custom_data={it:2}]

# -----------------------------------------------------

bossbar set minecraft:progress color yellow
execute if score *level main matches ..5 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (","color": "gold"},{"score":{"name": "*level","objective": "main"},"color": "gold"},{"text": " Уровень)","color": "gold"}]
execute if score *level main matches 6 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Бесконечный Режим)","color": "gold"}]
execute if score *level main matches 7 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Разброс)","color": "gold"}]
execute if score *level main matches 8 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Блиц)","color": "gold"}]
execute if score *level main matches 9 run bossbar set minecraft:progress name [{"score":{"name": "*animation","objective": "turn"},"color": "yellow","bold": true},{"text": " (Двойной)","color": "gold"}]

execute store result bossbar minecraft:progress max run scoreboard players get *max turn
execute store result bossbar minecraft:progress value run scoreboard players get *animation turn