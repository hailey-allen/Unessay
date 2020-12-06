extends StaticBody2D

onready var anim_player: AnimationPlayer = $AnimationPlayer
# This note variable must be different for each note
export var note: = ""

func display_popup():
	pass

func interaction():
	Inventory.notes.append(note)
	print(Inventory.get_notes())
	anim_player.play("fade_out")
