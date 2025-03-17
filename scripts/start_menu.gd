extends Control

func _on_exitbutton_pressed():
	get_tree().quit()

func _on_easy_pressed():
	Global.enemy_speed = 300
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_medium_pressed():
	Global.enemy_speed = 500
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	

func _on_impossible_pressed():
	Global.enemy_speed = 1500
	get_tree().change_scene_to_file("res://scenes/game.tscn")
