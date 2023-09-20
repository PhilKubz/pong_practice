extends Node2D

@onready var ui = $UI
@onready var hud = $UI/HUD
@onready var player = $Player
@onready var ball = $Ball
@onready var opponent = $Opponent

var score_player = 0
var score_opponent = 0

func _ready() -> void:
	hud.set_score_player_label(score_player)
	hud.set_score_opponent_label(score_opponent)
	
func _process(delta: float) -> void:
	pass


# Hit Functions to handle ball movement/direciton

##Paddle Hits
#func _on_player_ball_hit_paddle():
#	paddle_hit()
#	print("paddle player hit")
#
#func _on_opponent_ball_hit_paddle():
#	paddle_hit()
#	print("paddle opponent hit")


## Bumper Hits
#func _on_bumper_ball_hit_bumper():
#	bumper_hit()
#	print("bumper top hit")
#
#func _on_bumper_2_ball_hit_bumper():
#	bumper_hit()
#	print("bumper bottom hit")
	
	
# Actions taken on ball hits
#func paddle_hit():
#	ball.velocity.x *= -1
#
#func bumper_hit():
#	ball.velocity.y *= -1




# Goal / Scoring handling

func _on_goal_zone_opponent_goal_score_opponent():
	_opponent_scored()


func _on_goal_zone_player_goal_score_player():
	_player_scored()


func _on_ball_body_entered(body: Node) -> void:
	pass # Replace with function body.


func _player_scored():
	score_player += 1
	hud.set_score_player_label(score_player)
	
	
func _opponent_scored():
	score_opponent += 1
	hud.set_score_opponent_label(score_opponent)
