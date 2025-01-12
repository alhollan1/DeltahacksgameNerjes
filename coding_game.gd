extends Control

var correct_code = "print('Hello, World!')"  # The correct answer

func _on_Button_pressed():
	var player_answer = $LineEdit.text
	if player_answer == correct_code:
		print("Correct!")
		queue_free()  # Close the coding screen
	else:
		print("Incorrect, try again!")
