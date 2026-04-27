extends CharacterBody2D

const THRUST = -10.0
const GRAVITY = 0.3

var direction := Vector2.UP.rotated(rotation)

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	rotation = direction.angle() + PI/2
	
	if not is_on_floor():
		velocity += (get_gravity() * GRAVITY) * delta

	if Input.is_action_pressed("throttle"):
		velocity -= direction * THRUST
	
	if Input.is_action_pressed("left"):
		direction = direction.rotated(-0.01)
	
	if Input.is_action_pressed("right"):
		direction = direction.rotated(0.01)
	move_and_slide()
