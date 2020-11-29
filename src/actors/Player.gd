extends Actor
# This is the script things related to the player like the player movement and
# animation

const MOVE_SPEED: = Vector2(5 * 32, 340)
const RAY_MAGNITUDE: = 30
onready var animated_sprite: AnimatedSprite = $AnimatedSprite
onready var ray: RayCast2D = $RayCast2D
onready var soundfx: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _physics_process(_delta: float) -> void:
	# This variable is for jumps lasting as long as jump button is held, if jump let go
	# while jumping, this is true
	# var is_jump_interrupted: = Input.is_action_just_released("jump") and _velocity.y < 0.0
	var direction: = get_input_direction()
	_velocity = calculate_move_velocity(_velocity, direction, MOVE_SPEED)
	_velocity = move_and_slide(_velocity, FLOOR_NORMAL)


func _process(_delta: float) -> void:
	# Animations
	if _velocity.y < 0:
		if Input.is_action_just_pressed("jump"):
			soundfx.play()
		animated_sprite.play("jump")
	elif _velocity.y > 0 and not is_on_floor():
		animated_sprite.play("fall")
	elif Input.is_action_pressed("move_right") or Input.is_action_pressed("move_left"):
		animated_sprite.play("run")
		animated_sprite.flip_h = Input.is_action_pressed("move_left")
	else: animated_sprite.play("idle")

	# Raycast direction
	ray.cast_to.x = -RAY_MAGNITUDE if animated_sprite.flip_h else RAY_MAGNITUDE

	# For interaction
	# The interactable object should be in the 2d physics layer 4 name 'objects'
	# It should also be in the group called 'interactable'
	if ray.is_colliding():
		var collider: PhysicsBody2D = ray.get_collider()
		if collider != null:
			if collider.is_in_group('interactable') and Input.is_action_just_pressed("interact"):
			# The thing that the raycast collides with should have a method named
			# interaction() in order to actually work with the interaction
				collider.interaction()


func get_input_direction() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-Input.get_action_strength("jump") if is_on_floor() else 0.0
	)


func calculate_move_velocity(linear_velocity: Vector2, direction: Vector2, speed: Vector2) -> Vector2:
	var velocity = linear_velocity
	velocity.x = lerp(linear_velocity.x, speed.x * direction.x, get_lerp_weight())
	if direction.y != 0.0:
		velocity.y = speed.y * direction.y
	return velocity


func get_lerp_weight() -> float:
	return 0.2 if is_on_floor() else 0.07
