extends Node2D

func _ready():
	# Play the animation
	$AnimatedSprite2D.play()

	# Connect the frame_changed signal
	$AnimatedSprite2D.frame_changed.connect(_on_frame_changed)

func _on_frame_changed():
	# Get the total number of frames
	var total_frames = $AnimatedSprite2D.sprite_frames.get_frame_count($AnimatedSprite2D.animation)
	
	# Check if the current frame is the last one
	if $AnimatedSprite2D.frame == total_frames - 3:
		$AnimatedSprite2D.stop()
		get_tree().change_scene_to_file("res://scenes/world.tscn" )
