extends Area2D

class_name Bumper

signal ball_hit_bumper

func _ready():
	pass
#	print("Bumper exists")


#func _on_ball_hit_bumper():
#	print("bumper hit (bumper script)")

#func _on_area_entered(area):
#	if area is Ball:
#		print("wall hit")


func _on_body_entered(body):
	if body is Ball:
		ball_hit_bumper.emit()
#		print("bumper hit")
