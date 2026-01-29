# {command, max}

# init
data modify storage util: index set value 0
scoreboard players set #index for_command_temp 0

$function util:_for/_command_inner {command: "$(command)", max: $(max)}

# clear
data remove storage util: index
scoreboard players set #index for_command_temp 0
