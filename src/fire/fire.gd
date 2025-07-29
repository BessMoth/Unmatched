extends Node2D
class_name Fire;

@export var speed:float= 100

func _process(delta: float) -> void:
	self.position.x += speed * delta
