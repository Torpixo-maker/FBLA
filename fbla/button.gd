extends Button

class_name ClickableTile

var color_index: ColorTileSet.TileColor

func _ready() -> void:
	self_modulate = ColorTileSet.TileColor.RED

func _on_pressed() -> void:
	update_color((color_index + 1) % ColorTileSet.COLORS.size())


func update_color(new_color: ColorTileSet.TileColor) -> void:
		color_index = new_color
		self_modulate = ColorTileSet.COLORS[color_index]
