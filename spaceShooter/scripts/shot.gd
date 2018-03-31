extends Node2D

var fire_speed = 10
var SCREEN_HEIGHT = ProjectSettings.get_setting("display/window/size/height")

func _ready():
	set_process(true)
	pass

func stillExists():
	return position.y < -SCREEN_HEIGHT

func _process(delta):
	set_position(get_position() + Vector2(0, fire_speed*-1))
	if stillExists():
		queue_free()
	pass
