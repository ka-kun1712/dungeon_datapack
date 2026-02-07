# {pos: position}

$tp @s $(pos)
effect give @s minecraft:blindness 2 0 true
effect give @s minecraft:slowness 1 3 true
$playsound minecraft:block.portal.travel master @s $(pos) 0.08
