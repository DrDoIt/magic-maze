extends Node2D
var inventoryUpdate = false
var screenSize= DisplayServer.window_get_size()
var padding = 20
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Inventory.position.x = padding
	$Inventory.position.y = padding
	if Collectable.collected == true:
		inventoryQTYs()
		
func inventoryQTYs():
	var displayText = ""
	for key in Collectable.items_dict:
		displayText += str(key,"s: ",Collectable.items_dict[key],"\n")
		print(str(key,"s: ",Collectable.items_dict[key]))
	$Inventory/Label.text = displayText
	Collectable.collected = false
