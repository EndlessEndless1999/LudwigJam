extends BaseState


func enter() -> void:
	pass

func exit() -> void:
	pass

func physics_process(delta) -> int:
	player.move_and_slide()
	if player.is_on_floor():
		return State.Idle
	player.velocity.x = player.input_vector.x
	player.velocity.y += delta * player.gravity
	return State.Null

func input(event) -> int:
	return State.Null
