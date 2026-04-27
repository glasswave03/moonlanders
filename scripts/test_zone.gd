extends Node2D

@onready var spaceship_scene: PackedScene = preload("res://scenes/spaceship.tscn")

func _ready() -> void:
	add_child(spaceship_scene.instantiate())

func _on_boundary_bottom_body_entered(body: Node2D) -> void:
	body.queue_free()

func _on_win_body_entered(body: Node2D) -> void:
	if body.velocity == Vector2(0,0):
		print("win")
