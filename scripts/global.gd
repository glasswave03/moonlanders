extends Node

var game_manager: GameManager
const save_location = "user://save.json"

var contents_to_save: Dictionary = {}
"""
func _save():
	var file = FileAccess.open(save_location, FileAccess.WRITE)
	file.store_var(contents_to_save.duplicate())
	file.close()

func _load():
	var file = FileAccess.open(save_location, FileAccess.READ)
	var data = file.get_var()
	file.close()
	
	var save_data = data.duplicate()
	contents_to_save.value = save_data.value
"""
