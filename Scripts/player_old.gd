extends CharacterBody2D

class_name PlayerOld

signal ball_hit_paddle

@export var speed = 400

func _ready():
	pass

func _process(delta):
	var motion = Vector2()
	var direction := Input.get_axis("move_up", "move_down")
	if direction:
		velocity.y = direction * speed
	else:
		velocity.y = move_toward(velocity.y, 0, speed)

	move_and_slide()

#func _process(delta):
#	var motion = Vector2()
#
#	if Input.is_action_pressed("move_up"):
#		motion.y -= 1
#	if Input.is_action_pressed("move_down"):
#		motion.y += 1
#
#	motion = motion.normalized() * speed * delta
#	move_and_slide(motion)
#
#	for i in get_slide_count():
#		var collision = get_slide_collision(i)
#	if collision.collider is RigidBody2D:
#		var collision_normal = collision.normal
#		var new_direction = reflect(motion.normalized(), collision_normal)
#		motion = new_direction * speed * delta
#		move_and_slide(motion)
#
#	if collision.collider is Ball:
#		emit_signal("ball_hit_paddle")
#func _on_body_entered(body):
#	print("Collision detected with", body)
#	if body is Ball:
#		ball_hit_paddle.emit()
#		print("on_body_entered working for player")
#		print("Ball hit paddle")
