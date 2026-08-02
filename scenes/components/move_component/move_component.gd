extends Component


@export var speed: int
@export var acceleration_rate: int


func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		parent.velocity.x = move_toward(parent.velocity.x, direction * speed, acceleration_rate)
	else:
		parent.velocity.x = move_toward(parent.velocity.x, 0, acceleration_rate)
