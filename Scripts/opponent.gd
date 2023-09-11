extends RigidBody2D

class_name Opponent

signal ball_hit_paddle

@export var speed = 400

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Opponent exists")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body):
	if body is Ball:
		ball_hit_paddle.emit()
		print("Ball hit paddle")

#func _on_area_entered(area):
#	if area is Ball:
#		ball_hit_paddle.emit()
#		print("Ball hit paddle")
