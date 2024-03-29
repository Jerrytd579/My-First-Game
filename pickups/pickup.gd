extends Node2D

export(bool) var disappears = false

func _ready():
	connect('body_entered', self, 'body_entered')
	connect('area_entered', self, 'area_entered')

func area_entered(area):
	var area_parent = area.get_parent()
	if area_parent.name == 'sword':
		get_node(self.get_path()).body_entered(area_parent.get_parent())