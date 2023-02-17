extends BaseState


func enter() -> void:
	pass

func exit() -> void:
	pass

func physics_process(delta) -> int:
	if player.input_vector.x == 0:
		return State.Idle
	player.move_and_collide(player.input_vector * player.speed * delta)
	return State.Null

func input(event) -> int:
	return State.Null
