class_name Scene
extends Node2D

const BUBBLE: PackedScene = preload("res://Bubble/bubble.tscn")

@export var audio_player: AudioStreamPlayer2D
@export var timer: Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_create_bubble()
	
	
func _create_bubble() -> void:
	var bubble: Bubble = BUBBLE.instantiate() as Bubble
	bubble.popped.connect(_on_bubble_popped)
	add_child(bubble)
	
	_reset_timer()
	

func _reset_timer() -> void:
	timer.start(randf_range(.5,1.5))
	
	
func _on_bubble_popped() -> void:
	audio_player.play()


func _on_timer_timeout() -> void:
	_create_bubble()
