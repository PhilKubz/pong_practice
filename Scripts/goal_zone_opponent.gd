extends Area2D

signal goal_score_opponent


func _on_body_entered(body):
	goal_score_opponent.emit()
	body.queue_free()
	print("Goal - Opponent")
