extends CharacterBody2D


@export var speed = 50
var direction : float


func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector.
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	else:
		pass

	position += velocity * delta
	#if velocity != Vector2(0,0):
		#rotation = velocity.angle()
		#direction = rotation
	#else:
		#pass
	
	var collision = move_and_collide(velocity * delta)
	if collision:
		print("I collided with ", collision.get_collider().name)

	move_and_slide()
