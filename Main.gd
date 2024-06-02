extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var all_destroyed = true
	# 子ノードをすべて調べる
	for node in get_children():
		if "Enemy" in node.name:
			# 敵が生存している
			all_destroyed = false

	if all_destroyed:
		# ゲームクリア
		OS.alert("ゲームクリア")
		
		# アプリケーションを終了する
		get_tree().quit()
