extends BaseState


func enter() -> void:
	pass

func exit() -> void:
	pass

func physics_process(delta) -> int:
	if player.input_vector.x == 0:
		return State.Idle
	if Input.is_action_just_pressed("ui_accept"):
		return State.Jump
	player.velocity.x = player.input_vector.x * player.speed
	player.move_and_slide()
	return State.Null

func input(event) -> int:
	return State.Null
