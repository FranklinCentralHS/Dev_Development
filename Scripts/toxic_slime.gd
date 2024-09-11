extends Node2D

const SPEED = 60

var direction = 1 

var speedAmount = 1

@onready var ray_cast_right = $RayCastRight 
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_left_down = $RayCastLeftDown
@onready var ray_cast_right_down = $RayCastRightDown
@onready var animated_sprite = $AnimatedSprite2D
@onready var speedDuration = $speedDuration
@onready var speedInt = $SpeedInt
# Called every frame. 'delta' is the elapsed time since




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h=true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h=false
	if ray_cast_right_down.is_colliding()==false:
		direction = -1
		animated_sprite.flip_h=true
	if ray_cast_left_down.is_colliding()==false:
		direction = 1
		animated_sprite.flip_h=false
	position.x += direction * SPEED * delta * speedAmount

func speedUp():
	speedAmount  = 4
	speedDuration.start()
	print("yes speed")
func _on_speed_int_timeout():
	if randf() <= 0.25 and speedAmount==1:
		speedUp()
	elif speedAmount ==1:
		print("no speed")
		speedInt.start()
func _on_speed_duration_timeout():
	print("no speed")
	speedAmount =1
	speedInt.start()
