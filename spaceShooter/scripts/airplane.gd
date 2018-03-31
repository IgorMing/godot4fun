extends Node2D

var shot_obj = preload("res://scenes/shot.tscn")

var horizontal_speed = 15
var vertical_speed = 5

func _ready():
	set_process(true)
	pass

func handleMove(keyName, actionFunc, parameter):
	if Input.is_action_pressed(keyName):
		actionFunc.call_func(parameter)

func _process(delta):
	var d = 0
	var e = 0
	
	if Input.is_action_pressed("fire"):
		var shot = shot_obj.instance()
		shot.set_global_position(get_global_position())
		add_child(shot)

	if Input.is_action_pressed("goToRight"):
		d = 1

	if Input.is_action_pressed("goToLeft"):
		e = -1

	set_position(get_position() + Vector2((d + e) * horizontal_speed, 0))

	#handleMove("goToRight", funcref(self, "move_local_x"), horizontal_speed)
	#handleMove("goToLeft", funcref(self, "move_local_x"), horizontal_speed * -1)
	#handleMove("goDown", funcref(self, "move_local_y"), horizontal_speed)
	#handleMove("goUp", funcref(self, "move_local_y"), horizontal_speed * -1)
	pass