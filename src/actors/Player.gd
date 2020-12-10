extends Actor
# This is the script things related to the player like the player movement and
# animation

const MOVE_SPEED: = Vector2(5 * 32, 340)
const RAY_MAGNITUDE: = 30
onready var animated_sprite: AnimatedSprite = $AnimatedSprite
onready var ray: RayCast2D = $RayCast2D
onready var jumpfx: AudioStreamPlayer2D = $jumpstream
onready var diefx: AudioStreamPlayer2D = $diestream
onready var spawn = get_tree().get_root().get_children()[2].get_node("SpawnLocation")

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
			jumpfx.play()
		animated_sprite.play("jump")
	elif _velocity.y > 0 and not is_on_floor():
		animated_sprite.play("fall")
	elif Input.is_action_pressed("move_right") or Input.is_action_pressed("move_left"):
		animated_sprite.play("run")
		animated_sprite.flip_h = Input.is_action_pressed("move_left")
	else: animated_sprite.play("idle")
	
	# Reset player
	if Input.is_action_just_pressed("reset"):
		diefx.play()
		die()

	# Raycast direction
	ray.cast_to.x = -RAY_MAGNITUDE if animated_sprite.flip_h else RAY_MAGNITUDE

	# For interaction
	# The interactable object should be in the 2d physics layer 4 name 'objects'
	# It should also be in the group called 'interactable'
	if ray.is_colliding():
		var collider: PhysicsBody2D = ray.get_collider()
		$InteracLabel.visible = true
		if collider != null:
			collider.set_label($InteracLabel)
			if collider.is_in_group('interactable') and Input.is_action_just_pressed("interact"):
			# The thing that the raycast collides with should have a method named
			# interaction() in order to actually work with the interaction
				collider.interaction()
	else:
		$InteracLabel.visible = false


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


func die() -> void:
	# This function relies on the SpawnPoint Position2D node
	# Please make sure that is in your level
	diefx.play()
	self.position = spawn.position
	self._velocity = Vector2.ZERO

func _on_EnemyDetector_body_entered(body: Node) -> void:
	diefx.play()
	die()
