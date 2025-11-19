extends CharacterBody2D
var screen_size
@export var speed = 250
# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	$Camera2D.enabled = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.inMinigames == true:
		hide()
	else:
		show()
		
	var velocity = Vector2.ZERO
	
	if Global.gameStarted == true and Global.inMinigames == false:
		$Camera2D.enabled = true
		if Input.is_action_pressed("move_right") or Input.is_action_pressed("right_arrow"):
			velocity.x += 1
		if Input.is_action_pressed("move_left") or Input.is_action_pressed("left_arrow"):
			velocity.x -= 1
		if Input.is_action_pressed("move_up") or Input.is_action_pressed("up_arrow"):
			velocity.y -= 1
		if Input.is_action_pressed("move_down") or Input.is_action_pressed("down_arrow"):
			velocity.y += 1
	else:
		$Camera2D.enabled = false
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	position += velocity * delta
	
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false

	move_and_slide()
	
	
func player():
	pass
