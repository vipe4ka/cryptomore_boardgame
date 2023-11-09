extends Sprite2D

var hacker
var user
	
# Called when the node enters the scene tree for the first time.
func _ready():
	user = Sprite2D.new()
	user.texture = load("res://sprites/sprite/klerkmarker.png")
	hacker = Sprite2D.new()
	hacker.texture = load("res://sprites/sprite/hackermarker.png")
	self.add_child(user)
	self.add_child(hacker)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
