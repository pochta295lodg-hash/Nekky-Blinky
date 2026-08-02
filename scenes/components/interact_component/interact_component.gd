extends Component


@export var area: Area2D
@export var tooltip: Label

signal is_interacted

func _ready() -> void:
	area.body_entered.connect(_on_area_body_entered)
	area.body_exited.connect(_on_area_body_exited)


func _on_area_body_entered(body: PhysicsBody2D):
	if body == parent:
		return

	tooltip.show()

	await is_interacted
	tooltip.hide()


func _on_area_body_exited(_body: PhysicsBody2D):
	tooltip.hide()


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("interact"):
		is_interacted.emit()
