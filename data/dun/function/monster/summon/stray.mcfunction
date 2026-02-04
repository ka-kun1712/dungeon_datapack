# 

summon stray ~ ~ ~ {Tags:["dun","summon"]}

function dun:monster/_equipment
execute if data storage dun: _monster.equipment run data modify entity @e[sort=nearest,limit=1] equipment merge from storage dun: _monster.equipment
data remove storage dun: _monster.equipment

tag @e[sort=nearest,limit=1] remove summon