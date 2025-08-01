extends Node2D

func _on_match_lost() -> void:
	get_tree().paused = true # You lost 
