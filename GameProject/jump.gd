extends BaseState

var jumped = false

func enter() -> void:
	pass

func exit() -> void:
	jumped = false

func physics_process(delta) -> int:
	if !jumped:
		player.velocity.y -= player.jump_speed
		jumped = true
	if player.velocity.y == 0:
		return State.Fall
	return State.Null

func input(event) -> int:
	return State.Null
