# {command, max}

$$(command)

# debug
# tellraw @a {score: {name:"#index", objective: "for_command_temp"}}
# tellraw @a {storage: "util:", nbt: "index"}

# increment
scoreboard players add #index for_command_temp 1
execute store result storage util: index int 1 run scoreboard players get #index for_command_temp

# while
$execute if score #index for_command_temp matches ..$(max) run function util:_for/_command_inner {command: "$(command)", max: $(max)}
