extends BaseState
class_name playerIdle

func enter() -> void:
	pass

func exit() -> void:
	pass

func physics_process(delta) -> int:
	if !player.is_on_floor():
		return State.Fall
	if Input.is_action_just_pressed("ui_accept"):
		return State.Jump
	if player.input_vector.x != 0:
		print('state should change')
		return State.Walk
	return State.Null

func input(event) -> int:
	return State.Null
