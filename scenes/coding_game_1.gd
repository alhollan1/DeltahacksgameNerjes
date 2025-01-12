extends Control

# Constants for the correct code and the path to the main scene
const CORRECT_CODE = "print('Hello World')"
const MAIN_SCENE_PATH = "res://scenes/world.tscn"  # Replace with your actual main scene path

func _ready():
	# Set up the initial problem
	$Label.text = "Fix the following code snippet:\nprint('Hello World'"
	$RichTextLabel.text = ""

	# Connect the Submit button
	$Button.connect("pressed", Callable(self, "_on_submit_pressed"))

	# Connect the Return button
	$ReturnButton.connect("pressed", Callable(self, "_on_return_pressed"))

func _on_submit_pressed():
	# Get the player's input from the TextEdit node
	var player_code = $TextEdit.text.strip_edges()

	# Check if the player's input matches the correct answer
	if player_code == CORRECT_CODE:
		$RichTextLabel.text = "Correct!"
	else:
		$RichTextLabel.text = "Try Again"

func _on_return_pressed():
	# Return to the main scene
	get_tree().change_scene_to_file(MAIN_SCENE_PATH)
