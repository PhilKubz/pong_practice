extends Node2D

#@onready var ball_reference : Ball = get_node("res://Scenes/ball.tscn")
@onready var player = $Player
@onready var ball = $Ball
@onready var opponent = $Opponent

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	pass


# Hit Functions to handle ball movement/direciton

#Paddle Hits
func _on_player_ball_hit_paddle():
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




# Goal / Scoring handling

func _on_goal_zone_opponent_goal_score_opponent():
	pass # Replace with function body.


func _on_goal_zone_player_goal_score_player():
	pass # Replace with function body.
