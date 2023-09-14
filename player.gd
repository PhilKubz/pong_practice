extends Paddle

class_name Player

func _ready():
	pass
	# print("player exists")

func _process(delta):
	var motion = Vector2(0, 0)
	
	if Input.is_action_pressed("move_up"):
		motion.y -= speed
	if Input.is_action_pressed("move_down"):
		motion.y += speed
	
	set_linear_velocity(motion)

func _on_body_entered(body):
	if body is Ball:
		ball_hit_paddle.emit()
		print("Ball hit paddle")
#func _on_area_entered(area):
#	if area is Bumper:
#		print("Player hit bumper")
