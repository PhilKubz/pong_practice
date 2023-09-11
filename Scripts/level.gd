extends Node2D

@onready var ball_reference : Ball = get_node("res://Scenes/ball.tscn")
@onready var player = $Player
@onready var ball = $Ball
@onready var opponent = $Opponent
func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass



# Hit Functions to handle ball movement/direciton

#Paddle Hits
func _on_ball_ball_hit_player():
	paddle_hit()
	print("paddle player hit")

func _on_opponent_ball_hit_paddle():
	paddle_hit()
	print("paddle opponent hit")


# Bumper Hits
func _on_bumper_ball_hit_bumper():
	bumper_hit()
	print("bumper top hit")

func _on_bumper_2_ball_hit_bumper():
	bumper_hit()
	print("bumper bottom hit")
	
	
# Actions taken on ball hits
func paddle_hit():
	ball.velocity.x *= -1

func bumper_hit():
	ball.velocity.y *= -1





