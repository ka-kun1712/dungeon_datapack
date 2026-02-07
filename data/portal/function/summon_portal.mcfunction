# {pos: position, distance: int}

$execute if loaded $(pos)

$summon marker ~ ~ ~ {Tags:[portal],data:{name:"Portal",portal:{pos:"$(pos)",distance:$(distance)}}}
