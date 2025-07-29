extends Node2D
class_name Fire;

enum Directions{ DOWN, LEFT, RIGHT }

var direction: Directions
@export var speed:float= 100

func _process(delta: float) -> void:
	if direction == Directions.DOWN:
		goDown(delta)
	elif direction == Directions.LEFT:
		goLeft(delta)
	elif direction == Directions.RIGHT:
		goRight(delta) 	

func goDown(delta:float)->void:
	self.position.y += speed * delta
	
func goLeft(delta:float)->void:
	self.position.x -= speed * delta
	
func goRight(delta)->void:
	self.position.x +=speed * delta
