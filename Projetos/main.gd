extends Control

func _ready():
	get_node("UIButtonMapper").check_button_toggled.connect(onCheckButtonToggled)
	get_node("UIButtonMapper").option_button_selected.connect(onOptionButtonSelected)
	get_node("UIButtonMapper").button_pressed.connect(onButtonPressed)

func onCheckButtonToggled(toggled: bool, checkButton: CheckButton):
	print('CheckButton: ', checkButton.name, ' value: ', toggled)

func onOptionButtonSelected(index: int, optionButton: OptionButton):
	print('OptionButton: ', optionButton.name, ' Item: ', optionButton.get_item_text(index), ' index: ', index)

func onButtonPressed(button: Button):
	print('Button: ', button.name)
