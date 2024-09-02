extends Button
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"

func _on_mouse_entered() -> void:
	#Scales button up when it's hovered over
	animation_player.play("ScaleUp")
		 

func _on_mouse_exited() -> void:
	#Resets the button once it's not hovered over
	animation_player.play("ScaleDown")


func _on_pressed() -> void:
	#Stops music from playing twice?? Weird bug
	Music.stop()
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
	pass # Replace with function body.
