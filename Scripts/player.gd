extends Paddle

class_name Player

@export var ball : Ball

func _ready():
	pass
	# print("player exists")

func _process(delta):
	var movement = Vector2.ZERO
	
	if Input.is_action_pressed("move_up"):
		movement = Vector2.UP
	if Input.is_action_pressed("move_down"):
		movement = Vector2.DOWN
	
	linear_velocity = movement * paddle_speed
	

#func _on_body_entered(body):
#	if body is Ball:
#		ball_hit_paddle.emit()
#		print("Ball hit paddle")
#func _on_area_entered(area):
#	if area is Bumper:
#		print("Player hit bumper")


#func _process(delta):
#	var motion = Vector2(0, 0)
#
#	if Input.is_action_pressed("move_up"):
#		motion.y -= speed
#	if Input.is_action_pressed("move_down"):
#		motion.y += speed
#
#	set_linear_velocity(motion)
