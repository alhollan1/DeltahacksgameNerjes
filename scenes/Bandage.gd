extends Control

# Constants for the nurse office scene and button states
const NURSE_OFFICE_SCENE_PATH = "res://scenes/small_cut.tscn"  # Replace with the path to the nurse office scene

# Variables to track button presses
var button1_pressed = false
var button2_pressed = false

func _ready():
	# Connect the Submit buttons
	$Button.connect("pressed", Callable(self, "_on_button_pressed"))


func _on_button_pressed():
	# Set button2_pressed to true when Button2 is pressed
	button2_pressed = true
	get_tree().change_scene_to_file(NURSE_OFFICE_SCENE_PATH)
