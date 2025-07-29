extends Control

@export var scene: PackedScene = preload("res://src/main.tscn")

func _on_start_button_down() -> void:
	SceneTranslation.change_scene(scene)


func _on_settings_pressed() -> void:
	pass # Replace with function body.
	

func _on_quit_button_down() -> void:
	get_tree().quit()
