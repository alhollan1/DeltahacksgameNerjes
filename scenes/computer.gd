extends Sprite2D

var player_in_range = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func open_coding_screen():
	var coding_game = load("res://CodingGame.tscn").instantiate()  # Adjust path if needed
	get_tree().root.add_child(coding_game)  # Add the coding game to the scene tree

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_in_range:
		print("Player is in range")
	else:
		print("Player is NOT in range")
	if player_in_range and Input.is_action_just_pressed("ui_interact"):
		print("F key pressed, attempting to open coding screen")
		open_coding_screen()



func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.name == "player":  # Check if the body entering is the player
		player_in_range = true


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":  # Check if the body entering is the player
		player_in_range = true


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "player":  # Check if the body exiting is the player
		player_in_range = false
