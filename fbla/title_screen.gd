extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.gameStarted == false:
		show()
	else:
		hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	pass


func _on_button_pressed():
	Global.gameStarted = true
	hide()
