extends Control

# Constants for the nurse office scene and button states

var button1_press_count: int = 0
var button2_press_count: int = 0

func _ready():
	# Connect the Submit buttons
	$Glass.connect("pressed", Callable(self, "_on_g_pressed"))
	$S.connect("pressed", Callable(self, "_on_s_pressed"))
	$N.connect("pressed", Callable(self, "_on_n_pressed"))
	
func _on_s_pressed():
	button1_press_count+=1
	
func _on_g_pressed():
	button2_press_count+=1



	

	
	
func _on_n_pressed():
	#

	# Check if Button 1 has been pressed 20 times
	if button1_press_count >= 1 and button2_press_count >= 1:
		get_tree().change_scene_to_file("res://scenes/nurse_office.tscn" )
