extends CharacterBody2D

@onready var Player = $Sprite2D
@onready var Animation1 = $AnimationPlayer

const GRAVITY = 1000.0
const RUN_SPEED = 120.0
const JUMP_VELOCITY = -400.0
const MAX_FALL = 400.0

enum PLAYER_STATE { IDLE, RUN, JUMP, FALL}

var _state: PLAYER_STATE = PLAYER_STATE.IDLE

func _physics_process(delta):
	apply_gravity()
	move_and_slide()
func move_horizontal():
	velocity.x = 0
	
	if Input.is_action_pressed()
