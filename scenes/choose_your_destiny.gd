extends Control

# Constants for the correct code and the path to the main scen
const MAIN_SCENE_PATH = "res://scenes/world.tscn"  # Replace with your actual main scene path

func _ready():
	# Set up the initial problem


	# Connect the Submit button
	$Button2.connect("pressed", Callable(self, "_on_submit_pressed"))






func _on_submit_pressed():
	# Return to the main scene
	get_tree().change_scene_to_file(MAIN_SCENE_PATH)
