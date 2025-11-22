extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Surgery.holdingBall5 == true:
		global_position.x = get_global_mouse_position().x - 35
		global_position.y = get_global_mouse_position().y + 20

func ball5():
	pass

func _on_torso_area_entered(area: Area2D) -> void:
	if area.has_method("ball5"):
		Surgery.ball5OnTorso = true


func _on_torso_area_exited(area: Area2D) -> void:
	if area.has_method("ball5"):
		Surgery.ball5OnTorso = false
