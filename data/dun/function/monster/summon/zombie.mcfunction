# 

function dun:monster/_equipment

summon zombie ~ ~ ~ {Tags:["dun","summon"]}

data modify entity @e[type=zombie,sort=nearest,limit=1] equipment merge from storage dun: _monster.equipment

data remove storage dun: _monster.equipment

tag @e[type=zombie,sort=nearest,limit=1] remove summon