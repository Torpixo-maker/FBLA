extends Node2D

var hand1 = preload ("res://hand-1.png")
var hand2 = 	preload ("res://hand-2.png")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	$playerhand.position = get_global_mouse_position()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
func _input(event):
	
	if event.is_action_pressed("mouse_left_click"):
		$playerhand/hand.texture = hand2
		
		
	if event.is_action_released("mouse_left_click"):
		$playerhand/hand.texture = hand1
	
func hand():
	pass
 


func playerhand():
	pass
