extends Node2D

var SPEED = 60

var direction = 1 

@onready var ray_cast_right = $RayCastRight 
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_left_down = $RayCastLeftDown
@onready var ray_cast_right_down = $RayCastRightDown
@onready var animated_sprite = $AnimatedSprite2D
@onready var random_timer = $RandomTimer
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

	position.x += direction * SPEED * delta