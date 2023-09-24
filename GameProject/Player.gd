class_name Player
extends CharacterBody2D

@export var speed = 100
@export var gravity = 150
@export var jump_speed = 30

@onready var states = $state_machine

var input_vector = Vector2()
var motion = Vector2()



func _ready():
	states.init(self)

func _unhandled_input(event: InputEvent) -> void:
	states.input(event)
	
func _physics_process(delta):
	states.physics_process(delta)
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = 0
	
	
