extends CharacterBody2D
var hand1 = preload("res://hand-1.png")
var hand2 = preload("res://hand-2.png")
var tweezers = preload("res://surgery assets/handwithtweezers.png")

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
		if Surgery.holdingTweezers == false:
			$playerhand.texture = hand2
		else:
			$playerhand.texture = tweezers
		
		if Surgery.holdingTweezers == true and Surgery.handOnBall1 == true:
			Surgery.holdingBall1 = true
		if Surgery.holdingTweezers == true and Surgery.handOnBall2 == true:
			Surgery.holdingBall2 = true
		if Surgery.holdingTweezers == true and Surgery.handOnBall3 == true:
			Surgery.holdingBall3 = true
		if Surgery.holdingTweezers == true and Surgery.handOnBall4 == true:
			Surgery.holdingBall4 = true
		if Surgery.holdingTweezers == true and Surgery.handOnBall5 == true:
			Surgery.holdingBall5 = true

	if event.is_action_released("left_click"):
		if Surgery.handOnTweezers == true:
			$playerhand.texture = tweezers
			Surgery.holdingTweezers = true
		else:
			if Surgery.holdingTweezers == false:
				$playerhand.texture = hand1
			else:
				$playerhand.texture = tweezers
		
		Surgery.holdingBall1 = false
		Surgery.holdingBall2 = false
		Surgery.holdingBall3 = false
		Surgery.holdingBall4 = false
		Surgery.holdingBall5 = false
		
		if Surgery.ball1OnTorso == false and Surgery.ball2OnTorso == false and Surgery.ball3OnTorso == false and Surgery.ball4OnTorso == false and Surgery.ball5OnTorso == false:
			if Surgery.done == false:
				Global.tasksLeft -= 1
			Surgery.done = true

		

func hand():
	pass


func _on_tweezers_body_entered(body: Node2D) -> void:
	if body.has_method("hand"):
		Surgery.handOnTweezers = true


func _on_tweezers_body_exited(body: Node2D) -> void:
	if body.has_method("hand"):
		Surgery.handOnTweezers = false


func _on_iron_ball_body_entered(body: Node2D) -> void:
	if body.has_method("hand"):
		if Surgery.holdingTweezers == true:
			Surgery.handOnBall1 = true


func _on_iron_ball_body_exited(body: Node2D) -> void:
	if body.has_method("hand"):
		Surgery.handOnBall1 = false


func _on_iron_ball_2_body_entered(body: Node2D) -> void:
	if body.has_method("hand"):
		if Surgery.holdingTweezers == true:
			Surgery.handOnBall2 = true


func _on_iron_ball_2_body_exited(body: Node2D) -> void:
	if body.has_method("hand"):
		Surgery.handOnBall2 = false


func _on_iron_ball_3_body_entered(body: Node2D) -> void:
	if body.has_method("hand"):
		if Surgery.holdingTweezers == true:
			Surgery.handOnBall3 = true


func _on_iron_ball_3_body_exited(body: Node2D) -> void:
	if body.has_method("hand"):
		Surgery.handOnBall3 = false


func _on_iron_ball_4_body_entered(body: Node2D) -> void:
	if body.has_method("hand"):
		if Surgery.holdingTweezers == true:
			Surgery.handOnBall4 = true


func _on_iron_ball_4_body_exited(body: Node2D) -> void:
	if body.has_method("hand"):
		Surgery.handOnBall4 = false


func _on_iron_ball_5_body_entered(body: Node2D) -> void:
	if body.has_method("hand"):
		if Surgery.holdingTweezers == true:
			Surgery.handOnBall5 = true


func _on_iron_ball_5_body_exited(body: Node2D) -> void:
	if body.has_method("hand"):
		Surgery.handOnBall5 = false
