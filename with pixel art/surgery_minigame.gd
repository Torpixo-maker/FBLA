extends Node2D

var handOnTweezers = false
var holdingTweezers = false
var handOnBall1 = false
var handOnBall2 = false
var handOnBall3 = false
var handOnBall4 = false
var handOnBall5 = false
var holdingBall1 = false
var holdingBall2 = false
var holdingBall3 = false
var holdingBall4 = false
var holdingBall5 = false
var ball1OnTorso = true
var ball2OnTorso = true
var ball3OnTorso = true
var ball4OnTorso = true
var ball5OnTorso = true
var done = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Global.inMinigames == true and Global.minigame == "surgery":
		show()
	else:
		hide()


func _on_button_pressed() -> void:
	Global.inMinigames = false
