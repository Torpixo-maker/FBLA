extends AnimatedSprite2D
var screen_size
@onready var title_screen = get_node("title_screen")

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	$Camera2D.enabled = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	if Global.gameStarted == true:
		$Camera2D.enabled = true
		if Input.is_action_pressed("move_right"):
			velocity.x += 150
		if Input.is_action_pressed("move_left"):
			velocity.x -= 150
		if Input.is_action_pressed("move_up"):
			velocity.y -= 150
		if Input.is_action_pressed("move_down"):
			velocity.y += 150
	position += velocity * delta
