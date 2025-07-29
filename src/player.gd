extends Node2D

@onready var hand: ColorRect = $hand
#@export var radius:float = 100.0
#@export var speed:float= 100.0
@export var turn_center:Vector2 = Vector2(300, 0)
@onready var hand_center:Vector2 = hand.position + Vector2(hand.size.x/2, hand.size.y/2);
@onready var hand_center_turn:float # set hand in the center 

func _ready() -> void:
	turn_center += hand_center
	hand_center_turn = (turn_center.x - hand.size.x/2)
	hand.position.x = hand_center_turn - turn_center.x/2
	
func _process(delta: float) -> void:
	pass
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_up"):
		hand.position.x = hand_center_turn
		hand.position.y = -hand_center_turn + hand_center_turn
	if event.is_action_pressed("ui_left"):
		hand.position.x = hand_center_turn - turn_center.x/2
		hand.position.y = turn_center.y - hand.size.y/2
	if event.is_action("ui_right"):
		hand.position.x = hand_center_turn + turn_center.x/2
		hand.position.y = turn_center.y - hand.size.y/2

func _draw() -> void:
	draw_circle(turn_center, 10, Color.ALICE_BLUE)
	pass
