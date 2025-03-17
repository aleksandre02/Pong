extends CharacterBody2D

var speed = 400

func _physics_process(delta):
	velocity = Vector2(0,0)
	if Input.is_action_pressed("go_down"):
		velocity.y = speed
	elif Input.is_action_pressed("go_up"):
		velocity.y = -speed
	move_and_slide()
