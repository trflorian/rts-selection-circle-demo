extends Camera3D

@export var point1: Node3D
@export var point2: Node3D

func _ready() -> void:
	position = point1.position
	rotation = point1.rotation
	await get_tree().create_timer(5).timeout
	get_tree().create_tween().tween_property(self, "position", point2.position, 10).set_trans(Tween.TRANS_CUBIC)
	get_tree().create_tween().tween_property(self, "rotation", point2.rotation, 5).set_trans(Tween.TRANS_CUBIC)
