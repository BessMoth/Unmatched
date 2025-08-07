extends Node2D
class_name Player
@onready var hand: ColorRect = $hand
#@export var radius:float = 100.0
#@export var speed:float= 100.0
@export var turn_center:Vector2 = Vector2(300, 0)
@onready var hand_center:Vector2 = hand.position + Vector2(hand.size.x/2, hand.size.y/2);
@onready var hand_center_turn:float # set hand in the center 
var tween: Tween

func _ready() -> void:
	# for turn
	turn_center += hand_center
	hand_center_turn = (turn_center.x - hand.size.x/2)
	hand.position.x = hand_center_turn - turn_center.x/2
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("up"):
		move_animation(hand_center_turn, -hand_center_turn + hand_center_turn)
	if event.is_action_pressed("left"):
		move_animation(hand_center_turn - turn_center.x/2, turn_center.y - hand.size.y/2)
	if event.is_action("right"):
		move_animation(hand_center_turn + turn_center.x/2, turn_center.y - hand.size.y/2)

func new_tween():
	if tween and tween.is_running():
		tween.kill()
	tween = create_tween().set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_IN_OUT)
	
func move_animation(x:float, y:float):
	new_tween()
	tween.tween_property(hand, "position",Vector2(x, y), 2)
	
func _draw() -> void:
	draw_circle(turn_center, 10, Color.ALICE_BLUE)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Fire:
		body.queue_free()
