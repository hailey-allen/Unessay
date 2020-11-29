extends "res://src/actors/Actor.gd"


var MOVE_SPEED: =100
#variable to check if enemy should move to the left
var moveLeft: bool
#minimum and maximum x coordinate values
var min_X: int
var max_X: int
var animation: AnimatedSprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	animation = $AnimatedSprite

func _physics_process(delta: float) -> void:
	_velocity.x = checkMoveLeft()
	_velocity = move_and_slide(_velocity)
	
	if position.x < min_X || position.x > max_X:
		moveLeft = !moveLeft

func checkMoveLeft() -> int:
	var speed: int
	if moveLeft:
		speed = MOVE_SPEED * -1
		animation.flip_h = true
	else:
		speed = MOVE_SPEED * 1
		animation.flip_h = false
	return speed
