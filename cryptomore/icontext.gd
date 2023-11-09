extends Sprite2D

var label

# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	label = Label.new()
	#$icontext.add_child(label)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_toolbar_visibility_changed():
	self.visible = not self.visible
