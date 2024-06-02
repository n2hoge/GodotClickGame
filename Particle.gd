extends CPUParticles2D

func start(pos):
	# 放出開始
	emitting = true
	# 位置を設定
	position = pos

func _process(delta):
	if emitting == false:
		# 再生終了
		queue_free()
