class_name Test
extends Node2D

@export var audio_player: AudioStreamPlayer2D
@export var button_container: GridContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for button: Button in button_container.get_children():
		button.pressed.connect(_on_button_pressed.bind(button))


func _on_button_pressed(button: Button) -> void:
	audio_player.play()
	button.icon = load("res://bubble_popped.png")
