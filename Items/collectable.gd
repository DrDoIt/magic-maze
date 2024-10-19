extends Node2D
class_name Collectible

static var itemsCollected=0
static var items_dict = {}
static var collected = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func collect(name):
	collected = true
	itemsCollected +=1
	if name not in items_dict:
		items_dict[name] = 1
	else:
		items_dict[name] +=1
	print(items_dict)
