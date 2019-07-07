extends Area2D

export(bool) var disappears = false

func _ready():
	connect('body_entered', self, 'body_entered')
	connect('area_entered', self, 'area_enetered')

func area_entered(area):
	var area_parent = area.getparent()
	if area_parent.name == 'sword':
		get_node(self.get_path()).body_entered(area_parent.get_parent())