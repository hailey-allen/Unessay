extends "res://src/actors/Actor.gd"


var MOVE_SPEED: =20.0
#variable to check if enemy should move to the left
var moveLeft: bool =true
#minimum and maximum x coordinate values
var min_X: = 0.0
var max_X: = 1010.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if moveLeft:
		MOVE_SPEED *= -1.0
		get_node("AnimatedSprite").flip_h = true



func _physics_process(delta: float) -> void:
	_velocity.x = MOVE_SPEED
	_velocity = move_and_slide(_velocity)
	
	if position.x < min_X || position.x > max_X:
		queue_free()
