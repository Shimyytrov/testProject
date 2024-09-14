extends Node2D

# Initialize
var x = 0
var y = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(x, y)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += 50 * delta
	print(position)
