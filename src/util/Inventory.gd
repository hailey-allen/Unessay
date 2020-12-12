# Script to save information, like for example the messages from the notes
extends Node

# This is kinda how we should be setting up the message variables that will be
# used to store the messages from the note objects.
var notes: = [] setget , get_notes

func get_notes() -> Array:
	return notes
