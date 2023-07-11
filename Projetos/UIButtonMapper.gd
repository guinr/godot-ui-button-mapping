extends Node

@export var focus_first_button: bool = true

signal button_pressed
signal check_button_toggled
signal option_button_selected

func _ready():
	var baseButtons: Array[Node] = get_tree().get_nodes_in_group("ui-selectable")
	if focus_first_button && baseButtons[0].has_method("grab_focus"):
		baseButtons[0].grab_focus()
	for baseButton in baseButtons:
		if is_instance_of(baseButton, CheckButton):
			baseButton.toggled.connect(onCheckButtonToggled.bind(baseButton))
			continue
		if is_instance_of(baseButton, OptionButton):
			baseButton.item_selected.connect(onOptionButtonSelected.bind(baseButton))
			continue
		if is_instance_of(baseButton, Button):
			baseButton.pressed.connect(onButtonPressed.bind(baseButton))

func onCheckButtonToggled(toggled: bool, selectable: CheckButton):
	check_button_toggled.emit(toggled, selectable)

func onOptionButtonSelected(index: int, selectable: OptionButton):
	option_button_selected.emit(index, selectable)

func onButtonPressed(selectable: Button):
	button_pressed.emit(selectable)
