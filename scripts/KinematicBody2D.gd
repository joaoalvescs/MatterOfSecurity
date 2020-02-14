extends KinematicBody2D

const UP = Vector2(0,-1)
var motion = Vector2()

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
		$character.play("Run")
		$character.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		$character.play("Run")
		$character.flip_h = true
		motion.x = -100
	else:
		motion.x = 0
		$character.play("Idle")
		
	move_and_slide(motion)
