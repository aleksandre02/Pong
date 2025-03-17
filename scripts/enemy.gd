extends CharacterBody2D

@onready var target = $"../ball"

var speed = Global.enemy_speed
func _physics_process(delta):
	var direction = (target.position-position).normalized()
	direction.x = 0
	velocity = direction * speed
	move_and_slide()
	if global_position.x > 1121:
		global_position.x = 1121

