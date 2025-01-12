extends Control


var button1_press_count: int = 0

func _ready():
	# Connect the Submit buttons
	$KB.connect("pressed", Callable(self, "_on_bbk_pressed"))
 

func _on_bbk_pressed():
	# Increment the press count for Button 1
	button1_press_count += 1
	print("Button 1 pressed: %d times" % button1_press_count)

	# Check if Button 1 has been pressed 20 times
	if button1_press_count >= 20:
		get_tree().change_scene_to_file("res://scenes/gym.tscn")  # Change to the next scene
