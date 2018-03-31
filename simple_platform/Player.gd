extends KinematicBody2D

var motion = Vector2()
var SPEED = 300

func _physics_process(delta):
	var right = 0
	var left = 0
	
	motion.y = 980

	if Input.is_action_pressed("ui_right"):
		right = SPEED

	if Input.is_action_pressed("ui_left"):
		left = SPEED

	motion.x = right - left	
	move_and_slide(motion)
	pass