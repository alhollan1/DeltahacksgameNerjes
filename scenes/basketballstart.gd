extends Control

# Constants for the nurse office scene and button states
const NURSE_OFFICE_SCENE_PATH = "res://scenes/Bandage.tscn"  # Replace with the path to the nurse office scene
 

func _ready():
	# Connect the Submit buttons
	$BS.connect("pressed", Callable(self, "_on_BS_pressed"))



func _on_BS_pressed():
	# Set button1_pressed to true when Button is pressed

	get_tree().change_scene_to_file("res://scenes/BBgame.tscn" )
	


	
