extends Node2D


export(PackedScene) var enemies
var spawn1: =Vector2(233, 235)
var spawn2: =Vector2(233, 235)
var spawn3: =Vector2(570, 189)
var spawn4: =Vector2(878, 349)
var spawn5: =Vector2(781, 480)
var spawn6: =Vector2(943, 480)
var spawn7: =Vector2(1148, 480)
var spawn8: =Vector2(1513, 258)

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
		enemy.min_X = 40
		enemy.max_X = 327
		enemy.moveLeft = true
	
	if(number == 1):
		temp = spawn2
		enemy.min_X = 40
		enemy.max_X = 327
		enemy.moveLeft = false
	
	if(number == 2):
		temp = spawn3
		enemy.min_X = 553
		enemy.max_X = 630
		enemy.moveLeft = true
	
	if(number == 3):
		temp = spawn4
		enemy.min_X = 813
		enemy.max_X = 912
		enemy.moveLeft = true
	
	if(number == 4):
		temp = spawn5
		enemy.min_X = 683
		enemy.max_X = 833
		enemy.moveLeft = true
	
	if(number == 5):
		temp = spawn6
		enemy.min_X = 889
		enemy.max_X = 998
		enemy.moveLeft = false
		
	if(number == 6):
		temp = spawn7
		enemy.min_X = 1048
		enemy.max_X = 1222
		enemy.moveLeft = true
		
	if(number == 7):
		temp = spawn8
		enemy.min_X = 1464
		enemy.max_X = 1591
		enemy.moveLeft = true
	
	enemy.set_position(temp)
	add_child(enemy)
