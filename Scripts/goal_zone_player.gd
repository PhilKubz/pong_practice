extends Area2D

signal goal_score_player


func _on_body_entered(body):
	goal_score_player.emit()
	body.queue_free()
	print("Goal - Player")
