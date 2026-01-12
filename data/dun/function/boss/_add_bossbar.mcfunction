# {id: string, name: string, health: number}

$say bossbar id:$(id)

$bossbar add dun:$(id) "$(name)"
$bossbar set dun:$(id) max $(health)
$bossbar set dun:$(id) players @a
