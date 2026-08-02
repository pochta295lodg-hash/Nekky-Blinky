extends Node2D


@export var transition: Transition


func _ready() -> void:
	transition.fade(1.5, 0.0)
