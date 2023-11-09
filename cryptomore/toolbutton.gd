extends Button

var toolbar

# Called when the node enters the scene tree for the first time.
func _ready():
	toolbar = get_node("tollbar")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_pressed():
	toolbar.visible = not toolbar.visible
