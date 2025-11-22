extends Button


@export var player_container: TheCanvasGrid
@export var target_container: TheTargetGrid
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_pressed() -> void:
	for x in 5:
		for y in 5:
			if player_container.tiles[x][y].color_index != \
				target_container.tile_set.tiles[x][y]:
					#PUT HERE WHAT HAPPENS WHEN THEY DONT MATCH
					return
	print("WOW YOU WON OMG OMG WOW AMZING YOU CAN CLICK WOW")
	#PUT HERE WHAT HAPPENS WHEN THEY MATCH
