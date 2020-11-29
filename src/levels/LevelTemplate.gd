extends Node2D

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export(PackedScene) var enemies
var spawn1: =Vector2(248, 30)
var spawn2: =Vector2(443, 30)
var spawn3: =Vector2(555, 30)
onready var restart = get_node("Runtime")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in range(3):
		EnemySpawn(n)

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
	
func PlayerDied() -> void:
	restart.start()
	get_node("Player").queue_free()

func _on_Runtime_timeout() -> void:
	get_tree().change_scene("res://src/levels/LevelTemplate.tscn")