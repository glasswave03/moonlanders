extends Control

func _on_start_pressed() -> void:
	Global.game_manager.change_gui("res://scenes/test_zone.tscn")
	Global.game_manager.change_world("res://scenes/test_ui.tscn")
