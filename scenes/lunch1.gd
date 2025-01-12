extends Control


# Constants for the nurse office scene and button states

 

func _ready():
	# Connect the Submit buttons
	$Veggie.connect("pressed", Callable(self, "_on_button_pressed"))
	$Pizza.connect("pressed", Callable(self, "_on_button2_pressed"))


func _on_button_pressed():
	# Set button1_pressed to true when Button is pressed

	get_tree().change_scene_to_file("res://scenes/lunchdemo.tscn" )
	
	
func _on_button2_pressed():
	# Set button2_pressed to true when Button2 is pressed

	get_tree().change_scene_to_file("res://scenes/lunchdemo.tscn" )
