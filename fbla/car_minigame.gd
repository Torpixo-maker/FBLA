extends Node2D
var old_tire_bolts = "on"
var new_tire_bolts = "off"
var hand_on_wrench = false
var wrench_on_old_wheel = false
var wrench_on_new_wheel = false
var hand_on_old_wheel = false
var hand_on_new_wheel = false
var handState = "hand"
var wrench_in_hand = false
var old_tire_on_car = true
var new_tire = "off"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(wrench_on_new_wheel)
	if Global.inMinigames == true and Global.minigame == "car":
		show()
	else:
		hide()



func _on_button_pressed() -> void:
	Global.inMinigames = false
