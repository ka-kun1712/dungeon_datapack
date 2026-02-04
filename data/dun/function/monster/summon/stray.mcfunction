# 

function dun:monster/_equipment

summon stray ~ ~ ~ {Tags:["dun","summon"]}

execute if data storage dun: _monster.equipment run data modify entity @e[type=stray,sort=nearest,limit=1] equipment merge from storage dun: _monster.equipment

data remove storage dun: _monster.equipment

tag @e[type=stray,sort=nearest,limit=1] remove summon