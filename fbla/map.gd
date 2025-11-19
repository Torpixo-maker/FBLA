extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	show()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	if Global.inMinigames == true:
		hide()
	else:
		show()
