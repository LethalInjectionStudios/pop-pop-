class_name Bubble
extends Button

signal popped()

@export var audio_player: AudioStreamPlayer2D

var speed = 50

func _ready() -> void:
	global_position = Vector2(randi_range(0,700), 800)
	var bubble_scale = randi_range(1,10)
	scale = Vector2(bubble_scale, bubble_scale)
	speed = randi_range(25, 75)

func _process(delta: float) -> void:
	position.y -= speed * delta


func _on_pressed() -> void:
	popped.emit()
	queue_free()
