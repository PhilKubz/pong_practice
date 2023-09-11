extends CharacterBody2D

class_name Player

@export var speed = 400

func _ready():
	pass

func _process(delta):
	
	var direction := Input.get_axis("move_up", "move_down")
	if direction:
		velocity.y = direction * speed
	else:
		velocity.y = move_toward(velocity.y, 0, speed)
	
	move_and_slide()
#
#func _on_area_entered(area):
#	if area is Ball:
#		player_hit_ball.emit()
#	if active == true:
#		velocity.y = speed
#	else:
#		velocity.y = 0
#
#	if Input.is_action_pressed("move_up"):
#		active = true
#		velocity.y = -speed
#	if Input.is_action_pressed("move_down"):
#		active = true
#		velocity.y = speed
#	print(velocity)
