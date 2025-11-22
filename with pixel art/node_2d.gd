extends Node2D

var hand1 = preload ("res://hand-1.png")
var hand2 = 	preload ("res://hand-2.png")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$"../CharacterBody2D".position = get_global_mouse_position()
	if Global.inMinigames == true:
		Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
func _input(event):
	
	if event.is_action_pressed("left_click"):
		$"../CharacterBody2D/hand".texture = hand2
		
	if event.is_action_released("left_click"):
		$"../CharacterBody2D/hand".texture = hand1
	
func hand():
	pass
 


func playerhand():
	pass
