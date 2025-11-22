
@tool

extends GridContainer
class_name TheTargetGrid

@export_tool_button("Regenerate") var regen := generate

@export var tile_set: ColorTileSet

var button_scene = preload("res://button.tscn")
var tiles: Array = [green, blue, red]
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
			var button:ClickableTile = button_scene.instantiate()
			add_child(button)
			button.disabled = true
			button.mouse_filter = Control.MOUSE_FILTER_IGNORE
			button.owner = owner
			button.update_color(tile_set.tiles[x][y])
			arr.append(button)


func _on_completion_pressed() -> void:
	pass # Replace with function body.
