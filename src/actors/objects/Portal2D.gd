tool
extends Area2D
# This script is basically to change from one scene to another when a certain 
# area in the map is touched. For now I've made a whole scene and the Godot icon as 
# a portal sprite but later we can make a different one per level if we want
# and just attach this script to those nodes.
#
# We can also add some sort of level transition later

export var next_world: PackedScene


func _on_body_entered(body: PhysicsBody2D) -> void:
	if body.get_name() == "Player":
		teleport()


func _get_configuration_warning() -> String:
	return "Next World cannot be empty" if not next_world else ""


func teleport() -> void:
	get_tree().change_scene_to(next_world)
