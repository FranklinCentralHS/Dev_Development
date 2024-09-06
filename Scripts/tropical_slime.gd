extends Node2D

const speed = 60
var direction =1

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_leftB = $RayCastLeftB
@onready var ray_cast_rightB = $RayCastRightB
@onready var animated_sprite = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction=-1
		animated_sprite.flip_h=true
	if ray_cast_left.is_colliding():
		direction=1
		animated_sprite.flip_h=false
	if ray_cast_rightB.is_colliding()==false:
		direction=-1
		animated_sprite.flip_h=true
	if ray_cast_leftB.is_colliding()==false:
		direction=1
		animated_sprite.flip_h=false
		

	position.x+= direction*speed*delta


func _on_slime_hurtbox_body_entered(body:Node2D):
	print("i'm triggered")
	print(body.get_class())
	if body is Player:
		queue_free()
		print("DEATH")
