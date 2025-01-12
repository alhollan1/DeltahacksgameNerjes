extends Control

# Constants for the nurse office scene and button states


# Variables to track button presses

func _ready():
	# Connect the Submit buttons
	$Button.connect("pressed", Callable(self, "_on_button_pressed"))

func _on_button_pressed():
	# Set button2_pressed to true when Button2 is pressed
	get_tree().change_scene_to_file("res://scenes/wash2.tscn" )
