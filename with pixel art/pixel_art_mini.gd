extends Control

var done = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.inMinigames == true and Global.minigame == "art":
		show()
	else:
		hide()


func _on_back_pressed() -> void:
	Global.inMinigames = false
