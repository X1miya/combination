execute if score *mode main matches 0 run tellraw @a {"text": "Вы должны сперва пройти основной режим","bold": true,"color": "red"}
#execute if score *mode main matches 1 run scoreboard players set *level main 6
execute if score *mode main matches 1 run tp @a -36 -59 -52
execute if score *mode main matches 1 run item replace entity @a container.8 with barrier{display:{Name:'[{"text":"Выйти","italic":false,"color":"dark_red","bold":true}]',Lore:['[{"text":"Для использования, нужно выбросить данный предмет.","italic":false}]']},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:1,it:1}
#execute if score *mode main matches 1 run function comb:mechanics/start