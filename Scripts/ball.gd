extends CharacterBody2D

class_name Ball

@export var initial_ball_speed = 15

# 2% faster ball speed each hit on paddles
@export var speed_multiplier = 1.02

var ball_speed = initial_ball_speed

func _ready():
	start_ball()

func _physics_process(delta):
	var collision = move_and_collide(velocity * ball_speed * delta)
	
	if(collision):
		velocity = velocity.bounce(collision.get_normal()) * speed_multiplier

func start_ball():
	randomize()
	velocity.x = [-1, 1][randi() % 2] * initial_ball_speed
	velocity.y = [-.8, .8][randi() % 2] * initial_ball_speed
	

#old RigidBody2D ball script

#extends RigidBody2D
#
#class_name Ball
#
##signal ball_hit_bumper
#signal ball_hit_paddle
#
#
#@export var ball_speed = 300
#var velocity = Vector2(1, 1) * ball_speed
#
#func _physics_process(delta):
#	move_and_collide(velocity * delta)
##	print(velocity)
#	if velocity == Vector2(0, 0):
#		print("Ball dead")
#
#
##func _on_area_entered(area):
####	if area is Bumper:
####		ball_hit_bumper.emit()
####		print("bumper hit")
##	if area is Player or Opponent:
##		ball_hit_player.emit()
##		print("paddle hit")
#
#
##	if collision_info.collider is Player or Opponent:
##		velocity.x *= -1
##
##	if collision_info.collider is Bumper:
##		velocity.y *= -1
#func _on_body_entered(body):
#	if body is Paddle:
#		ball_hit_paddle.emit()
#		print("Ball hit paddle")
