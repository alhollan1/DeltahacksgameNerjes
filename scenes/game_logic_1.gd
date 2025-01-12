extends Control

# Constants for the nurse office scene and button states
const NURSE_OFFICE_SCENE_PATH = "res://scenes/Bandage.tscn"  # Replace with the path to the nurse office scene
 

func _ready():
	# Connect the Submit buttons
	$Button.connect("pressed", Callable(self, "_on_button_pressed"))
	$Button2.connect("pressed", Callable(self, "_on_button2_pressed"))
	$Button3.connect("pressed", Callable(self, "_on_button3_pressed"))


func _on_button2_pressed():
	# Set button1_pressed to true when Button is pressed

	get_tree().change_scene_to_file("res://scenes/lunch.tscn" )
	


	
func _on_button_pressed():
	# Set button2_pressed to true when Button2 is pressed

	get_tree().change_scene_to_file("res://scenes/drink.tscn" )
	
func _on_button3_pressed():
	# Set button2_pressed to true when Button2 is pressed

	get_tree().change_scene_to_file("res://scenes/gym.tscn" )
