extends CharacterBody2D

const speed = 100
var current_dir = "none"
var is_near_interactable = false  # Track if near an interactable area
var interactable_area = null  # Store the reference to the interactable area
const CODING_GAME_SCENE_PATH = "res://scenes/CodingGame1.tscn"  # Path to the mini coding game scene

func _ready():
	$AnimatedSprite2D.play("front_idle")

func _physics_process(delta):
	player_movement(delta)
	
	# Check if 'F' is pressed and near an interactable area
	if is_near_interactable and Input.is_action_just_pressed("ui_interact"):  # 'ui_interact' maps to 'F'
		transport_to_coding_game()

func player_movement(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
		velocity.y = 0
		current_dir = "right"
		play_anim(1)
	elif Input.is_action_pressed("ui_left"):
		current_dir = "left"
		play_anim(1)
		velocity.x = -speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_down"):
		current_dir = "down"
		play_anim(1)
		velocity.y = speed
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -speed
		play_anim(1)
		velocity.x = 0
		current_dir = "up"
	else:
		play_anim(0)
		velocity.x = 0
		velocity.y = 0
		
	move_and_slide()
	
func play_anim(movement):
	var dir = current_dir
	var anim = $AnimatedSprite2D
	
	if dir == "right":
		anim.flip_h = false
		if movement == 1:
			anim.play("side_walk")
		elif movement == 0:
			anim.play("side_idle")
	if dir == "left":
		anim.flip_h = true
		if movement == 1:
			anim.play("side_walk")
		elif movement == 0:
			anim.play("side_idle")
	if dir == "down":
		anim.flip_h = true
		if movement == 1:
			anim.play("front_walk")
		elif movement == 0:
			anim.play("front_idle")
	if dir == "up":
		anim.flip_h = true
		if movement == 1:
			anim.play("back_walk")
		elif movement == 0:
			anim.play("back_idle")

# Called when the player enters an interactable area
func _on_area_2d_area_entered(area: Area2D) -> void:
	get_tree().change_scene_to_file("res://scenes/basketballstart.tscn")
	

# Called when the player exits the interactable area

func transport_to_coding_game():
	print("Attempting to change scene...")
	get_tree().change_scene_to_file("res://scenes/CodingGame1.tscn")
	print("Scene changed successfully!")
