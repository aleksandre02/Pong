extends Control


@onready var player_score = $score/playerscore
@onready var enemy_score = $score/enemyscore
@onready var pause_node = $Pause

var paused = false

func set_player_score_label(new_score):
	player_score.text = str(new_score)

func set_enemy_score_label(new_score):
	enemy_score.text = str(new_score)

func _on_restart_pressed():
	pause_menu()
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_exitmenu_pressed():
	pause_menu()
	get_tree().change_scene_to_file("res://scenes/start_menu.tscn")
	
func pause_menu():
	if paused:
		pause_node.hide()
		Engine.time_scale = 1
	else:
		pause_node.show()
		Engine.time_scale = 0
	paused = !paused
