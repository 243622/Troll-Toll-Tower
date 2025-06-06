extends CharacterBody2D

var speed = 25
var tollTower_chase = false
var tollTower = null

func _physics_process(delta: float) -> void:
	if tollTower_chase and tollTower:
		var direction = global_position.direction_to(tollTower.global_position)
		velocity = direction * 300.0
		move_and_slide()

		$AnimatedSprite2D.play("run_horizontal")
		$AnimatedSprite2D.flip_h = true


func _on_area_2d_body_entered(body: Node2D) -> void:
	tollTower = body
	tollTower_chase = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	tollTower = null
	tollTower_chase = false
