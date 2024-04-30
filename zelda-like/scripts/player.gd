extends CharacterBody2D



const SPEED = 300.0

@onready var player_sprite = $player_sprite





func _physics_process(delta):
	
	
	
	var x := 0
	var y := 0
	
	if Input.is_action_pressed("up"):
		y = -1
		
	elif Input.is_action_pressed("down"):
		y = 1
		
	if Input.is_action_pressed("left"):
		x = -1
		player_sprite.flip_h = 1
		
	elif Input.is_action_pressed("right"):
		x = 1
		player_sprite.flip_h = 0
		
		
	
	
	
	
	
	
	
	var direction = Vector2(x, y)
	if direction:
		velocity = direction * SPEED
		
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.y = move_toward(velocity.y, 0, SPEED)
	
	
	
	move_and_slide()





