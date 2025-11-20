extends Node2D


func _process(delta):
	global_position.x = Global.camera_position_x + 430
	global_position.y = Global.camera_position_y - 390
	$Label.text = "Tasks Left: " + str(Global.tasksLeft)
