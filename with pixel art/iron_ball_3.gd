extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Surgery.holdingBall3 == true:
		global_position.x = get_global_mouse_position().x - 35
		global_position.y = get_global_mouse_position().y + 20

func ball3():
	pass

func _on_torso_area_entered(area: Area2D) -> void:
	if area.has_method("ball3"):
		Surgery.ball3OnTorso = true


func _on_torso_area_exited(area: Area2D) -> void:
	if area.has_method("ball3"):
		Surgery.ball3OnTorso = false
