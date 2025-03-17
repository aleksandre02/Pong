extends CharacterBody2D

var speed = 400
var speed_increment = Vector2(1,1)
var flag = 1

func _ready():
	velocity = Vector2(-200, -200).normalized() * speed
	
func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
	print(velocity)
	
func increase_speed():
	speed += 10
	velocity = velocity.normalized() * speed	#velocity.normalized
	
