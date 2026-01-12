# {name: "string" | raw, type: entity_type, tag: string, health: number}

scoreboard players add #index boss_summon_id 1
execute store result storage temp:boss summon.id int 1 run scoreboard players get #index boss_summon_id

$data modify storage temp:boss summon.name set value "$(name)"
$data modify storage temp:boss summon.health set value "$(health)"

$summon zombie ~ ~ ~ {Tags:["summoning_boss","boss","$(tag)"],attributes:[{id:"minecraft:max_health",base:$(health)}],Health:$(health),CustomName:"$(name)",CustomNameVisible:true}

data modify entity @e[limit=1,tag=summoning_boss] data.dun.boss.id set from storage temp:boss summon.id

data modify storage dun:boss targets append from storage temp:boss summon.id
tellraw @a {storage:"temp:boss",nbt:"summon"}
function dun:boss/_add_bossbar with storage temp:boss summon

# clear
data remove storage temp:boss summon
tag @e[limit=1,tag=summoning_boss] remove summoning_boss