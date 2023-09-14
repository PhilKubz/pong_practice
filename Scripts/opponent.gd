extends Paddle

@export var paddle_speed_opponent = 19000
@export var ball : Ball

func _physics_process(delta):
	var direction = (ball.position - position).normalized()
	linear_velocity.y = direction.y * paddle_speed_opponent * delta
	
	
#func _process(delta):
#	var colliding_bodies = get_colliding_bodies()
#	for body in colliding_bodies:
#		print("Colliding with:", body.name)


#func _on_body_entered(body):
#	if body is Ball:
#		ball_hit_paddle.emit()
#		print("Ball hit paddle")

	
