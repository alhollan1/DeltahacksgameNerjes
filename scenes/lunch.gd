extends Control


# Constants for the nurse office scene and button states

 

func _ready():
	# Connect the Submit buttons
	$Button4.connect("pressed", Callable(self, "_on_button_pressed"))


	
	
func _on_button4_pressed():
	# Set button2_pressed to true when Button2 is pressed

	get_tree().change_scene_to_file("res://scenes/Caf.tscn" )
