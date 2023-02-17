class_name Player
extends KinematicBody2D

export (int) var speed = 50

onready var states = $state_machine

var input_vector = Vector2()



# Called when the node enters the scene tree for the first time.
func _ready():
	states.init(self)

func _unhandled_input(event: InputEvent) -> void:
	states.input(event)

func _physics_process(delta):
	states.physics_process(delta)
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = 0
