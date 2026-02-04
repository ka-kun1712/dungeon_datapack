# 

summon pillager ~ ~ ~ {Tags:["dun","summon"]}

data modify entity @e[tag=summon,sort=nearest,limit=1] equipment merge value {mainhand:{id:"crossbow"},offhand:{id:"tipped_arrow",components:{item_model:"air"}}}

tag @e[type=pillager,sort=nearest,limit=1] remove summon