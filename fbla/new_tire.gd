extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Car.new_tire == "on":
		hide()
	
	if Input.is_action_pressed("left_click"):
		if Car.hand_on_new_wheel == true and Car.new_tire_bolts == "off" and Car.handState == "hand":
			global_position = get_global_mouse_position()



func _on_car_area_entered(area: Area2D) -> void:
	if Car.old_tire_on_car == false:
		Car.new_tire = "on"
