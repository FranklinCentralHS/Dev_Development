extends Area2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var timer: Timer = $Timer

@export var targetLevel: int

func _on_body_entered(body: Node2D):
	if body.name=="Player":
		audio_stream_player_2d.play()
		timer.start()
		print("GO")
		#Plays a sound effect and starts timer


func _on_timer_timeout() -> void:
	print("NEXT LEVEL")
	#Replace the print line with the line at the bottom. 
	#Then, chnage the level number to the next numbered level.
	#get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
	if targetLevel ==1:
		get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
		pass
	elif targetLevel ==2:
		get_tree().change_scene_to_file("res://Scenes/Level2.tscn")
		pass
	elif targetLevel ==3:
		get_tree().change_scene_to_file("res://Scenes/Level3.tscn")
		pass
	elif targetLevel ==4:
		get_tree().change_scene_to_file("res://Scenes/Level4.tscn")
		pass
	else:
		print("Invalid Target Level")
	#Sends you to the target levle based on your set value