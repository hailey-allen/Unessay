extends StaticBody2D

onready var anim_player: AnimationPlayer = $AnimationPlayer
onready var popup: Popup = $CanvasLayer/Popup
# This note variable must be different for each note
export var note: = ""
export var is_fragment = false # True is fragment, false is hint

const FRAGMENT: String = "Password fragment: "
const HINT: String = "Password hint: "

func display_popup():
	popup.popup_centered()
	if is_fragment:
		popup.get_node("Label").text = FRAGMENT + note
	else:
		popup.get_node("Label").text = HINT + note
	get_tree().paused = true


func interaction():
	Inventory.notes.append(note)
	print(Inventory.get_notes())
	display_popup()
	anim_player.play("fade_out")

func set_label(Label):
	Label.text = "Read"


func _on_Close_button_up() -> void:
	popup.hide()
	get_tree().paused = false
