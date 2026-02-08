# {pos}

$execute unless block $(pos) #util:can_loot_table run tellraw @a[team=admin,tag=debug] ["failed position: ",{text:"$(pos)",color:green,click_event:{action:"suggest_command",command:"/tp @s $(pos)"},hover_event:{action:"show_text",value:{translate:"chat.coordinates.tooltip"}}}]
$execute if block $(pos) #util:can_loot_table run scoreboard players add #count chest 1

$data modify block $(pos) LootTable set value "dun:chest"