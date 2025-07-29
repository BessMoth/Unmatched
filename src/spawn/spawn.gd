extends Node2D
class_name Spawn

@export var delay:float = 2
@export var spawn_scene: PackedScene = load("res://src/fire/fire.tscn")

func _process(_delta: float) -> void:
	spwan()
	
func spwan()->void:
	add_child(spawn_scene.instantiate())
	set_process(false)
	await get_tree().create_timer(delay).timeout
	set_process(true)
