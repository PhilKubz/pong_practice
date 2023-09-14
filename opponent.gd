extends Paddle


func _on_body_entered(body):
	if body is Ball:
		ball_hit_paddle.emit()
		print("Ball hit paddle")
