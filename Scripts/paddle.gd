extends Area2D

class_name Paddle

signal ball_hit_paddle

@export var speed = 400


func _ready():
	pass

func _process(delta):
	pass


func _on_body_entered(body):
	if body is Ball:
		ball_hit_paddle.emit()
		print("Ball hit paddle")
