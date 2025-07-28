extends Node2D

@export var radius:float = 100.0
@export var speed:float= 100.0
@export var turn_center:Vector2 = Vector2(100, 0)
@onready var color_rect: ColorRect = $ColorRect
@onready var rect_center:Vector2 = color_rect.position + Vector2(color_rect.size.x/2, color_rect.size.y/2);

func _ready() -> void:
	turn_center += rect_center
	
func _process(delta: float) -> void:
	pass
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_up"):
		#color_rect.position.x += turn_center.x/2 - color_rect.size.x
		pass
	if event.is_action_pressed("ui_left"):
		
		pass
	if event.is_action("ui_right"):
		pass

func _draw() -> void:
	draw_circle(turn_center, 2, Color.ALICE_BLUE)
	pass
