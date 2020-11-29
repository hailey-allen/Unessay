class_name Actor
extends KinematicBody2D
# This class will be used as a basis for moving things like the player, enemies

const FLOOR_NORMAL: = Vector2.UP
const GRAVITY: = 850.0
const TERMINAL_VEL: = 700.0

var _velocity: = Vector2.ZERO

func _physics_process(delta: float) -> void:
	_velocity.y += GRAVITY * delta
	# Scuffed way of adding a terminal y velocity
	_velocity.y = min(_velocity.y, TERMINAL_VEL)
	