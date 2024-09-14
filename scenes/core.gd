extends Node2D

# Initialize
var x = 0
var y = 0
var moveX = "+"
var moveY = "+"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(x, y)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.x >= 1280:
		moveX = "-"
	if position.y >= 720:
		moveY = "-"
	if position.x <= 0:
		moveX = "+"
	if position.y <= 0:
		moveY = "+"
	if moveX == "+":
		position.x += 144 * delta
	if moveX == "-":
		position.x -= 144 * delta
	if moveY == "+":
		position.y += 144 * delta
	if moveY == "-":
		position.y -= 144 * delta
	print(position)
	print(moveX)
	print(moveY)
