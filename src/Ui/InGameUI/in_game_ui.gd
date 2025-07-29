extends Control

@export var the_match: Match
@onready var h_box_container: HBoxContainer = $HBoxContainer
@onready var heart_3: ColorRect = $HBoxContainer/Heart3

func _ready() -> void:
	the_match.connect("lostLives", _on_lostLives)

func _on_lostLives()->void:
	if the_match.getLives() >= 0:
		h_box_container.get_children()[the_match.getLives()].modulate.a = 0
