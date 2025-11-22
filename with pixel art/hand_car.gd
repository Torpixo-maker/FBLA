extends CharacterBody2D
var hand1 = preload("res://hand-1.png")
var hand2 = preload("res://hand-2.png")
var wrench = preload("res://car minigame/hand_wrench.png")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.inMinigames == true:
		Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

	position = get_global_mouse_position()

func _input(event):
	if event.is_action_pressed("left_click"):
		if Car.handState == "hand":
			$playerhand.texture = hand2

	if event.is_action_released("left_click"):
		if Car.hand_on_wrench == true and Car.wrench_in_hand == false:
			$playerhand.texture = wrench
			Car.handState = "wrench"
		else:
			if Car.wrench_on_old_wheel == false and Car.wrench_on_new_wheel == false:
				$playerhand.texture = hand1
				Car.handState = "hand"
		
		if Car.wrench_on_old_wheel == true:
			Car.old_tire_bolts = "off"
		
		if Car.wrench_on_new_wheel == true and Car.new_tire == "on":
			if Car.new_tire_bolts == "off":
				Global.tasksLeft -= 1
			Car.new_tire_bolts = "on"


func hand():
	pass


func _on_wrench_body_entered(body: Node2D) -> void:
	if body.has_method("hand"):
		Car.hand_on_wrench = true


func _on_wrench_body_exited(body: Node2D) -> void:
	if body.has_method("hand"):
		Car.hand_on_wrench = false
	if body.has_method("hand"):
		Car.hand_on_wrench = false



func _on_old_tire_body_entered(body: Node2D) -> void:
	if body.has_method("hand"):
		Car.hand_on_old_wheel = true
		if $playerhand.texture == wrench:
			Car.wrench_on_old_wheel = true


func _on_old_tire_body_exited(body: Node2D) -> void:
	Car.wrench_on_old_wheel = false
	Car.hand_on_old_wheel = false
