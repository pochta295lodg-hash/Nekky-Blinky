extends Control


@export var buttons: Dictionary[StringName, Button]
@export var quit_dialog: ConfirmationDialog
@export var transition: Transition

func _ready() -> void:
	await get_tree().create_timer(0.5).timeout
	transition.fade(5.0, 0.0)


func _on_play_pressed() -> void:
	await transition.fade(1.5, 1.0)
	get_tree().change_scene_to_file("res://scenes/levels/test_level/test_level.tscn")


func _on_settings_pressed() -> void:
	pass


func _on_quit_pressed() -> void:
	quit_dialog.show()


func _on_quit_dialog_confirmed() -> void:
	get_tree().quit()
