extends Node2D
# Attach this script to a level to add a debug overlay to the level in order to
# measure whatever metrics you want. Edit the function below to add to the overlay
# Check the docstring of "res://src/Debug_Overlay.gd"

func _ready():
	var debug_overlay = load("res://src/Debug_Overlay.tscn").instance()
	debug_overlay.add_stat("Player pos", $Player, "position", false)
	debug_overlay.add_stat("Player vel", $Player, "_velocity", false)
	add_child(debug_overlay)
