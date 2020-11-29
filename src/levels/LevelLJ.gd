extends Node2D

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export(PackedScene) var enemies
var spawn1: =Vector2(352, 192)
var spawn2: =Vector2(880, 416)
var spawn3: =Vector2(768, 544)
var spawn4: =Vector2(992, 544)
var spawn5: =Vector2(1088, 544)
var spawn6: =Vector2(1344, 544)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in range(6):
		EnemySpawn(n)

# function to spawn enemies on given coordinates
func EnemySpawn(number: int) -> void:
	var enemyClass = load("res://src/actors/Enemy.gd")
	var enemy = enemyClass.new()
	enemy = enemies.instance()
	var temp: Vector2
	
	if(number == 0):
		temp = spawn1
		enemy.min_X = 272
		enemy.max_X = 432
		enemy.moveLeft = true
	
	if(number == 1):
		temp = spawn2
		enemy.min_X = 784
		enemy.max_X = 962
		enemy.moveLeft = true
	
	if(number == 2):
		temp = spawn3
		enemy.min_X = 734
		enemy.max_X = 1026
		enemy.moveLeft = true
	
	if(number == 3):
		temp = spawn4
		enemy.min_X = 734
		enemy.max_X = 1026
		enemy.moveLeft = false
	
	if(number == 4):
		temp = spawn5
		enemy.min_X = 1084
		enemy.max_X = 1188
		enemy.moveLeft = false
	
	if(number == 5):
		temp = spawn6
		enemy.min_X = 1244
		enemy.max_X = 1348
		enemy.moveLeft = true
	
	enemy.set_position(temp)
	add_child(enemy)
