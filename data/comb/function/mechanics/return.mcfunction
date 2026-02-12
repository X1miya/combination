execute if score *level main matches 7 run kill @e[type=marker,tag=test]
execute if score *level main matches 7 run scoreboard players set *score turn 0
function comb:mechanics/spawn
bossbar set progress visible true
scoreboard players set *animation turn 0
scoreboard players set *thisturn turn 1
schedule function comb:mechanics/animation 1s append
playsound entity.player.levelup master @a ~ ~10000 ~ 999999
scoreboard players set *end turn -1