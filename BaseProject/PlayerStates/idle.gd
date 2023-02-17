extends BaseState


func enter() -> void:
	pass

func exit() -> void:
	pass

func physics_process(delta) -> int:
	if player.input_vector.x != 0:
		print('state should change')
		return State.Walk
	return State.Null

func input(event) -> int:
	return State.Null
