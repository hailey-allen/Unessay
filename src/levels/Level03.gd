extends Node2D


export(PackedScene) var enemies
var spawn1: =Vector2(128, 176)
var spawn2: =Vector2(736, 160)
var spawn3: =Vector2(810, 300)
var spawn4: =Vector2(1024, 300)
var spawn5: =Vector2(1344, 300)
var spawn6: =Vector2(1056, 160)
var spawn7: =Vector2(1408, 256)
var spawn8: =Vector2(1696, 256)
var spawn9: =Vector2(1792, 416)
var spawn10: =Vector2(2016, 416)
var spawn11: =Vector2(2240, 416)
var spawn12: =Vector2(2624, 256)
var spawn13: =Vector2(2976, 352)
var spawn14: =Vector2(3136, 352)
var spawn15: =Vector2(3296, 352)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in range(15):
		EnemySpawn(n)

# function to spawn enemies on given coordinates
func EnemySpawn(number: int) -> void:
	var enemyClass = load("res://src/actors/Enemy.gd")
	var enemy = enemyClass.new()
	enemy = enemies.instance()
	var temp: Vector2
	
	if(number == 0):
		temp = spawn1
		enemy.min_X = 35
		enemy.max_X = 288
		enemy.moveLeft = true
	
	if(number == 1):
		temp = spawn2
		enemy.min_X = 720
		enemy.max_X = 848
		enemy.moveLeft = true
	
	if(number == 2):
		temp = spawn3
		enemy.min_X = 808
		enemy.max_X = 1384
		enemy.moveLeft = true
	
	if(number == 3):
		temp = spawn4
		enemy.min_X = 808
		enemy.max_X = 1384
		enemy.moveLeft = true
	
	if(number == 4):
		temp = spawn5
		enemy.min_X = 808
		enemy.max_X = 1384
		enemy.moveLeft = true
	
	if(number == 5):
		temp = spawn6
		enemy.min_X = 1040
		enemy.max_X = 1168
		enemy.moveLeft = true
		
	if(number == 6):
		temp = spawn7
		enemy.min_X = 1392
		enemy.max_X = 1504
		enemy.moveLeft = true
		
	if(number == 7):
		temp = spawn8
		enemy.min_X = 1696
		enemy.max_X = 1776
		enemy.moveLeft = true
		
	if(number == 8):
		temp = spawn9
		enemy.min_X = 1776
		enemy.max_X = 2288
		enemy.moveLeft = true
		
	if(number == 9):
		temp = spawn10
		enemy.min_X = 1776
		enemy.max_X = 2288
		enemy.moveLeft = true
		
	if(number == 10):
		temp = spawn11
		enemy.min_X = 1776
		enemy.max_X = 2288
		enemy.moveLeft = true
		
	if(number == 11):
		temp = spawn12
		enemy.min_X = 2592
		enemy.max_X = 2656
		enemy.moveLeft = true
	
	if(number == 12):
		temp = spawn13
		enemy.min_X = 2944
		enemy.max_X = 3328
		enemy.moveLeft = true
		
	if(number == 13):
		temp = spawn14
		enemy.min_X = 2944
		enemy.max_X = 3328
		enemy.moveLeft = true
		
	if(number == 14):
		temp = spawn15
		enemy.min_X = 2944
		enemy.max_X = 3328
		enemy.moveLeft = true
	
	enemy.set_position(temp)
	add_child(enemy)
