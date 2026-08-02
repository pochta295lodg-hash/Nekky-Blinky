extends ColorRect
class_name Transition


func fade(speed: float, final_val: float) -> void:
	var tween := create_tween()
	tween.tween_property(self, "color:a", final_val, speed)

	await tween.finished
