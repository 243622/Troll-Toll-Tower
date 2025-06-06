extends Path2D


func _physics_process(delta: float) -> void:
	const move_speed := 300
	$PathFollow2D.progress += move_speed * delta
