extends Node2D

@export var resource: Resource

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.texture = resource.sprite


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
