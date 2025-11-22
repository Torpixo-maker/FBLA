extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.inMinigames == true:
		Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
		hide()
	else:
		show()
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
