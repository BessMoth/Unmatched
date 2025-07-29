extends Node2D
class_name Spawn

@onready var color_rect: ColorRect = $ColorRect

@export var delay:float = 2
@export var spawn_scene: PackedScene = load("res://src/fire/fire.tscn")
@export var spawn_direction: Fire.Directions = Fire.Directions.DOWN

var instance: Fire;

func _process(_delta: float) -> void:
	spwan()
	
func spwan()->void:
	instance = spawn_scene.instantiate()
	instance.direction = spawn_direction
	add_child(instance)
	set_process(false)
	await get_tree().create_timer(delay).timeout
	set_process(true)
