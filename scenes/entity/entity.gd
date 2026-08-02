extends CharacterBody2D
class_name Entity


@export var person: Person


func _ready() -> void:
	$Name.text = person.name


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	move_and_slide()
