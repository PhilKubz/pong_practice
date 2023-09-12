extends Paddle

class_name Player

func ready():
	pass
#	print("player exists")


func _process(delta):
	var motion = Vector2()
	var direction := Input.get_axis("move_up", "move_down")
	
	if direction:
		motion.y = direction * speed
	else:
		motion.y = move_toward(motion.y, 0, speed * delta)

	translate(motion * delta)

func _on_area_entered(area):
	print(area)
