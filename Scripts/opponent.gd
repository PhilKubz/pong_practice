extends Paddle

@export var paddle_speed_opponent = 35000
@export var ball : Ball

func _physics_process(delta):
	if ball != null:
		var direction = (ball.position - position).normalized()
		linear_velocity.y = direction.y * paddle_speed_opponent * delta
	else:
		linear_velocity = Vector2(0, 0)
		global_position = Vector2(1096, 648/2)
	
	
	
#func _process(delta):
#	var colliding_bodies = get_colliding_bodies()
#	for body in colliding_bodies:
#		print("Colliding with:", body.name)


#func _on_body_entered(body):
#	if body is Ball:
#		ball_hit_paddle.emit()
#		print("Ball hit paddle")

	
