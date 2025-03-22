extends Spatial

func _ready():
	$AnimationPlayer.get_animation("Run").set_loop(true)
	$AnimationPlayer.get_animation("0Idle").set_loop(true)

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("forward") or Input.is_action_pressed("back") or Input.is_action_pressed("left") or Input.is_action_pressed("right"):
		$AnimationPlayer.play("Run")
	else:
		$AnimationPlayer.play("0Idle")
	
	
