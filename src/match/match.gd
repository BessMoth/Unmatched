extends Area2D
class_name Match
signal lostLives
signal Lost

@export var lives: int = 3

func _on_body_entered(body: Node2D) -> void:
	if body is Fire:
		lives-= 1
		emit_signal("lostLives")
		body.queue_free() # Free fire
	if lives == 0:
		emit_signal("Lost")
		
func getLives()->int:
	return lives

func hasLost()->bool:
	if lives == 0:
		return true
	return false
