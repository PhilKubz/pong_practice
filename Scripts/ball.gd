extends RigidBody2D


@export var ball_speed = 300
var velocity = Vector2(1, 1) * ball_speed

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)

#	if collision_info.collider is Player or Opponent:
#		velocity.x *= -1
#
#	if collision_info.collider is Bumper:
#		velocity.y *= -1
