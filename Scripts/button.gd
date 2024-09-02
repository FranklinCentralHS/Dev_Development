extends Button
var pause = false
func _on_pressed() -> void:
	if pause==false:
		pause=true
		Engine.time_scale=0
	else:
		pause=false
		Engine.time_scale=1
	pass # Replace with function body.
