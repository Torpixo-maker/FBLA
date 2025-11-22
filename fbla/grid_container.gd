@tool

extends GridContainer
class_name TheCanvasGrid



@export_tool_button("Regenerate") var regen := generate



var button_scene = preload("res://button.tscn")
var tiles: Array[Array] = []
var green = 0
var blue = 0
var red = 0


func _ready() -> void:
	generate()

func generate() -> void:
	for child in get_children():
		child.queue_free()

	for x in columns:
		var arr = []
		for y in columns:
			var button = button_scene.instantiate()
			add_child(button)
			arr.append(button)
			button.update_color(ColorTileSet.TileColor.BLUE)
		tiles.append(arr)
