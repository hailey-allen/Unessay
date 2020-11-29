extends Node2D

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export(PackedScene) var enemies
var spawn1: =Vector2(248, 30)
var spawn2: =Vector2(443, 30)
var spawn3: =Vector2(555, 30)
onready var restart = get_node("Runtime")
onready var cam = get_node("Main Cam")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#set camera to point to player
	set_Main_Cam()
	for n in range(3):
		EnemySpawn(n)
	#make player camera current to point to player camera
	get_node("Player").get_node("Camera2D").make_current()

# function to spawn enemies on given coordinates
func EnemySpawn(number: int) -> void:
	var enemyClass = load("res://src/actors/Enemy.gd")
	var enemy = enemyClass.new()
	enemy = enemies.instance()
	var temp: Vector2
	
	if(number == 0):
		temp = spawn1
		enemy.min_X = 70
		enemy.max_X = 248
		enemy.moveLeft = true
	
	if(number == 1):
		temp = spawn2
		enemy.min_X = 322
		enemy.max_X = 443
		enemy.moveLeft = true
	
	if(number == 2):
		temp = spawn3
		enemy.min_X = 500
		enemy.max_X = 555
		enemy.moveLeft = true
	
	enemy.set_position(temp)
	add_child(enemy)

#function to align main cam to player cam
func set_Main_Cam() -> void:
	cam.set_position(get_node("Player").get_node("Camera2D").get_camera_screen_center())
	cam.make_current()
	

func PlayerDied() -> void:
	#restart timer to reload scene
	restart.start()
	set_Main_Cam()
	get_node("Player").queue_free()

func _on_Runtime_timeout() -> void:
	get_tree().reload_current_scene()