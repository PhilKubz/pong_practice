extends Control

@onready var score_player = $ScorePlayer
@onready var score_opponent = $ScoreOpponent

func _ready() -> void:
	pass # Replace with function body.

func set_score_player_label(new_score_player):
	score_player.text = str(new_score_player) + " :  "

func set_score_opponent_label(new_score_opponent):
	score_opponent.text = str(new_score_opponent)
