extends Area2D
class_name Match
signal lostLives

@export var lives: int = 3

func _on_body_entered(body: Node2D) -> void:
	if body is Fire:
		lives-= 1
		emit_signal("lostLives")
		body.queue_free()
		
func getLives()->int:
	return lives
