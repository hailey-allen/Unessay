extends Node2D


export(PackedScene) var enemies
var spawn1: =Vector2(100, 100)
var spawn2: =Vector2(200, 400)
var spawn3: =Vector2(570, 189)
var spawn4: =Vector2(878, 349)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in range(5):
		EnemySpawn(n)

# function to spawn enemies on given coordinates
func EnemySpawn(number: int) -> void:
	var enemyClass = load("res://src/actors/Enemy.gd")
	var enemy = enemyClass.new()
	enemy = enemies.instance()
	var temp: Vector2
	
	if(number == 0):
		temp = spawn1
		enemy.min_X = 100
		enemy.max_X = 327
		enemy.moveLeft = true
	
	if(number == 1):
		temp = spawn2
		enemy.min_X = 200
		enemy.max_X = 600
		enemy.moveLeft = true
	
	
	
	if(number == 3):
		temp = spawn4
		enemy.min_X = 813
		enemy.max_X = 912
		enemy.moveLeft = true
	

	
	enemy.set_position(temp)
	add_child(enemy)
