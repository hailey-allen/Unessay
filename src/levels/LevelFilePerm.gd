extends Node2D

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
export(PackedScene) var enemies
var spawn1: =Vector2(512, 384)
var spawn2: =Vector2(800, 384)
var spawn3: =Vector2(512, 480)
var spawn4: =Vector2(700, 480)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in range(4):
		EnemySpawn(n)

# function to spawn enemies on given coordinates
func EnemySpawn(number: int) -> void:
	var enemyClass = load("res://src/actors/Enemy.gd")
	var enemy = enemyClass.new()
	enemy = enemies.instance()
	var temp: Vector2
	
	if(number == 0):
		temp = spawn1
		enemy.min_X = 464
		enemy.max_X = 832
		enemy.moveLeft = true
	
	if(number == 1):
		temp = spawn2
		enemy.min_X = 464
		enemy.max_X = 832
		enemy.moveLeft = true
	
	if(number == 2):
		temp = spawn3
		enemy.min_X = 312
		enemy.max_X = 752
		enemy.moveLeft = true
	
	if(number == 3):
		temp = spawn4
		enemy.min_X = 312
		enemy.max_X = 752
		enemy.moveLeft = true
	
	enemy.set_position(temp)
	add_child(enemy)
