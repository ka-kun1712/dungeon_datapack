# {command, data, index, for_id}

$data modify storage util: for_data_args_$(for_id).value merge from $(data)[$(index)]

$$(command)

# debug
# $tellraw @a {score: {name:"#index", objective: "for_data_temp_$(for_id)"}}
# $tellraw @a {storage: "util:", nbt: "for_data_args_$(for_id).index"}

# increment
$scoreboard players add #index for_data_temp_$(for_id) 1
$execute store result storage util: for_data_args_$(for_id).index int 1 run scoreboard players get #index for_data_temp_$(for_id)

$function util:_for/_data_inner_next with storage util: for_data_args_$(for_id)
