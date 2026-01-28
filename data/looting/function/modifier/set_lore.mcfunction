# {index, value}

$say $(index) $(value)

$data modify storage looting: item_modifier.lore set from entity @s SelectedItem.components.minecraft:custom_data.looting.lore[$(index)]

tellraw @a {storage:"looting:",nbt:"item_modifier.lore"}

item modify entity @s weapon.mainhand looting:lore

# clean
data remove storage looting: item_modifier.lore
