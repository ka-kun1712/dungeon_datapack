# {command, data, for_id, start_index: int}

# init
$scoreboard objectives add for_data_temp_$(for_id) dummy
$scoreboard players set #index for_data_temp_$(for_id) $(start_index)

# init args
$data modify storage util: for_data_args_$(for_id) set value {}

$data modify storage util: for_data_args_$(for_id).command set value "$(command)"
$data modify storage util: for_data_args_$(for_id).data set value "$(data)"
$data modify storage util: for_data_args_$(for_id).for_id set value "$(for_id)"
$data modify storage util: for_data_args_$(for_id).index set value $(start_index)

$execute if data $(data)[$(start_index)] run function util:_for/_data_inner with storage util: for_data_args_$(for_id)

# clear args
$scoreboard objectives remove for_data_temp_$(for_id)
$data remove storage util: for_data_args_$(for_id)
