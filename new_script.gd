extends Sprite3D

const SPEED = 3
const HSPEED = SPEED / 2

func _process(delta):
	var dir = Vector2i()
	
	if Input.is_action_pressed("ui_up"):
		dir.y = -1
		speed_normalizer(dir, delta, SPEED)
	if Input.is_action_pressed("ui_down"):
		dir.y = 1
		speed_normalizer(dir, delta, SPEED)
	if Input.is_action_pressed("ui_left"):
		dir.x = -1
		speed_normalizer(dir, delta, HSPEED)
	if Input.is_action_pressed("ui_right"):
		dir.x = 1
		speed_normalizer(dir, delta, HSPEED)
		

func speed_normalizer(dir, delta, speed):
	if dir:
		translate(speed * Vector3(dir.x, 0, dir.y) * delta)
		
