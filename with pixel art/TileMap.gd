extends Resource

class_name ColorTileSet

enum TileColor {RED, GREEN, BLUE}
const COLORS: Array[Color] = [Color.RED, Color.GREEN, Color.LIGHT_BLUE]

@export var row_1: Array[TileColor]:
	set(v):
		row_1 = v
		tiles[0] = v
@export var row_2: Array[TileColor]:
	set(v):
		row_2 = v
		tiles[1] = v
@export var row_3: Array[TileColor]:
	set(v):
		row_3 = v
		tiles[2] = v
@export var row_4: Array[TileColor]:
	set(v):
		row_4 = v
		tiles[3] = v
@export var row_5: Array[TileColor]:
	set(v):
		row_5 = v
		tiles[4] = v

var tiles: Array[Array] = [row_1, row_2, row_3, row_4, row_5]
