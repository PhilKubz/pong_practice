extends RigidBody2D

class_name BallOld

#signal ball_hit_bumper
signal ball_hit_paddle


@export var ball_speed = 300
var velocity = Vector2(1, 1) * ball_speed

func _physics_process(delta):
	move_and_collide(velocity * delta)
#	print(velocity)
	if velocity == Vector2(0, 0):
		print("Ball dead")


#func _on_area_entered(area):
###	if area is Bumper:
###		ball_hit_bumper.emit()
###		print("bumper hit")
#	if area is Player or Opponent:
#		ball_hit_player.emit()
#		print("paddle hit")
		

#	if collision_info.collider is Player or Opponent:
#		velocity.x *= -1
#
#	if collision_info.collider is Bumper:
#		velocity.y *= -1
func _on_body_entered(body):
	if body is Paddle:
		ball_hit_paddle.emit()
		print("Ball hit paddle")

