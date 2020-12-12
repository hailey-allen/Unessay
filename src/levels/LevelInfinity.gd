extends Node2D


export(PackedScene) var enemies
var spawn1: =Vector2(100, 100)
var spawn2: =Vector2(200, 120)
var spawn3: =Vector2(570, 189)
var spawn4: =Vector2(878, 349)
var spawn5: =Vector2(1500, 165)
var spawn6: =Vector2(1895, 345)
var spawn7: =Vector2(560, 205)
var spawn8: =Vector2(1008, 216)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in range(8):
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
		enemy.min_X = 100
		enemy.max_X = 327
		enemy.moveLeft = true
	
	if(number == 3):
		temp = spawn4
		enemy.min_X = 813
		enemy.max_X = 912
		enemy.moveLeft = true
		
	if(number == 4):
		temp = spawn5
		enemy.min_X = 1464
		enemy.max_X = 1590
		enemy.moveLeft = true
		
	if(number == 5):
		temp = spawn6
		enemy.min_X = 1865
		enemy.max_X = 1923
		enemy.moveLeft = true
		
	if(number == 6):
		temp = spawn7
		enemy.min_X = 555
		enemy.max_X = 674
		enemy.moveLeft = true
		
	if(number == 7):
		temp = spawn8
		enemy.min_X = 942
		enemy.max_X = 1071
		enemy.moveLeft = true

	
	enemy.set_position(temp)
	add_child(enemy)
