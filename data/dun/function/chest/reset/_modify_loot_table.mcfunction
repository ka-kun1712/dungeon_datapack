# {pos}

$execute unless loaded $(pos) run tellraw @a[team=admin,tag=debug] ["$(pos) is not loaded"]
$execute unless loaded $(pos) run return fail

$execute unless block $(pos) #util:can_loot_table run tellraw @a[team=admin,tag=debug] ["missing position: ",{text:"[$(pos)]",color:green,click_event:{action:"suggest_command",command:"/tp @s $(pos)"},hover_event:{action:"show_text",value:{translate:"chat.coordinates.tooltip"}}}," ",{text:"[削除]",color:red,click_event:{action:"suggest_command",command:"/function dun:chest/remove_chest {pos:'$(pos)'}"},hover_event:{action:"show_text",value:"このチェストを削除する"}}]
$execute if block $(pos) #util:can_loot_table run scoreboard players add #count chest 1

$execute if data storage util: for_data_args_0{tier:1} run data modify block $(pos) LootTable set value "dun:normal_chest"
$execute if data storage util: for_data_args_0{tier:2} run data modify block $(pos) LootTable set value "dun:rare_chest"
$execute if data storage util: for_data_args_0{tier:2} run data modify block $(pos) lock set value {predicates:{custom_data:{dun:{key:1b}}}}
