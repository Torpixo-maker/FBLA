extends Node2D
var old_tire_bolts = "on"
var hand_on_wrench = false
var wrench_on_old_wheel = false
var hand_on_old_wheel = false
var handState = "hand"
var wrench_in_hand = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.inMinigames == true and Global.minigame == "car":
		show()
	else:
		hide()
