extends CanvasLayer
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func change_scene(scene: PackedScene)->void:
	animation_player.play("dissolve")
	await animation_player.animation_finished
	get_tree().change_scene_to_packed(scene)
	animation_player.play_backwards("dissolve")
