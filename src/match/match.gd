extends Area2D

@export var lives: int = 3

func _on_body_entered(body: Node2D) -> void:
	if body is Fire:
		lives-= 1
		body.queue_free()
		print(lives)
