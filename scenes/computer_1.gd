extends Node2D  # Or Sprite2D, depending on your setup

var player_in_range = false

# Triggered when the player enters the interaction area
func _on_area_2d_body_entered(body: Node) -> void:
	if body.name == "player":  # Ensure it's the player
		print("Player entered the interaction area")
		player_in_range = true

# Triggered when the player leaves the interaction area
func _on_area_2d_body_exited(body: Node) -> void:
	if body.name == "player":  # Ensure it's the player
		print("player left the interaction area")
		player_in_range = false

# Detect interaction input
func _process(delta: float) -> void:
	if player_in_range and Input.is_action_just_pressed("ui_interact"):
		print("Interacting with the computer!")
		# Add logic to display a screen, open a menu, etc.


func _on_interaction_area_area_entered(area: Area2D) -> void:
	if area.name == "player":  # Ensure it's the player
		print("player left the interaction area")
		player_in_range = false
